# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.164.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.164.0/prb_Darwin_arm64.tar.gz"
      sha256 "3cf22f88d0d09880973894231d7afd790e4777fbdc9d7aa51e87a60ff1a33f1e"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.164.0/prb_Darwin_x86_64.tar.gz"
      sha256 "11695838424d9d175de2d3b46ccc14ce09de907a837c4a5d434414aa4850a525"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.164.0/prb_Linux_arm64.tar.gz"
      sha256 "ca122abbbb1991d437fc4dc0b120be2f3125d8c487fa26a31cdb4b461eaa89df"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.164.0/prb_Linux_x86_64.tar.gz"
      sha256 "f7d1de2c51a4486d50fb8bc099c56591e1d34ce0585612ad5b00d27414b91443"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
