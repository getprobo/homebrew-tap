# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.166.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.166.0/prb_Darwin_arm64.tar.gz"
      sha256 "37be8935be7ec8902159cbd6db72e095074248dfc3a1858dd13684eee021a0c9"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.166.0/prb_Darwin_x86_64.tar.gz"
      sha256 "f19ce2bd8690b2294f723f993cc77a57a38fdb9b343bbb283cdfa50bbf673cb6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.166.0/prb_Linux_arm64.tar.gz"
      sha256 "5df847958f8f3cad7d2fadab5a03158f40eca0c3743ac6ce1774ffab2b132821"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.166.0/prb_Linux_x86_64.tar.gz"
      sha256 "5443a8b22c45ca507f078844ec435ad261256e98286ecd79ef454b03a2e9fb50"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
