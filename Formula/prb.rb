# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.234.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.234.0/prb_Darwin_arm64.tar.gz"
      sha256 "3d6f74e60f819f1f2db628ce625dbc9d9f081cb681dc8840b16c0bb84a229f7f"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.234.0/prb_Darwin_x86_64.tar.gz"
      sha256 "cd9f6b0c081452d5036591285aceca85812fff9822d5ea30f19efc81f54a3c98"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.234.0/prb_Linux_arm64.tar.gz"
      sha256 "83233a93a8f4894c0cb85ba5a2923a13acb4139fc5e0d33dbe78c2a043fda81a"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.234.0/prb_Linux_x86_64.tar.gz"
      sha256 "8dd50de840cdff13852f313bb27ad14ef3ccf0cb768bcf330bd341e5ca843fd9"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
