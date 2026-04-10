# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.165.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.165.2/prb_Darwin_arm64.tar.gz"
      sha256 "b878ad7b4d68f96e9f765ad8bb274ddddb01ad413941db95d0cc733e418f3475"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.165.2/prb_Darwin_x86_64.tar.gz"
      sha256 "6da14beacb0536cc9ebf51f119934772061d01252d049966d50e8612e15da6d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.165.2/prb_Linux_arm64.tar.gz"
      sha256 "c3b9a959e4af8f55a44d25faaac54b188c9d5d9bbc3ace94f25c427045076c07"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.165.2/prb_Linux_x86_64.tar.gz"
      sha256 "4b721254ea37d8f0dd682fc3462c198d5e3d442c6d6539c3498c859dd26e25a9"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
