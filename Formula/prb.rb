# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.195.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.195.0/prb_Darwin_arm64.tar.gz"
      sha256 "b50434df6625b39a5f2827ca19aea9e5c211d941182e849449addf83d95dfec4"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.195.0/prb_Darwin_x86_64.tar.gz"
      sha256 "18d6fea617fa137a9861ef03d602502c69b53da0ccb20ea2b2034906507a3e20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.195.0/prb_Linux_arm64.tar.gz"
      sha256 "649d9e5e3fd2a3085a1ee38f3be5df42250d0358c02cd0cafe4724910fbb1ed5"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.195.0/prb_Linux_x86_64.tar.gz"
      sha256 "c6f2f219bc702609430d2703686ca1b5537aa6aff26d3ed7f08e683202e26f3d"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
