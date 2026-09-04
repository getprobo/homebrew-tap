# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.225.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.225.0/prb_Darwin_arm64.tar.gz"
      sha256 "d548befd84e78bafcc1d6c1e0ae252a4b02f346238c8226b404724fe74f01566"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.225.0/prb_Darwin_x86_64.tar.gz"
      sha256 "43b02b6eed9b4f9969a788eeb774f7d9dcfc3deb11c8d66e6577e2a63ea1355e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.225.0/prb_Linux_arm64.tar.gz"
      sha256 "3a248a16601038c123e278b9411f193e82784572a0559d1ee8117ca417e6eb35"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.225.0/prb_Linux_x86_64.tar.gz"
      sha256 "e86dc5c6830a7221d8778b5f4a943e9bd191093781ca554372e55a9d2305b9d9"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
