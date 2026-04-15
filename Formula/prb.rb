# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.168.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.168.0/prb_Darwin_arm64.tar.gz"
      sha256 "ea25a01f9cb68eb5ad7eb2693b56be4894fbb8da2953e23945b76c7d74a691d7"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.168.0/prb_Darwin_x86_64.tar.gz"
      sha256 "7da5578173fb261ee49c28b39e77d901e0b72c464f81045a534050e4bc94a470"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.168.0/prb_Linux_arm64.tar.gz"
      sha256 "c5e1f63ade71279700df7104a2531698062a28942d1b0684814252b197980bf6"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.168.0/prb_Linux_x86_64.tar.gz"
      sha256 "7c695884825b291d5001aeb72077a822bf553e164ab1988745813cc4bc188288"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
