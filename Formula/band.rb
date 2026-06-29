class Band < Formula
  desc "Manage voice, messaging, numbers, and more from the command-line"
  homepage "https://github.com/Bandwidth/cli"
  url "https://github.com/Bandwidth/cli/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "3c123327d74780d130b5460989f2184eee48411dcf408fe04142214a209a7c6b"
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
