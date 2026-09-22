# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.232.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.232.0/prb_Darwin_arm64.tar.gz"
      sha256 "1a4a6047e699022d91743c6783de74c8ec74d5526d8327d9429ee082eb5cd801"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.232.0/prb_Darwin_x86_64.tar.gz"
      sha256 "b62269e60896a833e564bdc8f673f0c3a6dbbf3670c128d85072c5d1bee1c1c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.232.0/prb_Linux_arm64.tar.gz"
      sha256 "c8fc2f4fda6d2fe10322fd1391ad94d29c11ee4baf8c1517bb580f8525aade82"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.232.0/prb_Linux_x86_64.tar.gz"
      sha256 "446927dd7abb194d284a1d1aadd4b4b01753cc3e21d6c8caa450376d6b499fe8"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
