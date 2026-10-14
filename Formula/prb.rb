# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.246.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.246.1/prb_Darwin_arm64.tar.gz"
      sha256 "d4ba1c92e8f9686d87183273d1ceac8e8f65ddc05b00e00ec92ff91e4cce0a52"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.246.1/prb_Darwin_x86_64.tar.gz"
      sha256 "07b3385e7ccbd33ad544e57d813b77af9614bdf758d2b7220cf000a153e2097d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.246.1/prb_Linux_arm64.tar.gz"
      sha256 "70f7008d2b71313b34429de70e80f070237b0d5d8b4838ffb6294d3df4cebe6e"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.246.1/prb_Linux_x86_64.tar.gz"
      sha256 "dbe5951334b6d8c7468ae298039553955c11ac2cebab8627f7c5c71f192a6c4c"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
