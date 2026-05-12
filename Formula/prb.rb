# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.185.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.185.0/prb_Darwin_arm64.tar.gz"
      sha256 "84417875a1066a84687a3339dd13dd76d59d027de4abf99abc57e5f8bbeb6aea"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.185.0/prb_Darwin_x86_64.tar.gz"
      sha256 "c912c7b835d7b89450833ed658b65da0da86531d510249de6ead52979e4b64b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.185.0/prb_Linux_arm64.tar.gz"
      sha256 "dbc74210556939aa1a70049d301eaea1b4aa18dc75129eb3374f8468e5ab0cc0"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.185.0/prb_Linux_x86_64.tar.gz"
      sha256 "dbcee259af22c049a1fddbf7e019fcb5192175ad77ab91e8a72aabdf378f7afe"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
