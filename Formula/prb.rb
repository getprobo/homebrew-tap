# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.231.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.231.0/prb_Darwin_arm64.tar.gz"
      sha256 "d3a7a0e558f6f7a4ee31e3bf2368947d205f439e7a0e25d7c0c7e419424cfd57"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.231.0/prb_Darwin_x86_64.tar.gz"
      sha256 "53fcd7ef247d302db2fc60faa1a718b01bf313c98205abdec32baedc9337028f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.231.0/prb_Linux_arm64.tar.gz"
      sha256 "2d56e36f1a4ed2116fd8d2d53fbcda7da51564dfd54e137becb16b0262011507"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.231.0/prb_Linux_x86_64.tar.gz"
      sha256 "b1540e24c935482acf496d3f3cf29f8a9680a5a69502edd2b09a9a684e64b170"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
