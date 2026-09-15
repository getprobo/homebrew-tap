# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.229.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.229.0/prb_Darwin_arm64.tar.gz"
      sha256 "75b217ee9f6859b03694e33e5b453b0f2e7f5e9d0ef60b62736088cbee97f649"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.229.0/prb_Darwin_x86_64.tar.gz"
      sha256 "fadd6770fb054d6cee9534d5453edbe3dff0f0fda56ade7faa496ed34829e200"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.229.0/prb_Linux_arm64.tar.gz"
      sha256 "7f3ba6005f90b1bda88499a3a1d95bfbf5e54cd07d92cb2ca0695e9a5b0b6774"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.229.0/prb_Linux_x86_64.tar.gz"
      sha256 "e2feacf72b6537d843d2f7a99ea9a8c9af279d9f85de6f2b8df5c5cb8c3d5042"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
