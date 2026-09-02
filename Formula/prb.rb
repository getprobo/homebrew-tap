# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.224.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.224.0/prb_Darwin_arm64.tar.gz"
      sha256 "6fca3b1a05235733b1df54847bbaabf87c420220dc1316421a50cb34145ab62e"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.224.0/prb_Darwin_x86_64.tar.gz"
      sha256 "c75fff5bf31d79d3468ba6a5a07f4fe75e9c6421e3a518c233bf6ffd12499371"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.224.0/prb_Linux_arm64.tar.gz"
      sha256 "7457a45a3289b6899d65dc21a2ef9d79dcd6da6b88adbbd3e1a29446eb4edcdf"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.224.0/prb_Linux_x86_64.tar.gz"
      sha256 "631ae8285fb509ba3d44ee593126c224cdeb8f2e08acab575468a224ce06c090"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
