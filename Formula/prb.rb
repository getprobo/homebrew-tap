# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.198.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.198.0/prb_Darwin_arm64.tar.gz"
      sha256 "87cb30003ce0c9aa3f73c6c8b34343a1e63a68e48008228ce02c80db5cfc2675"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.198.0/prb_Darwin_x86_64.tar.gz"
      sha256 "cfd3008e64452dd4979eb71cd98a30e32b20c9ac59bcacf7b32066cee1c93dc8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.198.0/prb_Linux_arm64.tar.gz"
      sha256 "8a169924dbb3de16d2eab0b19c0093d5e8d95b7c6fc0abff54a99f5357f5e8df"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.198.0/prb_Linux_x86_64.tar.gz"
      sha256 "dbbe0b281f0fa3d38f6e116588faf0f53056c42ffa82d153854fff61a0d4961b"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
