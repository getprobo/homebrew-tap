# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.173.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.173.0/prb_Darwin_arm64.tar.gz"
      sha256 "657b35f04aa1a2eb571c6e84702db188ae8efcf3595d754d17d9648809410c31"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.173.0/prb_Darwin_x86_64.tar.gz"
      sha256 "9455d9208aec7abf39238cb11c6bd498590ab898ae3d99d558c6387ce9261d21"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.173.0/prb_Linux_arm64.tar.gz"
      sha256 "b948ee90e46949b74ecbad855bb8f0fbdd9341996d93ce701e2ced346b4e47cb"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.173.0/prb_Linux_x86_64.tar.gz"
      sha256 "e7469fc0bc9f024b31a63098689c10761ebf39ad790e7a40d46ffac0ecc26bb9"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
