# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.237.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.237.0/prb_Darwin_arm64.tar.gz"
      sha256 "c3be68d0c48f1a42166fe13bc429c204b4259e0e95ffc7596487208ab3b76e2c"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.237.0/prb_Darwin_x86_64.tar.gz"
      sha256 "a4956f8cdad91d285f681d8f88dc87062025a1ccfbdbe0aa3d9b16c1cb623aa7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.237.0/prb_Linux_arm64.tar.gz"
      sha256 "6101c246566fb1305f9f4d47ee55be17d761ee3cdf0dd77cf9430387b54c95eb"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.237.0/prb_Linux_x86_64.tar.gz"
      sha256 "a7f452e24a2ac7c3d0fa497fc62429524eae55bccd78890b90d9f159762b3013"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
