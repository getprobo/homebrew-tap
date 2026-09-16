# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.230.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.230.0/prb_Darwin_arm64.tar.gz"
      sha256 "e517d0c1c4e6c97741eb991faf2a00cb80cc8e481c0ffe962ccddd0df8a4933b"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.230.0/prb_Darwin_x86_64.tar.gz"
      sha256 "9d0a49f7c97347ef97c83229243c298be7fc47827591dd065a3d78599cef2497"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.230.0/prb_Linux_arm64.tar.gz"
      sha256 "0866b5e094ae190adc20c0215ed7fe049563657b007303639d461a774cb445ed"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.230.0/prb_Linux_x86_64.tar.gz"
      sha256 "2befffab2b769404bf33206a3686343c7dfe49865b7391fb7c455ae12b39468a"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
