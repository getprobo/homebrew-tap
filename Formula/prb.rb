# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.239.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.239.0/prb_Darwin_arm64.tar.gz"
      sha256 "1a9e8744eb6b3590750453921eb08e3e0d00bea9e4242124d7f5d6c1e447aac6"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.239.0/prb_Darwin_x86_64.tar.gz"
      sha256 "5daf7fba50a2313ed6415d1e19a17c2918068537cf7cb1b25937009a76e07f7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.239.0/prb_Linux_arm64.tar.gz"
      sha256 "2eabffe46585b0bd9b35a93d3878057771f261dd3a28afe37958410be62ae5f9"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.239.0/prb_Linux_x86_64.tar.gz"
      sha256 "fea808d97044d421317c2d1b18fdda0ef96604d7eb7f7bf63c7c85800ea01a75"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
