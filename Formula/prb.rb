# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.203.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.203.0/prb_Darwin_arm64.tar.gz"
      sha256 "ecc3f3dbc2b21c26e682363f4e1362961aa024ee1f5f71a0a6763137ff2531b7"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.203.0/prb_Darwin_x86_64.tar.gz"
      sha256 "35ef206b9dd9102b29b8c91cbb18fd822c7429cebbc57760377e0b183e60223c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.203.0/prb_Linux_arm64.tar.gz"
      sha256 "932b9b2461a1e6115cb378d4ea93d326e4156f59ad63831d25143730f3554abc"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.203.0/prb_Linux_x86_64.tar.gz"
      sha256 "34f29f901173d41f28bf1683b154b6cafbbd0e9da6ad0734a6b46ec854d812fb"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
