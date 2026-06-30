class Band < Formula
  desc "Manage voice, messaging, numbers, and more from the command-line"
  homepage "https://github.com/Bandwidth/cli"
  url "https://github.com/Bandwidth/cli/archive/refs/tags/v0.2.1-beta.tar.gz"
  sha256 "a835b2097cfddeb03d1e5e1c8a681ac40ffda573d3ae73a6e66f3182a3feff6d"
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
