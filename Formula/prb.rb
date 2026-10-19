# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.252.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.252.0/prb_Darwin_arm64.tar.gz"
      sha256 "d274cfcfa2edc10bda906faaae47baf7f4f445c50013a1f389887578d21186a9"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.252.0/prb_Darwin_x86_64.tar.gz"
      sha256 "4d66613feddfaa3dac00e05baeebdd2ad4abf539e808c439e4a277d0ab70ce0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.252.0/prb_Linux_arm64.tar.gz"
      sha256 "5cb3fc05280e0369ab646ebb8582d2203e9be926a66564e1afb51e9854c969e3"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.252.0/prb_Linux_x86_64.tar.gz"
      sha256 "2047db616d6f0d0baeb5693e87b81e2912e0e098855034c4cf141d3b3babf268"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
