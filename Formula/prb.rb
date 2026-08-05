# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.211.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.211.0/prb_Darwin_arm64.tar.gz"
      sha256 "0c032432ed7bd903055cbe8be0f8235971de07424fc5af9252ac479d71031528"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.211.0/prb_Darwin_x86_64.tar.gz"
      sha256 "805227cb9692c265a56a635cfcbd3237375ae624361fdd3b6a2f3de41f40723f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.211.0/prb_Linux_arm64.tar.gz"
      sha256 "b27546489112965207f2e17cde416264e9d04d747659166938db1cabd1fb5dc6"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.211.0/prb_Linux_x86_64.tar.gz"
      sha256 "63ad05a774b5b68d22febd77776907549d739157ef2da091290fa3cea4b15ca5"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
