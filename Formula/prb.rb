# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.202.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.202.0/prb_Darwin_arm64.tar.gz"
      sha256 "a111bf44c5f4dca8bc078617eba5f11ac7da8551a0918befa82ec7f9d0544ccd"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.202.0/prb_Darwin_x86_64.tar.gz"
      sha256 "ee5bc3ec409ce60efe418114ddb022f3766bd1eb5a85eedcef544fc5e684e8a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.202.0/prb_Linux_arm64.tar.gz"
      sha256 "7f0da1502846cd1f389cfc88414f9407d77cbd0753b7634ba9b306bdae8bff15"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.202.0/prb_Linux_x86_64.tar.gz"
      sha256 "46649f2a0cbd24afd243ab8ac1d1b5211556ff7159f765df5d254f6f60e98450"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
