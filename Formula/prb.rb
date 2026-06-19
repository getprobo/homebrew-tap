# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.196.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.196.0/prb_Darwin_arm64.tar.gz"
      sha256 "a3000eaccbbb528a2f789aef80ea579950b5d101aaaeb3b96a1ad24fb31a9e9c"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.196.0/prb_Darwin_x86_64.tar.gz"
      sha256 "eec8555812b55ce0327ef1fed4c4d002d05063b7cabf1d907b5fdb7ea4f30884"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.196.0/prb_Linux_arm64.tar.gz"
      sha256 "4e3114126d6aa8b98f64d4c85f52353ded7a16af69ec2cf6dddfb4016eea11a9"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.196.0/prb_Linux_x86_64.tar.gz"
      sha256 "8e5e473e75384ea2a7b11e91b6ed338bbca43cb6c13cd8a979583d95d25b48d7"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
