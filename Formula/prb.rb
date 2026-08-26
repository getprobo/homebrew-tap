# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.220.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.220.0/prb_Darwin_arm64.tar.gz"
      sha256 "cc39359baa3ee2122ad01c4c92acb0e99ec7659f885f74b87b8711f1142c14af"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.220.0/prb_Darwin_x86_64.tar.gz"
      sha256 "73010f249e5ff546eca45e1d8d78861d77ea0b85baacfd49a94c70686b298c5a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.220.0/prb_Linux_arm64.tar.gz"
      sha256 "7029a710d9429aae2fdfab9cb203a5fc0c8ded85093e0ddb022fa3dfe72dc3e4"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.220.0/prb_Linux_x86_64.tar.gz"
      sha256 "59e40598afa56fad2aafbbef4613260d5a69efcc8fa1b795401740f654d23d2e"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
