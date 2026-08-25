# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.219.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.219.0/prb_Darwin_arm64.tar.gz"
      sha256 "f82847005a860b08775ddc7bb642a6f19b610090e6a41278eb71ebaf736fc329"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.219.0/prb_Darwin_x86_64.tar.gz"
      sha256 "5b18bd9d9d4cd7fcc334d91508e006b7d6fdb9e2de681294922face50cdfb37a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.219.0/prb_Linux_arm64.tar.gz"
      sha256 "11d23a2c6b0fbec39558f5272d3c7dd2447839904df991c55afa44b689391ef8"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.219.0/prb_Linux_x86_64.tar.gz"
      sha256 "9ece2b6cbab2c18077dfa4076ccf0babb5fc553406e875c2ea0aface8d1e245f"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
