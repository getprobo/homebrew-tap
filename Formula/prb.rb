# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.226.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.226.0/prb_Darwin_arm64.tar.gz"
      sha256 "e3bdd1ace58d536096c93194022832b22ce3a19c16dc8430fbc33ece0e7bc103"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.226.0/prb_Darwin_x86_64.tar.gz"
      sha256 "a8c3cb04755e24a01488d623ceceb09ac7a9c835d4484042a2744f19364938ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.226.0/prb_Linux_arm64.tar.gz"
      sha256 "95f2ff886da8751e42a93c40863792653646801d77040fc72a1460bcd26cffca"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.226.0/prb_Linux_x86_64.tar.gz"
      sha256 "6369a99c893bd359e8fa2daed643550664d7726d0df228d4c6f04c9083b69f0f"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
