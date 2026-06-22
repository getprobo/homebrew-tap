# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.197.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.197.0/prb_Darwin_arm64.tar.gz"
      sha256 "2a4d64155bc5df65fea32c4b41504739a804bd2f8b9998397b5544aa0ce7fa09"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.197.0/prb_Darwin_x86_64.tar.gz"
      sha256 "c433c66aad1bbf74034d8fcece43c997bbf17538cc0f1c7fbc6a5c4dbc7e7deb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.197.0/prb_Linux_arm64.tar.gz"
      sha256 "b37e833cf10297cd6d3753a579d21434d59db415de1151af41c678c60f47dce5"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.197.0/prb_Linux_x86_64.tar.gz"
      sha256 "e7ae9d433f6152436f4777318cf3392df6c159914e04dbb2540fb07868fd74fc"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
