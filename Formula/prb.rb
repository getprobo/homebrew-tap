# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.205.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.205.0/prb_Darwin_arm64.tar.gz"
      sha256 "24b3586dcac2c7f5f7793da024d9605da00e657f33b14c697f3f328ae9a9d855"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.205.0/prb_Darwin_x86_64.tar.gz"
      sha256 "f200a3b3f95a0b69373ac6d7b8c01989ab3bd033e82ac213b887f56fac9e5c3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.205.0/prb_Linux_arm64.tar.gz"
      sha256 "ac0338c1842384d3606e92ac76ad449738aef39072fd2b8f631e3735392f8230"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.205.0/prb_Linux_x86_64.tar.gz"
      sha256 "4c170b12090898b4c35c044ef461e6100287e30148d7fac30af20cfe093d74d1"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
