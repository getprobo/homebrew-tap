# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.200.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.200.0/prb_Darwin_arm64.tar.gz"
      sha256 "c22a9dc71a40386891ed283c7989dc754356a47342291ca20afc6ea71766a1be"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.200.0/prb_Darwin_x86_64.tar.gz"
      sha256 "319e4b591efb26f815b46662fb3c6f6a56d170a0210465b3c3729cda5901028d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.200.0/prb_Linux_arm64.tar.gz"
      sha256 "b32ff64a1b8d318bcdefa7ee19a1d160418419436e3ad7da1976cfd32a7e70ef"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.200.0/prb_Linux_x86_64.tar.gz"
      sha256 "d201ef1c8198c233250800cc2b34acbeb38b3d15a2a1722f0fc6995350f48137"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
