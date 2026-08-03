# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.209.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.209.0/prb_Darwin_arm64.tar.gz"
      sha256 "c7805d6aaed329f5d298c5419ae7a5a5b30bee51521a151aed3580e0ac777db0"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.209.0/prb_Darwin_x86_64.tar.gz"
      sha256 "2f37a0cded69cc10ba49ab52f76333521151a690e5e0316e0431d45aa7c81ba0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.209.0/prb_Linux_arm64.tar.gz"
      sha256 "62c34f933b3803ba7d2cdd15943dc7fa1a0441d0f396be75bc545778beab24a8"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.209.0/prb_Linux_x86_64.tar.gz"
      sha256 "490ca2f5d33cd81abb1523db04c6fb660cf0cdce9a66603fc86cc7d9cc6f7f88"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
