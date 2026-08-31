# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.221.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.221.0/prb_Darwin_arm64.tar.gz"
      sha256 "73aa1499d6481e8717f4a63a7f1b9c796e463970a0cd2401c358eb36414cfa92"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.221.0/prb_Darwin_x86_64.tar.gz"
      sha256 "c2161528dfc0b3153546617a5284b29ad6932be960af32cbd9f27b132f8c7c5b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.221.0/prb_Linux_arm64.tar.gz"
      sha256 "94ec96e0ac1253500cb364805d7460d4d3d7577f22a254f1e5551255839e02a7"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.221.0/prb_Linux_x86_64.tar.gz"
      sha256 "aede71f4c06efe89c70c60af0dde71c2f5148c44152956a0c02d0642bef6b5b6"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
