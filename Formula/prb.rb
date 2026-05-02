# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.179.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.179.0/prb_Darwin_arm64.tar.gz"
      sha256 "7b658c4e7be85fa792a177ea42c7e8b5571eff4013a2b5a95b89e2c6c5e64f44"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.179.0/prb_Darwin_x86_64.tar.gz"
      sha256 "996a339d2fd047068d8575d55c7a777622c82e357fab414f2e0220aad58583c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.179.0/prb_Linux_arm64.tar.gz"
      sha256 "5278dd7fe36442b2573c205070a0c09b02ef569fbcef17a94c09e1cc2d7f71bd"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.179.0/prb_Linux_x86_64.tar.gz"
      sha256 "74a07bdc241b5085b725ca6dd3ae78982c5acf36343a226b3d8d9b5fe642fb8e"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
