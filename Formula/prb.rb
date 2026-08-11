# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.215.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.215.0/prb_Darwin_arm64.tar.gz"
      sha256 "2f583ebd9dcc16d9313eea03326436ebcf39ca2513ce4c96ccc93ce4da63d692"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.215.0/prb_Darwin_x86_64.tar.gz"
      sha256 "6f6b8a256af8007cafc94a4aa2099e0d6a8afaa663c301ebffeb6e8b082cb7e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.215.0/prb_Linux_arm64.tar.gz"
      sha256 "43e2b1dc47abf4943ae394f41ea765a8d366b94d9d3b0ccc2303f8a9a3988004"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.215.0/prb_Linux_x86_64.tar.gz"
      sha256 "e2872ec14db0d46fe600e93065b2b0ec6c1b0015b5f76c34ef4ba71e23c99b37"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
