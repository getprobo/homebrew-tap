# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.265.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.265.0/prb_Darwin_arm64.tar.gz"
      sha256 "8a93e0ff0939e8b5bfcb9c91f741831be3aa1a176060dcf97278ef921417938c"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.265.0/prb_Darwin_x86_64.tar.gz"
      sha256 "87ad4731cb915e3c098ca53357caa1b1a1a221e8ac1004ab28b3ee785b56b8bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.265.0/prb_Linux_arm64.tar.gz"
      sha256 "05d24c7a70c1ab48c6087bef21659a50262b4b097a9c22a3f8c591bff7d2c206"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.265.0/prb_Linux_x86_64.tar.gz"
      sha256 "d25eb492188a2fa369411dd6139c70fb0f41b7183f607259ffe45492385b221f"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
