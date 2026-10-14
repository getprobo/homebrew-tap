# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.246.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.246.0/prb_Darwin_arm64.tar.gz"
      sha256 "c90bd3a2df405b6910c0de52acf13a5fb1f51ba01e8e475fa6b36459db7f9f54"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.246.0/prb_Darwin_x86_64.tar.gz"
      sha256 "de8082edd6054bcd547a12119a8089cccac3c333b5d8c489a0023f1a3584c9eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.246.0/prb_Linux_arm64.tar.gz"
      sha256 "849179b7d30a198280bd79ec955a9aa69efd5e241e4dda7119b0cbcb3f61ee83"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.246.0/prb_Linux_x86_64.tar.gz"
      sha256 "103685dd0c5c7eb0c321d1c8c96df8537ad09c837da1dd60c45ab9454932d2d7"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
