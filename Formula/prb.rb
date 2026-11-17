# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.270.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.270.1/prb_Darwin_arm64.tar.gz"
      sha256 "f19dbdb15a62b503ce56ecb25ef57ba0453ba7c5cf31a046dfe1564297d2033e"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.270.1/prb_Darwin_x86_64.tar.gz"
      sha256 "f887a42bd2b289a59c648106fd2e492b8796815a2869e6f9daab8a5357b01dc5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.270.1/prb_Linux_arm64.tar.gz"
      sha256 "98a22c7addc0e89c851b0a62223e0a356b48f12c19c0a5ef61efa6ea31fdbed1"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.270.1/prb_Linux_x86_64.tar.gz"
      sha256 "a92e8a15e903a4cd16caba24b62615f1700aa2acdaf0bac195e2dc4b182fc91d"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
