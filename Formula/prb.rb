# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.171.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.171.1/prb_Darwin_arm64.tar.gz"
      sha256 "dd007066cfb2b067d8646685a4f48ea9cac463ba858f458a90ab703c3fd34f45"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.171.1/prb_Darwin_x86_64.tar.gz"
      sha256 "10f186fe53b91a86ff2fdd4f8951200954be785a921c4aa9b7c070f7acb12bea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.171.1/prb_Linux_arm64.tar.gz"
      sha256 "090e93e930c88bbc3d396fd40343f683e7de7f40031b086332ee86775c484c3c"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.171.1/prb_Linux_x86_64.tar.gz"
      sha256 "8fe4593de4dd5b0deb514325d2f5ef68a34821777942243ab5271250dc1cfc83"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
