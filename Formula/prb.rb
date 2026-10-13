# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.245.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.245.0/prb_Darwin_arm64.tar.gz"
      sha256 "a5753e5f4789c21a64c0e8d894c46f4148c584f9c737fa3ae1aa3746ec76cfef"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.245.0/prb_Darwin_x86_64.tar.gz"
      sha256 "212121db876d160265a0ce7bdb8bee2e0fea70d6acc77fe4a31052ebce2c0759"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.245.0/prb_Linux_arm64.tar.gz"
      sha256 "0e0772f9917084067b8faabe5126dc33ad50edcb205cc25d0e63dab37bd3dad6"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.245.0/prb_Linux_x86_64.tar.gz"
      sha256 "8450a76abee928b40fd742c8548f6a972a32084769a9317786ae8b2eb96120d2"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
