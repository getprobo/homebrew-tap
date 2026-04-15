# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.168.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.168.1/prb_Darwin_arm64.tar.gz"
      sha256 "6d7fafa4ec82bb57787e1f3933c7e2364f94e6e6a06ba36c3799a8d2b6264726"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.168.1/prb_Darwin_x86_64.tar.gz"
      sha256 "9ccbc8ed74466cf71fecd95da1dc78a9e69a93dfff7854d650363b848d176b4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.168.1/prb_Linux_arm64.tar.gz"
      sha256 "f1ede307d37e1608abf6eae9eb84f8ade37fc4aeeb5e198ddf586d7807bd4d3b"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.168.1/prb_Linux_x86_64.tar.gz"
      sha256 "7170fc99f202d00c041923ddae4bb4a9da1b51504bca8ab8d8f3fb97a43e15b6"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
