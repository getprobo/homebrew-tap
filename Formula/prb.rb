# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.254.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.254.0/prb_Darwin_arm64.tar.gz"
      sha256 "23fb4021b643f2887564cd7a5be75d96231c6527252678346254ee3551be9c91"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.254.0/prb_Darwin_x86_64.tar.gz"
      sha256 "b875c6366e2a9df82e15120c94fa265678bba4b56e3ddbe4b537f6ba4d063c02"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.254.0/prb_Linux_arm64.tar.gz"
      sha256 "3ad2e7dc4aafd22020852dc8e546edc95d8b1e8b329214e1df0a6e132edb93c2"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.254.0/prb_Linux_x86_64.tar.gz"
      sha256 "600f0807aae8774925fc5a4eb58a5862b92c590863e5869854b7b1a73c24ac71"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
