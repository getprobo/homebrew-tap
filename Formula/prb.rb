# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.174.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.174.0/prb_Darwin_arm64.tar.gz"
      sha256 "a008d1f2f765cdeab4e21103567866919bc49e5031c12c3d685c4bbfc5324095"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.174.0/prb_Darwin_x86_64.tar.gz"
      sha256 "fc0141bfb031dc5ce557a15fa1b2b6e2a92efef5bfdb6e5ffa3e3a6f51995b09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.174.0/prb_Linux_arm64.tar.gz"
      sha256 "aac711a1f69f6f1e68927f0cb672582c367579b0eaf66fc0c62555e6628f1690"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.174.0/prb_Linux_x86_64.tar.gz"
      sha256 "32a23bd97378a7d690a4d665f0c0484937d7580efdf384ced33ecfdcda5f5571"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
