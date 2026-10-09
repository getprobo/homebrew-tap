# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.243.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.243.0/prb_Darwin_arm64.tar.gz"
      sha256 "e18a063d731ee551805dd8d6231a0db4900dba891bc4f2c0c54eb63048be6f81"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.243.0/prb_Darwin_x86_64.tar.gz"
      sha256 "0ac9ee09dabf4ed9ee1fff402cb91dd69a3cf6266b7542d586a59fbc0595a3a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.243.0/prb_Linux_arm64.tar.gz"
      sha256 "eaa7180b7516fc328dd0f88c85f3b9b0bca384050f997d7ad77b6787f4b9d98b"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.243.0/prb_Linux_x86_64.tar.gz"
      sha256 "e9c84bfbdca99708de8af85aee54f41e1c30c52b518e1c3219ef6a3b4a86595d"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
