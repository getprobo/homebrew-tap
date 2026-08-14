# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.217.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.217.0/prb_Darwin_arm64.tar.gz"
      sha256 "56922f4792bb57c4be2cc6030cdc633d69d4aac2a62d191c15fd8306e63e3214"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.217.0/prb_Darwin_x86_64.tar.gz"
      sha256 "9866cd0b81bacf1f14a4d9157629ee9455219ca1d4c8486fcd4df5f32a212136"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.217.0/prb_Linux_arm64.tar.gz"
      sha256 "91bda9cba2c69365d805e734b264b2d3ff5a5451bc9ec1af38c9a9b4e03b282c"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.217.0/prb_Linux_x86_64.tar.gz"
      sha256 "f0959405eed4778a83daab0509d9bce79039c1a72346cb6898b5a1557ffd5cb9"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
