class Band < Formula
  desc "Manage voice, messaging, numbers, and more from the command-line"
  homepage "https://github.com/Bandwidth/cli"
  url "https://github.com/Bandwidth/cli/archive/refs/tags/v0.1.0-beta.tar.gz"
  sha256 "39b7570fee4e90d4b2fd0102294d25f9c536e4e875a90ce3f399e695e492071d"
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
