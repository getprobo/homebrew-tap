# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.183.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.183.1/prb_Darwin_arm64.tar.gz"
      sha256 "3076e40c73ea59b357aca665c548f32c5c66f3218c048f5d235dfc9aec9ce546"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.183.1/prb_Darwin_x86_64.tar.gz"
      sha256 "b606775a07fec3874e5b8ec6ef05ebb9508ad4e82a4522c65946ca654beea6ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.183.1/prb_Linux_arm64.tar.gz"
      sha256 "a04279cef46a73f0e2041fb0533ef3d9b7d68884a282ef4a3014a07a1ef15387"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.183.1/prb_Linux_x86_64.tar.gz"
      sha256 "feb93dcc4c8167e64790058441d96e222df4241cf5bf813c6f1736be601a16d7"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
