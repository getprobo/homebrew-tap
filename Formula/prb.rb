# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.171.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.171.0/prb_Darwin_arm64.tar.gz"
      sha256 "793aff8b62d6ab08951d809c9a1657ae533ed0e39445d28ef8d1f11efcca3329"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.171.0/prb_Darwin_x86_64.tar.gz"
      sha256 "65ef3698842d01b5ab3a0ebd68519f2ad40ef3af843f498e2d75cb7a621a3346"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.171.0/prb_Linux_arm64.tar.gz"
      sha256 "0814e1f5e8ea296dba7b3fb50bbcab749ba414d390aead06f877853734eecba5"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.171.0/prb_Linux_x86_64.tar.gz"
      sha256 "b333d6ba10aeef68f342386c77c66ecba7fa94316fa3b5cde2e2347ff1f2a0a2"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
