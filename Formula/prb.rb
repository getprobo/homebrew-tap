# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.188.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.188.0/prb_Darwin_arm64.tar.gz"
      sha256 "bef4ae857d51107b8473e1148926b84ff2d6b31259a916f30f2065ca563c3e23"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.188.0/prb_Darwin_x86_64.tar.gz"
      sha256 "86107cb3148792ccb5a8f8b4f8ebf4831fa28783672d5ea2b9e23a84cc128d11"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.188.0/prb_Linux_arm64.tar.gz"
      sha256 "4b90bd878936c443cb5cf39f70f5c9d946cb426e0432bdd32f4b1bc8e09833bb"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.188.0/prb_Linux_x86_64.tar.gz"
      sha256 "6fbc2766888408a9d3f55f85a95bff8e74ec7d99b27a6bcbc2db3409bcb035c0"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
