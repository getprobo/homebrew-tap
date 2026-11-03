# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.263.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.263.1/prb_Darwin_arm64.tar.gz"
      sha256 "27f3d82f57821e32447d891131508fccf0b3c7f8a47c46e9e287c4300a02fa53"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.263.1/prb_Darwin_x86_64.tar.gz"
      sha256 "cba3a1b4dc49beddd5f5bd459a68b49c92f02733d393a0c473884f8d3761aed8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.263.1/prb_Linux_arm64.tar.gz"
      sha256 "5a51df31e9bd71cd43e3f7dd00f2deb973a765912a16f5538d7fabbf7d24f2d8"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.263.1/prb_Linux_x86_64.tar.gz"
      sha256 "365d32d18ff91dbc6be15dd7f7bb8d3943666d7ce33b2d1e06f1c25c80eb37c5"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
