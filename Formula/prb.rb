# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.268.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.268.0/prb_Darwin_arm64.tar.gz"
      sha256 "27dcb1d0f7233bbaed4614c2456862ab108ab2fdc3b4b67a11e036560dd67a40"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.268.0/prb_Darwin_x86_64.tar.gz"
      sha256 "52706fb1558fe5e21d37292bfc731193a93bc11955345d77e5d19c45364ffed5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.268.0/prb_Linux_arm64.tar.gz"
      sha256 "ac1a583e9a40f314c1f8ea0e6cac53eabf88bd5ac1a7631db32af99f1e9fb796"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.268.0/prb_Linux_x86_64.tar.gz"
      sha256 "1e2625f1137bfeb594f38a09aec884ed429c3f4e9474d538ae1a8a1d5ba36141"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
