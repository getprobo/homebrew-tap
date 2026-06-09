# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.192.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.192.0/prb_Darwin_arm64.tar.gz"
      sha256 "098345fd3b8ba45dfe9401ddd74ff2936fc8ed37990db5c192ee5bea6002cfe6"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.192.0/prb_Darwin_x86_64.tar.gz"
      sha256 "45d8fa2cd20485757ca54b3cd5def572bdfbd848757d4d78f3b337bc66d38515"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.192.0/prb_Linux_arm64.tar.gz"
      sha256 "3e70a9a741481cc5dde665ca822760a96c1f0bee6a3c467e004aed9f75ffd498"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.192.0/prb_Linux_x86_64.tar.gz"
      sha256 "a6c1fe0efbaabc401cc8e1ecbbf102f2c8a1f65d672e034497bed86bd8479773"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
