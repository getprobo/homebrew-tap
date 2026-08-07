# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.213.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.213.0/prb_Darwin_arm64.tar.gz"
      sha256 "5c0a39d93998fe26ad3a64e8b7cc7c7778a85a45f635d9cd6f43f11137e956d9"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.213.0/prb_Darwin_x86_64.tar.gz"
      sha256 "c31e9ba9b3b7f457a427f721fb8ddfd9ff95ed6d9567c641868750137f5f4b26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.213.0/prb_Linux_arm64.tar.gz"
      sha256 "d9bd40bcdc872e647ac1ba1c3606759a5f999487858a0d00e6244abc4d83975b"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.213.0/prb_Linux_x86_64.tar.gz"
      sha256 "7f20fe54b73297c713d324ae95d4a18d172229fcaf4f73ede75a75fe76905eb2"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
