# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.172.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.172.0/prb_Darwin_arm64.tar.gz"
      sha256 "7beab7e89eb999f4e6505d3d4d758907f52481ba1e3c604e77a41acb2ffa0f71"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.172.0/prb_Darwin_x86_64.tar.gz"
      sha256 "b5633054740021aeb496416a1fa0717cdc95cbd125bf1f45e36480378f083cc1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.172.0/prb_Linux_arm64.tar.gz"
      sha256 "b77082116d0df44150514647bd053d0e032ecac6c973e7e89431c2cdf79c5147"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.172.0/prb_Linux_x86_64.tar.gz"
      sha256 "9272e696415b2cf4cf0b9cd6c68720443f81019b80291243cd0410b28ea50fc5"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
