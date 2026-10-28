# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.261.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.261.0/prb_Darwin_arm64.tar.gz"
      sha256 "326276e8d2bd4214c6136d1673f4c30396ad7c393d84ec09f5644fb2836d4cce"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.261.0/prb_Darwin_x86_64.tar.gz"
      sha256 "e94663f5f411f6a0c1c4dbd5b75e1d7698081a1601b5e29dccb65bcb71ac33ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.261.0/prb_Linux_arm64.tar.gz"
      sha256 "e16b245a8b6fd365c09524c7731d5d7d25eb9d121d3a84f600ffa08cead37dc8"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.261.0/prb_Linux_x86_64.tar.gz"
      sha256 "67665352eff9fdb55393aca1d233447b55bae2b8fbde4c99424c206b868f8d67"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
