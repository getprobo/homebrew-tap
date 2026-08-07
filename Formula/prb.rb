# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.212.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.212.0/prb_Darwin_arm64.tar.gz"
      sha256 "64d53f7efca95e66a120b141e57a0278e4299b02a28681c08b05ff93c0f9d6c6"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.212.0/prb_Darwin_x86_64.tar.gz"
      sha256 "4ba4ba9a4677a4eb55900b6de30ec3b630950644def2d422cd8902bc4d9ef02c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.212.0/prb_Linux_arm64.tar.gz"
      sha256 "491c6bb2603b0191a90a39f38f4d0885d3a50a8ea0b2eb80482d2bdcf3841233"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.212.0/prb_Linux_x86_64.tar.gz"
      sha256 "aed1e4bc243e7ca09b050f701d847c8198f0a918d7aa6ed238dcffe0d1217084"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
