# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.199.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.199.0/prb_Darwin_arm64.tar.gz"
      sha256 "09a307b0e9d6bc53705483e22c43657dd0d7f5fd0b84e299d224fb9cd45281ec"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.199.0/prb_Darwin_x86_64.tar.gz"
      sha256 "8a33079874ac51364b32f2e0ead3d5ae7dd97877e02840621b6f7dd89e5624bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.199.0/prb_Linux_arm64.tar.gz"
      sha256 "eac0589d623f6ec4e87e937ecc08e04132c79c87bfb5d8d40412c1ebb578b852"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.199.0/prb_Linux_x86_64.tar.gz"
      sha256 "38f6aa7d3070fc62991a3a5e7fadb107141b299d8006282d78aa687b4a57aa5f"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
