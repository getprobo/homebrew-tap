# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.257.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.257.0/prb_Darwin_arm64.tar.gz"
      sha256 "f877ecbb2b457b41156763cb60cdc9452b66b2459f35226881c1a352ab3104e2"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.257.0/prb_Darwin_x86_64.tar.gz"
      sha256 "0180f5b9e2ce2dea3378bf2cc1d24599fb00fb8f899503ca3753af66d32a197b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.257.0/prb_Linux_arm64.tar.gz"
      sha256 "7b78a962a2b0cfae5502ccaaab8f494464988ebdc3eb225f5826eb1984abc2c0"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.257.0/prb_Linux_x86_64.tar.gz"
      sha256 "020cc71b384cdd59bf77529caf0251d7fa947e865ef1db6c9df2f8a9c8aff67d"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
