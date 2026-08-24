# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.218.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.218.0/prb_Darwin_arm64.tar.gz"
      sha256 "d679ffc50c90871134a612e7324e7f460864dce3ee972288f1ec6935649065f3"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.218.0/prb_Darwin_x86_64.tar.gz"
      sha256 "6492f549fc3c6caa27e6cc3221e0f073488206bc2702735b36c8660a58eb595d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.218.0/prb_Linux_arm64.tar.gz"
      sha256 "9965c778193dd5c6631d2f41a3f9275fb947496de5eef6b87958e504d9a6892e"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.218.0/prb_Linux_x86_64.tar.gz"
      sha256 "089ca250923404d5d6609dd7df7f8f3911570b0209c90da09a202c640b70b088"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
