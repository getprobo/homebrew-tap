# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.163.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.163.0/prb_Darwin_arm64.tar.gz"
      sha256 "ebb1dd8b3ffc4aae2cdc34dea8cc232723c90c0ffcc80a8f932cd63ebe7889cf"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.163.0/prb_Darwin_x86_64.tar.gz"
      sha256 "274de87d0d42b55ba0e6c003c644052eec73e64274fc1521f7d29c903392a3a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.163.0/prb_Linux_arm64.tar.gz"
      sha256 "faec1003d6dce314921a6e004dd08bd33d2fe1d0cf7b8832e1a5a86e00e40f87"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.163.0/prb_Linux_x86_64.tar.gz"
      sha256 "a6723a7a71d8a3d08adff54f2dc0256024b116468fd3bc707a041f68548c40aa"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
