# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.210.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.210.0/prb_Darwin_arm64.tar.gz"
      sha256 "1f16fd1ba628236aa0d553479ea3d1098fee42d747bb37514a769314391d67d6"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.210.0/prb_Darwin_x86_64.tar.gz"
      sha256 "b3a4ff08f260b420caaa17e533019985df5ae41f4b092c4d603e91d9fd881d25"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.210.0/prb_Linux_arm64.tar.gz"
      sha256 "a9685769924eed604dee0ad1b207e066dff9fd3fd80415e1f2f30a6f9db7c2a5"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.210.0/prb_Linux_x86_64.tar.gz"
      sha256 "7391741df4c0d66d6a58bfe8a36014da6b8f89e15f54b85d1b144e7ce705d69c"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
