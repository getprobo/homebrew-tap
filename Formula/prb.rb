# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.194.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.194.0/prb_Darwin_arm64.tar.gz"
      sha256 "d054bb449b6e25645e7e8ff425883309b0abfd3bcd00193173fb97929bcadff1"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.194.0/prb_Darwin_x86_64.tar.gz"
      sha256 "ec407c84318a57660aa8398fddf63fad2281453e0b2ef83cce39ee62f6af791c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.194.0/prb_Linux_arm64.tar.gz"
      sha256 "e61bc7c2d2cb62e6777b5d98dac6ab958cb074d776cbe6bb66f46bc13124c187"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.194.0/prb_Linux_x86_64.tar.gz"
      sha256 "3db88d7bf847c7cd5075c890c676cb7e0ca1025db29d659b6f8ca490bde2b51d"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
