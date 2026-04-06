# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.161.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.161.2/prb_Darwin_arm64.tar.gz"
      sha256 "160bd99aa7dcb6f28399d392c46be0044180f4dc2854a6a051b23f30feebfe2c"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.161.2/prb_Darwin_x86_64.tar.gz"
      sha256 "75a7b1b44da3d1d50d9ff4572449de377cd59f5979d83426b892a53e3c57da43"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.161.2/prb_Linux_arm64.tar.gz"
      sha256 "51cd4f5669d0f64c351c41963504b6f404be4323591129dfbdb24f2a9af50cb0"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.161.2/prb_Linux_x86_64.tar.gz"
      sha256 "d060c22bf844dcb2c03684c0db871bcf45eb6967ee78268bf6789c8f3caf06e6"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
