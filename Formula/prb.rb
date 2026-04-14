# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.167.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.167.0/prb_Darwin_arm64.tar.gz"
      sha256 "b18e76eeac35377f87c09643919ab2635b0e1908a9d80f053f03979132e08af5"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.167.0/prb_Darwin_x86_64.tar.gz"
      sha256 "31f2924b9528dfb1d7c344be4295775a0c88895a09493ecb8a5e5c9f9971668a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.167.0/prb_Linux_arm64.tar.gz"
      sha256 "efa9486dd769ac18ee6192568281e4425bd44fe4a7dfe64deffd7e3139327fd8"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.167.0/prb_Linux_x86_64.tar.gz"
      sha256 "a95c99a8eaa02b134649fdb0793b6a534532e4fe08bd5013bfc67d51da1c899c"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
