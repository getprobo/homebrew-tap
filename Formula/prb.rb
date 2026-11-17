# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.271.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.271.0/prb_Darwin_arm64.tar.gz"
      sha256 "f4430f48a2e3141066c661a9b6508be22924e247797634fcdd8ace343488d58a"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.271.0/prb_Darwin_x86_64.tar.gz"
      sha256 "39129f6cf7f9e9aab5d7890a0447242c9cf97eca3835d547f05f79da62805085"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.271.0/prb_Linux_arm64.tar.gz"
      sha256 "e3112ff2e83d56fe66a3cf04b42cd73583ecc61a3f2fbf328dcab2b535becbbe"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.271.0/prb_Linux_x86_64.tar.gz"
      sha256 "aeb0f3cbc5aebf5833e2d0870eb59fdc95299c5fb5e0ce20c29b6a24821ac0ce"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
