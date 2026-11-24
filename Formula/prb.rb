# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.275.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.275.0/prb_Darwin_arm64.tar.gz"
      sha256 "aac1196a5e1be29fa7bfccce81bfed3faf9b697d06b87bc43cec7b059981ae5f"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.275.0/prb_Darwin_x86_64.tar.gz"
      sha256 "cc18c128a9c9df9d0d7e3e52b59061a96cc73cca2f59dee6fe40fbe3f566de72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.275.0/prb_Linux_arm64.tar.gz"
      sha256 "2619dc625e72e440d1e4f5ee169b1429f843f82a4a05f28243054be073183723"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.275.0/prb_Linux_x86_64.tar.gz"
      sha256 "6963a418dedfedcebbdc79dc952b89da61e08e96327b0b6f96f43b522e952c35"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
