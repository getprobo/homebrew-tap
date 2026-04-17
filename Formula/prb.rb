# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.170.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.170.0/prb_Darwin_arm64.tar.gz"
      sha256 "349235ab926901b153ca516b420b4cef7f2508bdc0319ba0fd197166fa6d8904"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.170.0/prb_Darwin_x86_64.tar.gz"
      sha256 "6e0d7407f3525652e4f5e1c74509e4dbc604de01de836df22f4e852034c3a234"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.170.0/prb_Linux_arm64.tar.gz"
      sha256 "1def122054f3d1e88c759abf4cc09ef110496e989b56d27ee93bb6082132b9d8"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.170.0/prb_Linux_x86_64.tar.gz"
      sha256 "15ec9b151ee68259b88a1c129eb456af8c07985dc95fa58717a6d338d2b10b76"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
