# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.181.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.181.0/prb_Darwin_arm64.tar.gz"
      sha256 "1674f301fc645363a82e53f2967d886b17d0405776c13f359248fabe46eff47a"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.181.0/prb_Darwin_x86_64.tar.gz"
      sha256 "a5a10b33fd421deca8656646a2392c9220da4549f210dd62d7241bb80e07f53a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.181.0/prb_Linux_arm64.tar.gz"
      sha256 "2f9986e03095310111418a93c000d79f295c5b20b3ad4261ee8e86ace5eb4664"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.181.0/prb_Linux_x86_64.tar.gz"
      sha256 "66d9dcd9a0f22966b26f16747757c32932273fba532f899eb7d03639620ecda3"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
