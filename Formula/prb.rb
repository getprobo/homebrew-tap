# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.193.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.193.0/prb_Darwin_arm64.tar.gz"
      sha256 "4314a1e767dba50b493b598e4ea38daa8c245c915d74b31f6ab6b4f710f26487"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.193.0/prb_Darwin_x86_64.tar.gz"
      sha256 "fae878a248a3e03a127636a29e1a6c9180a926736e422f9668d599956a9bf186"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.193.0/prb_Linux_arm64.tar.gz"
      sha256 "055317b0b568011537b44296d29fd3b7e8d5d20e16711327ae20d10ae33b1c4e"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.193.0/prb_Linux_x86_64.tar.gz"
      sha256 "20c1acbd2ce12d3f460a24c33095fa9f4f49b2887111a165b52ff50e77dc4ebf"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
