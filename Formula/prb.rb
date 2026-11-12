# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.266.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.266.0/prb_Darwin_arm64.tar.gz"
      sha256 "99fa4f3a7efcdd2da546c674fe5252e92213c06719a1f6574f517d4bf0845dbd"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.266.0/prb_Darwin_x86_64.tar.gz"
      sha256 "80993f40191201cd4cf48a94fd4ff111dffdf045b03057cd7d45feaaf104f1e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.266.0/prb_Linux_arm64.tar.gz"
      sha256 "cec6066a3250bf9386a51bf380973aa346c5fc6201d4deb84d48c801ca9140ec"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.266.0/prb_Linux_x86_64.tar.gz"
      sha256 "c0b4e949fac188450ad1126a77c0d155a4670c3652a768b3627003393ca9f237"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
