# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.207.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.207.1/prb_Darwin_arm64.tar.gz"
      sha256 "48a90372f33c00d35d9de3fb7bea140ea09e878953db957287d1dc05dcf5dc5e"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.207.1/prb_Darwin_x86_64.tar.gz"
      sha256 "569e747f300cf7e76fb1a2b31d339e04823eebd5e08616547b07fbc6707618be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.207.1/prb_Linux_arm64.tar.gz"
      sha256 "c2f4165db317d11e56966cb2b89d446c0ac855bdccec58e1d4dab49b8bb16674"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.207.1/prb_Linux_x86_64.tar.gz"
      sha256 "4d06c638aae7c47a7c2f547503578247b4cbcaf76d66dc8a8240ff5a2e704483"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
