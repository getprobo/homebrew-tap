# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.169.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.169.0/prb_Darwin_arm64.tar.gz"
      sha256 "9c9b8bfb37675708b4ce24084fe8251b83456544804185458d9117d5d3bbfadf"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.169.0/prb_Darwin_x86_64.tar.gz"
      sha256 "2aecfb31807452e7e1175229fa1a4e6a3b98edb029092f2ce158e4183dde2b9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.169.0/prb_Linux_arm64.tar.gz"
      sha256 "533a7ba7fea8e7f9936a20a766541e6463eb50ee963cd60652feefcc4787e8d5"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.169.0/prb_Linux_x86_64.tar.gz"
      sha256 "6e396969acdd7a4faf6439d5c4dc040f7d6740599ebbc9868434f39540a18bd1"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
