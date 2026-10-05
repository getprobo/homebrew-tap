# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.240.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.240.0/prb_Darwin_arm64.tar.gz"
      sha256 "2a42626c96b3a70a951428138038ee5e9592fec1bae7296638502f7dcb597eb8"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.240.0/prb_Darwin_x86_64.tar.gz"
      sha256 "f2a2d2c46ce200f5f8402ebb57b3addca84ad8ac8544a2a12b3f2289b5ec89af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.240.0/prb_Linux_arm64.tar.gz"
      sha256 "da69794c0b8ab4b223183b8a5ea3c9ef1b691ce93e345b2fff8216d6eab96d5f"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.240.0/prb_Linux_x86_64.tar.gz"
      sha256 "b9be882c03d0a53272df94ef67953e81bf32551b485d30790c9806cc2dd78c8a"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
