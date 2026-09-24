# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.235.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.235.0/prb_Darwin_arm64.tar.gz"
      sha256 "d1113b0a048bf0bc41cbfe9409e909ea0518d0d8396d358253930f14119bf9ac"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.235.0/prb_Darwin_x86_64.tar.gz"
      sha256 "61341d4f9820e94147df1b57653d6c12fe946cf1536ad86931e50c7a34fe3810"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.235.0/prb_Linux_arm64.tar.gz"
      sha256 "5c100fd2979b8c9261195bd1af0e5f497089ea34340e06a829c7dc4c6d6909d4"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.235.0/prb_Linux_x86_64.tar.gz"
      sha256 "f7091775e985f8411493579e94156cd0b7aef48081095e85145d3c35ea277704"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
