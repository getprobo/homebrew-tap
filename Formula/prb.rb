# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.162.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.162.1/prb_Darwin_arm64.tar.gz"
      sha256 "bbf129869224f603db8e2125fe88cb79896749e1322422284cff5f5fe8c16514"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.162.1/prb_Darwin_x86_64.tar.gz"
      sha256 "f0742c3a6692c234e38ad836cf3d3a5b48bce3dd49f9f9242c73be311381e92a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.162.1/prb_Linux_arm64.tar.gz"
      sha256 "39d7ef685c5bd4cf8967bf7b486b0ffa94885195e6c508a1f3fcf45d2be5b886"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.162.1/prb_Linux_x86_64.tar.gz"
      sha256 "f888630cacec4f61d1e3fb082383087d0f630be2a3064a4d2a73e428b1d52e1b"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
