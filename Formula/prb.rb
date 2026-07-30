# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.207.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.207.0/prb_Darwin_arm64.tar.gz"
      sha256 "e1e384769a8de92c15df1f037ed388da88d88e249f5e1c46c54efe7d82f7277a"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.207.0/prb_Darwin_x86_64.tar.gz"
      sha256 "a23c5f729e0b9e83e2c2b7849e35a7a643e6a826d2462705d84cc5b8cb9314a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.207.0/prb_Linux_arm64.tar.gz"
      sha256 "18b69275e0d592c3a9f3d84a61bf55df4b50a9bb65c8cbd7c066e411b1712d2b"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.207.0/prb_Linux_x86_64.tar.gz"
      sha256 "328b2da893a6497ca4c6e3d0beab24dab48ba5f52354257c8f11dd18f081f8ef"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
