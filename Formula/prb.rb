# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.187.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.187.0/prb_Darwin_arm64.tar.gz"
      sha256 "cf8f928fcb32bdc07c6d9a562f337920b36190d91ddbac19f9100c893e10e855"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.187.0/prb_Darwin_x86_64.tar.gz"
      sha256 "b65e1afcf0ffb36218e137cfeb4fe90c535c59745ed79d0837ef97638c681b40"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.187.0/prb_Linux_arm64.tar.gz"
      sha256 "12007fe7841eaddc81e38ca9fa8cb1f22dc2449dc9a7fc7580206797447d9686"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.187.0/prb_Linux_x86_64.tar.gz"
      sha256 "bcc87901bf0e416e535df2a92b64abcdc8c1ef4ded0eb33e0f9bc116c899f20d"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
