# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.189.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.189.0/prb_Darwin_arm64.tar.gz"
      sha256 "98d63292ca28996369c154abec86effaf03e461ce2552c79bd0e05c9874b71d2"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.189.0/prb_Darwin_x86_64.tar.gz"
      sha256 "0947c6345f7f5d5b6be4c18a8a977e0e7152307bfcc04e43bf4208aca8c8ae15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.189.0/prb_Linux_arm64.tar.gz"
      sha256 "9bbadbf9f0266235d18a2359071c508f3d49d3a58804990a2a778e30c4ebb604"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.189.0/prb_Linux_x86_64.tar.gz"
      sha256 "3c43aab3ea2f9849e57fb2677a2ffd75291d7e6cfe5a9d9d64cece1023d5e024"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
