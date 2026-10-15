# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.249.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.249.0/prb_Darwin_arm64.tar.gz"
      sha256 "aac333975c688ac5664e0dd537675f5c3ffa52d8ac46ed35aee368fcc658b1a7"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.249.0/prb_Darwin_x86_64.tar.gz"
      sha256 "7c1c72bc2b18815e0ceed49b00f1c28ae5c48aa3ca6e23f268ffe4281e019084"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.249.0/prb_Linux_arm64.tar.gz"
      sha256 "df2fc3dd35081286d4ed9ccaf2a20cdc54209a45ab70cf0f312191a115bb6e7f"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.249.0/prb_Linux_x86_64.tar.gz"
      sha256 "c26caacb8d9d07bf5be73d1b5c2967804035211a6999d29fa19e9d04de2b9749"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
