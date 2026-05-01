# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.178.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.178.0/prb_Darwin_arm64.tar.gz"
      sha256 "227af8330d214746199ad6bf6044512720a0afcbb31ec4a294855a63152bfc07"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.178.0/prb_Darwin_x86_64.tar.gz"
      sha256 "e69a7a4dd2b1703f8294a94064d7ccfe3b021d66c131cce09870a514306c4f0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.178.0/prb_Linux_arm64.tar.gz"
      sha256 "6940cfa579001e1e7dfdd5b96813d949054e796f04e8387fa26929c345b0277f"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.178.0/prb_Linux_x86_64.tar.gz"
      sha256 "6bf7609c592445988a5c7633acffc4923efc8c6bbf69209c124c27d6ad477433"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
