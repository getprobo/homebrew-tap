# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.177.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.177.0/prb_Darwin_arm64.tar.gz"
      sha256 "d24a963ab8ce654dfc86559666b1de6abac26e64cfcdefa1d37cc4f6165e7620"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.177.0/prb_Darwin_x86_64.tar.gz"
      sha256 "e64d5d1bc938ef14549ccad4fcfb1643b13f0ef8a012a5b7cd18b5b7e41cd7ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.177.0/prb_Linux_arm64.tar.gz"
      sha256 "5c72df28421c35f4aa7d1df7c38ecd28af5c536ef0c89f9db8457b4dd5682a16"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.177.0/prb_Linux_x86_64.tar.gz"
      sha256 "2f1d74c9917f653c3d99af1fb21e0bb1e961afef33f82468a755d708e426b01d"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
