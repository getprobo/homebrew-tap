# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.273.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.273.0/prb_Darwin_arm64.tar.gz"
      sha256 "bdd331a59d6964753aea22c967838f0f39e3a34227133b60f0c3a8208168bb58"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.273.0/prb_Darwin_x86_64.tar.gz"
      sha256 "f3135f0c230d9f5115347d4aa321f12cb932bed177e69e8f0670be64b33c33e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.273.0/prb_Linux_arm64.tar.gz"
      sha256 "4cd9295ac35d03aee6b32bf144abf5cbbf36b78563d0014a8f53b3e97b35154d"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.273.0/prb_Linux_x86_64.tar.gz"
      sha256 "568fe8c2a6e4868c60c172120d032fc5576a69658ad49d064e29ec817947d44b"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
