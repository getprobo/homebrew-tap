# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.214.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.214.0/prb_Darwin_arm64.tar.gz"
      sha256 "d563d9cf8039d451bf0ebbc9473abbdddc740d6034280899e776d8d745a0e4b9"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.214.0/prb_Darwin_x86_64.tar.gz"
      sha256 "710e5d1f1094fc80e12545cce62c3e8494bc75455fa3cc593ba3a313c7d17203"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.214.0/prb_Linux_arm64.tar.gz"
      sha256 "82d56f0f149a94230879b80948d07ded8c89b6b7fbdff34ef3c2dd87a8703662"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.214.0/prb_Linux_x86_64.tar.gz"
      sha256 "a6e949b26f6457557512421e16a3712aa3900bcef7ce86d2e6cc0f44da3e5d36"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
