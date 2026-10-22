# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.256.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.256.0/prb_Darwin_arm64.tar.gz"
      sha256 "5e20e10612f434e8fefa72becf789e0e25354ac9c0daf5626bb96260d91c527a"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.256.0/prb_Darwin_x86_64.tar.gz"
      sha256 "51b35fad2daf6a28d9be1c367541898dd169352a0a46b294bac8595c6b2fd68b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.256.0/prb_Linux_arm64.tar.gz"
      sha256 "616155ac6bf0126148c7e6cedc9786426710ec3ed666f74c4fac104f4860fa15"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.256.0/prb_Linux_x86_64.tar.gz"
      sha256 "c6d7315d781f2436cd0bdda7072294c3fa8397c7701c0eb9da1b51c454675d16"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
