# typed: false
# frozen_string_literal: true

# This formula is automatically updated by GoReleaser on each release.
# Manual edits will be overwritten.
class Band < Formula
  desc "Bandwidth CLI - manage voice, messaging, numbers, and more"
  homepage "https://github.com/Bandwidth/cli"
  version "0.0.3-beta"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Bandwidth/cli/releases/download/v0.0.3-beta/band_0.0.3-beta_darwin_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end

    on_arm do
      url "https://github.com/Bandwidth/cli/releases/download/v0.0.3-beta/band_0.0.3-beta_darwin_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Bandwidth/cli/releases/download/v0.0.3-beta/band_0.0.3-beta_linux_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end

    on_arm do
      url "https://github.com/Bandwidth/cli/releases/download/v0.0.3-beta/band_0.0.3-beta_linux_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "band"
  end

  test do
    system bin/"band", "version"
  end
end
