# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.247.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.247.0/prb_Darwin_arm64.tar.gz"
      sha256 "46f1799ef19f2f05d864c0448f3de9fd37ed4cecc07b3c2c7e17b625e9b5692c"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.247.0/prb_Darwin_x86_64.tar.gz"
      sha256 "205aa54eeca266494bb806bca3cd6b89cd617f6d3a34f6f655ac747ee6adec8f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.247.0/prb_Linux_arm64.tar.gz"
      sha256 "1c5f52ef8856ca2401b60547f285983b696446edbc32d4f0a172455ed78f893d"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.247.0/prb_Linux_x86_64.tar.gz"
      sha256 "dc2d030a2a922f261c3ba7a4392159af78cf4491c9c9d7d33aa388e3dd598e23"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
