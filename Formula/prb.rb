# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.191.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.191.0/prb_Darwin_arm64.tar.gz"
      sha256 "d489d7a3d9813a7c17023b0ad1bf68d305a915be64532718c96f2483818c0320"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.191.0/prb_Darwin_x86_64.tar.gz"
      sha256 "4b44cb6dc3948376a103b74a7c9e8aa1d50edaee04052a800a01e6b7d0333401"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.191.0/prb_Linux_arm64.tar.gz"
      sha256 "302ca4ea2c0d0fc48ac952665b0d520d96f019ca27516fc933263330e458d61e"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.191.0/prb_Linux_x86_64.tar.gz"
      sha256 "220748f52f4df68ceb0ce5b4229ed1a3a6571b8b598043ac55a36fa6c6f4f735"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
