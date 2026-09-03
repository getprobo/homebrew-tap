# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.224.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.224.1/prb_Darwin_arm64.tar.gz"
      sha256 "f151aee566ab86be7e4d2b705a4423af7da47ac13c9f6b39dde5ebf92ceda63b"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.224.1/prb_Darwin_x86_64.tar.gz"
      sha256 "8f68ab68144f5a5ed4bea958fd25b10db9e12a961bc3e5f8bb7ba1b9524ef990"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.224.1/prb_Linux_arm64.tar.gz"
      sha256 "a2ecc9dab7d50f6fb3dfbcd976ac5325113a809ae1d20332eaee5b03a5d2b8ae"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.224.1/prb_Linux_x86_64.tar.gz"
      sha256 "942a7979b4cf8dd14eef11370e98172a99524e50162bcb5da839079ea5ec6535"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
