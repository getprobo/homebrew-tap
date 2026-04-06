# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.162.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.162.0/prb_Darwin_arm64.tar.gz"
      sha256 "53c4a8386be0f61977cd11a7a05384f1b826c7a945ab41bff3f89cfae27a70db"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.162.0/prb_Darwin_x86_64.tar.gz"
      sha256 "bbf9c2c152ecb30784365f91331c73f1ffae65ba075599ae04d48c672fd6f48a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.162.0/prb_Linux_arm64.tar.gz"
      sha256 "6e418c3a98b8f2a285910fb7f0e62f378d03c5e9de742f622a4c63c0b15f8530"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.162.0/prb_Linux_x86_64.tar.gz"
      sha256 "fcad6049aa3d4582deee5014180990811dd13826f6fa7325022d59a3f63af339"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
