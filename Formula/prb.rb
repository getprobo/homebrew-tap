# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.260.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.260.0/prb_Darwin_arm64.tar.gz"
      sha256 "f8b4e47c8fe5887a2c4846da969d8ef234afde5b87024a9f80aee51575480b56"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.260.0/prb_Darwin_x86_64.tar.gz"
      sha256 "254805590e66f7609b81502e9efa09a91ded9a07bc2036a3de4b8b1b66d7bc5a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.260.0/prb_Linux_arm64.tar.gz"
      sha256 "153ab59ecb5fa27d107f08452045ad288d2b47d21f4cbbdd9793559be93a4dae"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.260.0/prb_Linux_x86_64.tar.gz"
      sha256 "2710648923b9d4e0dddbf1388bdd085564b91b20ab41aa6ad8216814234a0e46"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
