class Band < Formula
  desc "Manage voice, messaging, numbers, and more from the command-line"
  homepage "https://github.com/Bandwidth/cli"
  url "https://github.com/Bandwidth/cli/archive/refs/tags/v0.5.3-beta.tar.gz"
  sha256 "b49f00018b7d45b8d64989a326c86517081f3356e41e5613f3887693a8d6d694"
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
