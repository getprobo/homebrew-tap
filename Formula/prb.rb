# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.197.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.197.1/prb_Darwin_arm64.tar.gz"
      sha256 "c64a3d6a5dfd6d3b683ccf0603eca1aad6857e1fe31e3d82f8591ed14440441a"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.197.1/prb_Darwin_x86_64.tar.gz"
      sha256 "158b0d297400890b2c43876e11a0f43b6efcaedb7bec6e52899c4fb0add8c6f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.197.1/prb_Linux_arm64.tar.gz"
      sha256 "538f7b10cfe73f24cdc8c9dbc4ccd72c19d5c4a33be80458208f28d444ff1338"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.197.1/prb_Linux_x86_64.tar.gz"
      sha256 "72fe43530d287b655bc0c6110c62af09a5e37ef4a464e3aa5af33b100349644b"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
