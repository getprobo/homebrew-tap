# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.169.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.169.1/prb_Darwin_arm64.tar.gz"
      sha256 "77dc7e6ca1f0cfaf6286c53d54c72de8b5758c3515efabfc316f7c8e142a8bb6"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.169.1/prb_Darwin_x86_64.tar.gz"
      sha256 "69e2bf584218c82aed2fb1084e53360c5a86e94e499c6f05d667eedeb8bc8044"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.169.1/prb_Linux_arm64.tar.gz"
      sha256 "9b6e71c526097988d55011c2bc9a235ea711f3a0726ce4eb978d6119debeef39"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.169.1/prb_Linux_x86_64.tar.gz"
      sha256 "7e88bb16aa257e2ae4dea29c9a226496afc09cb5a344f0efbbb9120a50c2eebe"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
