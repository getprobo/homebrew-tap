# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.242.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.242.0/prb_Darwin_arm64.tar.gz"
      sha256 "e961c68bd0e147e38244114ab3b1387d8d7c1427eae78d5d50c1d27590967f7c"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.242.0/prb_Darwin_x86_64.tar.gz"
      sha256 "ab18c438f54ba25f621b3a2e2588d25526f291760b8864fa50a67d36a17bccd0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.242.0/prb_Linux_arm64.tar.gz"
      sha256 "1da2662a7fa7b1dcb059257d50956409ad7adaa2efe35098461f0859e487545a"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.242.0/prb_Linux_x86_64.tar.gz"
      sha256 "467d57561d792dc3fc6dec5726817621271698063ed67b3bb48c2113c6377d29"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
