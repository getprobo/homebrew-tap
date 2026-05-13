# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.186.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.186.0/prb_Darwin_arm64.tar.gz"
      sha256 "91635dafc5f8ad86feb85b6ff8a5b2a1e3c33ca5703fbae949841e937e06c128"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.186.0/prb_Darwin_x86_64.tar.gz"
      sha256 "a24eb98d5114eb3da136cf9897d8fd3cfabdc733590205e5ebb59651812988a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.186.0/prb_Linux_arm64.tar.gz"
      sha256 "35fdabdefb1e7a4e556cc07497a168e731ae8e17537a789be1c6f98850434b27"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.186.0/prb_Linux_x86_64.tar.gz"
      sha256 "019aa5566e43c086c8671564fcd60a92f05f2cbcf7926fa7501768d647cb6c34"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
