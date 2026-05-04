# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.180.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.180.0/prb_Darwin_arm64.tar.gz"
      sha256 "cf451d59a16fd2f3a62a5ab8762195cff7db0af508c4de8debf945547e092b53"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.180.0/prb_Darwin_x86_64.tar.gz"
      sha256 "92443992a3b382dc8fdfcc27a5d2d8daba226a719f0c8015ccc4caff0c64d245"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.180.0/prb_Linux_arm64.tar.gz"
      sha256 "d2b70fe6075574521fd4c1c139154301ce31a4ca8fd6d24e9c5f1a9f3a1f4e60"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.180.0/prb_Linux_x86_64.tar.gz"
      sha256 "5405bef88741f5b19b339f8c78379970bbfad97bd8b086e45fa6e41ba7190b96"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
