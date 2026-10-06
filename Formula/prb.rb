# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.241.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.241.0/prb_Darwin_arm64.tar.gz"
      sha256 "b11371c8402d77fa3681910c38ef3e5da2757c882668f9fa68ecaf8b282a81ae"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.241.0/prb_Darwin_x86_64.tar.gz"
      sha256 "06fa153ca10ed52528a931bf1c85df47b4ab01fea7951fb4df9c952ea27b383d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.241.0/prb_Linux_arm64.tar.gz"
      sha256 "116803935249c384758857a827267351da10aa20b157bcc8b163ae3bc37f46c7"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.241.0/prb_Linux_x86_64.tar.gz"
      sha256 "6494dd71794f4dc9335f0f9b3dde3d428b17d2e34f3b074cc9f25e75a9cb7b1d"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
