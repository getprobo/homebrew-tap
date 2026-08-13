# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.216.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.216.0/prb_Darwin_arm64.tar.gz"
      sha256 "b0f1127eee56d9ce46f510ce302b3135bb492979e21d53b8db87f99db5c9a3bd"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.216.0/prb_Darwin_x86_64.tar.gz"
      sha256 "4e6860a1a33413b3e965c6805f48e43af6a37139f0b5c15046a72e0f36899995"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.216.0/prb_Linux_arm64.tar.gz"
      sha256 "2e5a7a6fbbaecce7b6fe0ae66484f7dd849e12381dcdb1fd2b41c3a52bc656f6"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.216.0/prb_Linux_x86_64.tar.gz"
      sha256 "6bda35fe431b17a5a7c32717d5aded5aa9494748a61f15360f6fd5ad59a3123e"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
