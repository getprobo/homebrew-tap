# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.264.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.264.0/prb_Darwin_arm64.tar.gz"
      sha256 "a711c9a9f7a25776ad5ba549b19695d159f669f2e7099cd2886296d290c38448"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.264.0/prb_Darwin_x86_64.tar.gz"
      sha256 "e9d8fd52ff60d8cdf77258d631540829ae3585d0e9028437b84ec50fb040bf90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.264.0/prb_Linux_arm64.tar.gz"
      sha256 "8c9e0104cce5a0fbc70a958ca28ddebdc7fbdd49311849c1ea81cb5acf5762e8"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.264.0/prb_Linux_x86_64.tar.gz"
      sha256 "aff310ee216effd64043af9be0f26d84b1d6b920386c254f6c79f307b4602c88"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
