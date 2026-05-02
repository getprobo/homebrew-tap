# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.179.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.179.1/prb_Darwin_arm64.tar.gz"
      sha256 "dd5ae92d352f21bfbc1c546ce7ebe731f11cfba3c88cad5af83e052cd133b20c"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.179.1/prb_Darwin_x86_64.tar.gz"
      sha256 "0e0e9f366379c58c56f2a8cd0fc0966c3aaf308dd5d14875b7e876575a1a7e41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.179.1/prb_Linux_arm64.tar.gz"
      sha256 "97da68144a89444bf068faaa37e17fe1306064739645221ed2f0bb23a6259699"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.179.1/prb_Linux_x86_64.tar.gz"
      sha256 "f433d3ce4cd1f58033ae7d3b084a908c87d4643b19e9795913be255dbeeca1bd"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
