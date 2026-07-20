# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.201.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.201.0/prb_Darwin_arm64.tar.gz"
      sha256 "4062a6b64d40caa4d58256b9c68be32cde013635a63bab27e7c1598658dbc210"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.201.0/prb_Darwin_x86_64.tar.gz"
      sha256 "1918bb57af11c0e72fed9ae1fabcb2d0f5f1db2717e2759655867212882ac2c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.201.0/prb_Linux_arm64.tar.gz"
      sha256 "b45b52097b36cb8b8503657d887ab57dffc671df05b07dd60f185cf5266c4cf5"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.201.0/prb_Linux_x86_64.tar.gz"
      sha256 "dd6ff77886bc75fa857270021d3b13ea5786cfcab1de701c5346df0250ba5da7"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
