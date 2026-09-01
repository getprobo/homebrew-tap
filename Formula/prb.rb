# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.223.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.223.0/prb_Darwin_arm64.tar.gz"
      sha256 "35f2b4e181afe95e2795838258e73ba27a3570372faa695463a5bdd0500642e4"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.223.0/prb_Darwin_x86_64.tar.gz"
      sha256 "f1229f6d9115888bed8e9860ada8cd6f0591da662bf8be809bece6aeb6985446"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.223.0/prb_Linux_arm64.tar.gz"
      sha256 "9fc2929abf53545d6cd954b96f39766d97b146b134f516f8843d89842501b773"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.223.0/prb_Linux_x86_64.tar.gz"
      sha256 "4cf4406a3ea90c93b7a38d7a08389bc2fdd216241aca6d12b971dbf6a8fac6d0"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
