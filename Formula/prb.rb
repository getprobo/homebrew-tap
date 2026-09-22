# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.233.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.233.0/prb_Darwin_arm64.tar.gz"
      sha256 "7ccc70c5bd36ca3ce479144dfe0fd50439ddb4c8f754e53e487cae450e09b441"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.233.0/prb_Darwin_x86_64.tar.gz"
      sha256 "3593523e039a2fc50fdc7939808e6693fa80b1966f8ee63fb54245132b5b0d34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.233.0/prb_Linux_arm64.tar.gz"
      sha256 "8a1c68c65856e074e15e3e5b79e8db28392ef7ff7849bc332672a9e6fd005632"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.233.0/prb_Linux_x86_64.tar.gz"
      sha256 "7d8d71f4bd60ec5bfcb1039bc9c92ff177d3f47f2f1124a63cda5f75ffda383a"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
