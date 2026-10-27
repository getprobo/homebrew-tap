# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.259.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.259.0/prb_Darwin_arm64.tar.gz"
      sha256 "d80d0b2add4654b25ede5d321203dd877139b1273cb231474ef200989561c6f2"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.259.0/prb_Darwin_x86_64.tar.gz"
      sha256 "db40064036591f5bce9419a512b960a989f4c0a1726d1723d9f1be475269f490"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.259.0/prb_Linux_arm64.tar.gz"
      sha256 "9f804c3b94b88df288c0fdcc34fae6f033b42994ae8797f0fd56b7661d969d90"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.259.0/prb_Linux_x86_64.tar.gz"
      sha256 "b4c0a2d0403fff15d9f0b29515c084d0ed5fe35da38665b0c62df8b4568b39c0"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
