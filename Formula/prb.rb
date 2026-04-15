# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.168.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.168.2/prb_Darwin_arm64.tar.gz"
      sha256 "de19b4841d2837dbe358432de52d78f078fb49f924b53c1183b509bfab6d107d"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.168.2/prb_Darwin_x86_64.tar.gz"
      sha256 "22477eb62fc48d4d31e53bbbc394c98edebe7828fc438d048549a34761d8a8c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.168.2/prb_Linux_arm64.tar.gz"
      sha256 "376a53bda7e28798f2fbf30a9b9eb8c0c5c5a21c76b874afc2ce9187761bfb4c"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.168.2/prb_Linux_x86_64.tar.gz"
      sha256 "b2ff0002d351d727537f61088bcc149bbefe2a63e117af40bc8b443f2be85c07"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
