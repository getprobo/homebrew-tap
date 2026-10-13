# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.245.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.245.0/prb_Darwin_arm64.tar.gz"
      sha256 "78c32ca03da8f35cd35affc3b854f39fea78fcb60a44f93a288d0f108041ccf6"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.245.0/prb_Darwin_x86_64.tar.gz"
      sha256 "6a2d84c57649305306329f4c555876d601cb7d3ff6d9d0ffcf6bfc665fbb4f4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.245.0/prb_Linux_arm64.tar.gz"
      sha256 "f630b970cc181dfdca6dfdbca1e438710c4b297198ffe5589b329f3a82071781"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.245.0/prb_Linux_x86_64.tar.gz"
      sha256 "83b06a4eb58a6de8adb54a949efebed31ca63ebad0ef95052c6ca374183f5674"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
