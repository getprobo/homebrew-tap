# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.269.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.269.0/prb_Darwin_arm64.tar.gz"
      sha256 "b6e61ab8b6abce662ae159921daf0066fd82dca8d7b657e5ec5ad82f3a087702"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.269.0/prb_Darwin_x86_64.tar.gz"
      sha256 "81a07850b380aad2f9cc702f3856e82fec8fa85b96a1e102981cfad1bd1f09f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.269.0/prb_Linux_arm64.tar.gz"
      sha256 "a816660611954ee1d9e79f5aba798a2140757b0815c03fab1d58c740b98b9f8c"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.269.0/prb_Linux_x86_64.tar.gz"
      sha256 "fd88e679f68b921b9a70d9ce81da6dd8cba1c82ebad24d5e1bd7c9553c05ce27"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
