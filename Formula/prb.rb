# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.262.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.262.0/prb_Darwin_arm64.tar.gz"
      sha256 "33dc705f29c7bc868c759083e3d56614b3d07c7ac7f835c4d82148e606c43eb7"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.262.0/prb_Darwin_x86_64.tar.gz"
      sha256 "43bf8a4669ea7513f6779ba349be6c650cc96d7d13ac7a2277ec5fe6fc1aca29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.262.0/prb_Linux_arm64.tar.gz"
      sha256 "b1b2f9b5f776cc030c7683c04223fe15fd2fbaafacd7ca28794a6980ba2efebb"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.262.0/prb_Linux_x86_64.tar.gz"
      sha256 "459a2e8e9c10efb47b04c142e084d33ceb143c2077e4333d8ab37fce00e4a202"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
