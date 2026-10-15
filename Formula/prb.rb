# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.248.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.248.0/prb_Darwin_arm64.tar.gz"
      sha256 "a5bb77ce30b6ade4629ad4d1aea7a0804cd1389b4b79ce1bc312d7ce9b94666e"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.248.0/prb_Darwin_x86_64.tar.gz"
      sha256 "d674fe34aa4e143f5c70170dd00ca20cbc2556d6a78d92219516eab0d6928b71"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.248.0/prb_Linux_arm64.tar.gz"
      sha256 "693674c6c4da61c980c4c70801c73b52a6faf826598acbb71dc5d328460cae37"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.248.0/prb_Linux_x86_64.tar.gz"
      sha256 "52342cc3fc28da041ef65daec39a9859d17b42bcc6b1b8442d7c9b6bc379b9ac"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
