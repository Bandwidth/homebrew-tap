class Band < Formula
  desc "Manage voice, messaging, numbers, and more from the command-line"
  homepage "https://github.com/Bandwidth/cli"
  url "https://github.com/Bandwidth/cli/archive/refs/tags/v0.3.0-beta.tar.gz"
  sha256 "7bd4917b84a9c4b3c59035f3608a344e52807d33ebd84d9d412e213fda544ce1"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/Bandwidth/cli/cmd.version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/band"
  end

  test do
    assert_match "band version", shell_output("#{bin}/band version")
  end
end
