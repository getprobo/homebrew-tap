# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.163.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.163.1/prb_Darwin_arm64.tar.gz"
      sha256 "6d00cb5aac49c0477f42a40687914d98e96f077a0bc870aa2a7ff243700c0c85"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.163.1/prb_Darwin_x86_64.tar.gz"
      sha256 "e2cd57e3ad065579bcabdf3a6cec02e336f3766b0cc07df32ca537efb1c62705"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.163.1/prb_Linux_arm64.tar.gz"
      sha256 "f14686627c2589b6fef304a12d15ccc855c59c1cb1a4b8412ad6512cc66804e2"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.163.1/prb_Linux_x86_64.tar.gz"
      sha256 "ff5bafdb1754daef3484e59b328bfaf7a018413bb2facb14b630c9de140aa0d9"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
