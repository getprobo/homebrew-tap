# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.208.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.208.0/prb_Darwin_arm64.tar.gz"
      sha256 "7b86d1cd79c43a2a89fc5c8f10c9df834582a6dd3c1a2314917480153e6c4c40"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.208.0/prb_Darwin_x86_64.tar.gz"
      sha256 "b3811523ab0a57337662197c873c845614e72299b463719c660dc7552eed8200"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.208.0/prb_Linux_arm64.tar.gz"
      sha256 "80749c7320945218ad4f13b2e26c0dd4e914b6a522e26679ec639d3c68b0cba9"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.208.0/prb_Linux_x86_64.tar.gz"
      sha256 "15bcb49c4a5e3b4c5ffc917975965e68ce40e1795a0e16398f8597c3c47c77fc"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
