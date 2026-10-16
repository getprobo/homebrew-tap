# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.251.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.251.0/prb_Darwin_arm64.tar.gz"
      sha256 "6ff17dd96d664173d2f64933bf60555d7c390bdd3eef772ca5ddfec26ddfb928"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.251.0/prb_Darwin_x86_64.tar.gz"
      sha256 "d06ae0b859402ff8416e0d56bd6cb549805a919dee1fbd9a5170340099e599f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.251.0/prb_Linux_arm64.tar.gz"
      sha256 "281425011ff94827e3cca0bc89f49ba67b8bf0112de5187fff3276d383f0bb56"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.251.0/prb_Linux_x86_64.tar.gz"
      sha256 "eebae63c394cbead814b337ae2fc85a68c6b6a3df388c36301e3ec074f3f9115"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
