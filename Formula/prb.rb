# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.184.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.184.0/prb_Darwin_arm64.tar.gz"
      sha256 "c473d1167dada1851509190934098650f0cfe70fee0a4c7bc9dbf37334385003"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.184.0/prb_Darwin_x86_64.tar.gz"
      sha256 "ef11ed328460faaf494abbf0f6230b7651f43df1f5f3470878c88ba29ade7424"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.184.0/prb_Linux_arm64.tar.gz"
      sha256 "15e52d209598129c24f5bb2247edbe4bcb945ed2226dfd6f162ca8e8bf3c42cc"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.184.0/prb_Linux_x86_64.tar.gz"
      sha256 "a391432558c407863910fb6ff226895b91d3c2447e99f11aa654fb0e2779256a"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
