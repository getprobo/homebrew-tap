# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.250.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.250.0/prb_Darwin_arm64.tar.gz"
      sha256 "6625ba5e88c2bbcd23aa06e137eedcb7cf6ddbe9a31d02a6e4589a637d28bb1b"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.250.0/prb_Darwin_x86_64.tar.gz"
      sha256 "089d4971a692c860e3a46c56743bb9001b3c0e86bc739ed605d614bd5cd33a6d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.250.0/prb_Linux_arm64.tar.gz"
      sha256 "6d3b759a2d6915b6121299158976a3f563ae50c49bc03ab2a53fa7935f4101e1"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.250.0/prb_Linux_x86_64.tar.gz"
      sha256 "382b9f371707c16d390d84f8cdaec756f18f277e9d03a4f2637f900e2a89f01a"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
