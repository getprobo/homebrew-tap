# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.165.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.165.0/prb_Darwin_arm64.tar.gz"
      sha256 "f6c5dd570f2ba8660284c5c9da50930ed9e3c252edf8b31206384a26b1df591f"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.165.0/prb_Darwin_x86_64.tar.gz"
      sha256 "9d596a1a89b54e6cb6e15b921a2c638f824347a173e095b99b2a1add5991d71d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.165.0/prb_Linux_arm64.tar.gz"
      sha256 "a04c83f55c1483f6df7e2e90b81acc3516ce0ab29ba0a1568b8776cd6674360e"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.165.0/prb_Linux_x86_64.tar.gz"
      sha256 "fed2174f202e16f0b29d78f70ff0daab0ecc3f8084eec58a745d334837985d68"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
