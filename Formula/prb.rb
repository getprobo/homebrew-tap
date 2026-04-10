# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.165.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.165.3/prb_Darwin_arm64.tar.gz"
      sha256 "5f1a84dccf6adeb872faa5cbd79f4d4c2f0a8e7e5915af0db0b93af9c5acb5ac"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.165.3/prb_Darwin_x86_64.tar.gz"
      sha256 "60f312adc022eb7089088d665fc5ae1790c17dda116ba717055eb5b5dc2053da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.165.3/prb_Linux_arm64.tar.gz"
      sha256 "3c14ae0e96e097514be39c4d022520afaaaca77280f3a99db2d03eafb8a2cd04"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.165.3/prb_Linux_x86_64.tar.gz"
      sha256 "aba22b7e541470679a99f3fa15707d442a9b51c3044ebe2894f70f1e12820ea1"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
