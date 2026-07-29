# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.206.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.206.0/prb_Darwin_arm64.tar.gz"
      sha256 "b92235b852ae2ce43181693e963f2411d14fb1aa83f744ded75d38389b380127"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.206.0/prb_Darwin_x86_64.tar.gz"
      sha256 "8e2a0baea930bdc7eac1739eedd04384fbee03a94b68512e0d94d9e204e19ef2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.206.0/prb_Linux_arm64.tar.gz"
      sha256 "6b6fae4cdf4f8422b2b3377c8bb65b6eeedee384e2c49ad362a08fb190ddfc5c"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.206.0/prb_Linux_x86_64.tar.gz"
      sha256 "1e1992261f9c904479727f10a7e2db107f157cac44a46d55b0904650bbdb5979"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
