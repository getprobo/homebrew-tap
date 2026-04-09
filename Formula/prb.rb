# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.165.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.165.1/prb_Darwin_arm64.tar.gz"
      sha256 "11e284b5f76575d237313df2d3cc9b561bd93fb8de35e531db90b7a60c16bc4a"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.165.1/prb_Darwin_x86_64.tar.gz"
      sha256 "51b64a55e0efa41cecb377bd6fcc5a65ee8130fee83e3ffd12223c4ad95af187"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.165.1/prb_Linux_arm64.tar.gz"
      sha256 "a7018ab126cb0f778be8b1bba13b30d0a5ecd87bec9baaeccb0c497422001b35"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.165.1/prb_Linux_x86_64.tar.gz"
      sha256 "d26bf34195c85f78f7c04fa620687db6729c8eb66f93d3c8792bba733c91db5f"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
