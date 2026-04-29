# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.176.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.176.0/prb_Darwin_arm64.tar.gz"
      sha256 "2b762787dbad1348de01bab12cefc409282638531fea653c281f2ba0c76a0bb1"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.176.0/prb_Darwin_x86_64.tar.gz"
      sha256 "e744fb5d61cbd00787842c1275307984eb35dae45c32e095e934219d4869a3f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.176.0/prb_Linux_arm64.tar.gz"
      sha256 "a55a6dd2ce7aa72c46c78d777cb71e098af7fdbcb3def89e6b30c50d79acdef8"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.176.0/prb_Linux_x86_64.tar.gz"
      sha256 "2dd5d8b483929728d0b55371190ef24b762b292899df4cc2e5cf95a836a0adef"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
