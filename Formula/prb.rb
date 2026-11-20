# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.272.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.272.0/prb_Darwin_arm64.tar.gz"
      sha256 "8fd09036ce818273c73126a3ab0f113a5e7af326a73a73d910d8d722270283ff"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.272.0/prb_Darwin_x86_64.tar.gz"
      sha256 "aeb551507917ed857a34f70f9ba61fd5fb34f8ecb923f40a410afeb48504fab7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.272.0/prb_Linux_arm64.tar.gz"
      sha256 "097b259b92071eea3a15bfd95ad95268f73ae844fbada53605c196798a2a30d1"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.272.0/prb_Linux_x86_64.tar.gz"
      sha256 "fb19699fb054c01dd3864bc8b9f7fe8018669a69b8f7a8deb10fcd1f0ef42693"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
