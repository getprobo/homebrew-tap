# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.255.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.255.0/prb_Darwin_arm64.tar.gz"
      sha256 "dfdcd5d8c40a2f86b83b7e7bfc90a551ca9ce12a51baed13017b16620244bd39"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.255.0/prb_Darwin_x86_64.tar.gz"
      sha256 "0bf6649934899818d8795418700d8d4f8c0a7c2a829d2620aabde0aa6b4d904e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.255.0/prb_Linux_arm64.tar.gz"
      sha256 "e7561a6c7ca2d1515fa7e2315f4fa2849a5a537631bd4c98e7f4d61ba7ba46cf"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.255.0/prb_Linux_x86_64.tar.gz"
      sha256 "21b9e123b9adaf72b956d089b07ef9bd09fce7887de17039a06c6778e126cbcf"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
