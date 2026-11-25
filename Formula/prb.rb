# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.276.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.276.0/prb_Darwin_arm64.tar.gz"
      sha256 "fc88e61ca305dcc6362110c871fa77d37993437c044bddc73c290e5ab4f98e30"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.276.0/prb_Darwin_x86_64.tar.gz"
      sha256 "b0af6ad221de0f7e99a2d9c14d95ed6fb83cd6b323696d3c330aa93ae8bd47ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.276.0/prb_Linux_arm64.tar.gz"
      sha256 "5f876f7ff84d7519f4acbad7eccc890dcb37e84f2a0b0ecb3dfac3b60a2f8649"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.276.0/prb_Linux_x86_64.tar.gz"
      sha256 "0609b92e5cc9c5a90dcd0e08e55464ea717f175c65db50ac22e2904982502867"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
