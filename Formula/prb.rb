# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.204.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.204.0/prb_Darwin_arm64.tar.gz"
      sha256 "8a354e88b0a7af1d49fb176b5f493433989015cbde94f20f54a3ccc05e153141"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.204.0/prb_Darwin_x86_64.tar.gz"
      sha256 "ac6d68a70f818a6749e36102f4dea4d3b840d425523aeaa4c09754cf15361662"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.204.0/prb_Linux_arm64.tar.gz"
      sha256 "660f0293cbe2e66609f9229f5857b84e0e90acfc27d0031ca5d70643cc22ec79"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.204.0/prb_Linux_x86_64.tar.gz"
      sha256 "bd8bd926bc0b337d397be08d3787de89a9487f771e6aedcce45092ba6da1d551"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
