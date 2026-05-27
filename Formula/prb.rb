# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.190.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.190.0/prb_Darwin_arm64.tar.gz"
      sha256 "68a3a3290643613971b8ec07080356c17b1e799cc18ce1de69010af474582174"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.190.0/prb_Darwin_x86_64.tar.gz"
      sha256 "a0695eb6c4a63ab1187c5a07cb10ee2ab2a4bf90c47c1546de5fd563567573f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.190.0/prb_Linux_arm64.tar.gz"
      sha256 "8753b08eee3223b3e0ad1fd46710ed3df27bf4fac91b587e8551097c96eb24b1"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.190.0/prb_Linux_x86_64.tar.gz"
      sha256 "81fc17d27879b693207aa0e641761d5ec66a0461a7120b34a3f92edf4105a982"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
