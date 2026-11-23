# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.274.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.274.0/prb_Darwin_arm64.tar.gz"
      sha256 "81653fd0ffd0731620512e68a84f9366d06784ae7821b5f28a7aa0c40c4e8a47"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.274.0/prb_Darwin_x86_64.tar.gz"
      sha256 "bcd3b076ff18bace238e7c3994da0acf891a1bff70715ac5114b6ad003d1dd5f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.274.0/prb_Linux_arm64.tar.gz"
      sha256 "0868bc847a6bff59f65b1bc01d418d0c21acdd67153bf9645ade5a252db49b39"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.274.0/prb_Linux_x86_64.tar.gz"
      sha256 "eaf976d3aa7585474b065cfb4edb004e247c63cac66d4392cc84a44a33fef71a"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
