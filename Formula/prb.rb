# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.177.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.177.1/prb_Darwin_arm64.tar.gz"
      sha256 "695be6a8a17f4946573d6917a600a959e515ae87a194c06da082580218a70ef8"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.177.1/prb_Darwin_x86_64.tar.gz"
      sha256 "db08bd14bb9295743b3bdb2ca3c4c7d19b1d6bccf356f567c625ca5e02cba882"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.177.1/prb_Linux_arm64.tar.gz"
      sha256 "135291f70e0af4a0e0a7242f2970ac79f54ff487c6775418b43432890c9a3cd0"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.177.1/prb_Linux_x86_64.tar.gz"
      sha256 "14be0f0001fa368dd6ab48e4f1dfad31b3a7fe9b055c5a2ca5affeba883cf49c"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
