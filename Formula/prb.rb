# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.175.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.175.0/prb_Darwin_arm64.tar.gz"
      sha256 "d53c7222db2a669a0ee919eb50a146925fa9eb56cfd169e8adc8c37b57906b83"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.175.0/prb_Darwin_x86_64.tar.gz"
      sha256 "0d6b9684a5a2aad2c4512985edbf4cb6421e0b7adecfd0437d19369381fdfdac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.175.0/prb_Linux_arm64.tar.gz"
      sha256 "b3b7fe47b2ec604313d6c8f72616aca3da7194c10c575918ed2c7e90b699f6d0"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.175.0/prb_Linux_x86_64.tar.gz"
      sha256 "6fa73afd04d939b80fc5e0d9baa40c96d34d2b09d7c117e5f87af88f16b1b1ac"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
