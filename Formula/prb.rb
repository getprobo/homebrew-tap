# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.222.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.222.0/prb_Darwin_arm64.tar.gz"
      sha256 "628c38029bff63dce562c2e04d1c0b18b069d6a24f7583167f77c81f138ff621"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.222.0/prb_Darwin_x86_64.tar.gz"
      sha256 "8f38951596830da3d006b5a660218d91217f65abab9006f19792d01df56d9c90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.222.0/prb_Linux_arm64.tar.gz"
      sha256 "31d795de0c32699cba0b854cd379b5530e815a0d9f9994f0b09d0caeb1b03da1"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.222.0/prb_Linux_x86_64.tar.gz"
      sha256 "7d5e1111cc50110a6defcadcf7952114526350cbcde816be54a4aec3ee7c661f"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
