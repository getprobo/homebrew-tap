# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.253.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.253.0/prb_Darwin_arm64.tar.gz"
      sha256 "e73c1654009c88b6fd277c13ead2350662e2b7569f53509e118f8e2991ba270d"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.253.0/prb_Darwin_x86_64.tar.gz"
      sha256 "08f63180860d55b2cd1ee78d6ed7de82956ae357c85fe4aef541021a5999681a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.253.0/prb_Linux_arm64.tar.gz"
      sha256 "05c3412612d71a15e0da36396936227e19f8c9e65b7a7ab5fa4a097a429bc134"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.253.0/prb_Linux_x86_64.tar.gz"
      sha256 "93a015609e2bb274c8b358f60848d715708db4b1c26611264c96ffeebbf733c7"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
