# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.176.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.176.1/prb_Darwin_arm64.tar.gz"
      sha256 "334503f1175c52c5d936b46972b8c7faa386973974f9def27eab92747102186a"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.176.1/prb_Darwin_x86_64.tar.gz"
      sha256 "8268215457b06f7de307eedd76aa59629ca1c4b31c20c5de3aa50550e3f2bd1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.176.1/prb_Linux_arm64.tar.gz"
      sha256 "abdc128aaf2349bc35b9b27252a4ab6a96ccb351a178acd6289b20138fcbc25e"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.176.1/prb_Linux_x86_64.tar.gz"
      sha256 "3e28ecad3eb547ca2a68d7b5023b50e855d5c647bacc9714a61dd4ec053cd90e"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
