# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.183.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.183.0/prb_Darwin_arm64.tar.gz"
      sha256 "b511c912304155c4fe902726136f55455a5b17262182e71810a271702eef43af"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.183.0/prb_Darwin_x86_64.tar.gz"
      sha256 "147f576cc9ca24d2a8030017fd01f4e8b9c5fe190ff347ff687f97cf297e1bce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.183.0/prb_Linux_arm64.tar.gz"
      sha256 "34fa70c31b96e68527836f623bfefc6eb4329066d28976f29b85da25eebf4643"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.183.0/prb_Linux_x86_64.tar.gz"
      sha256 "2f585d0f6929665d32c31f6b302b22765b15cdc7db1c2c858b87b416a0d824d5"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
