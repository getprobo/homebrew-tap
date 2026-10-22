# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.258.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.258.0/prb_Darwin_arm64.tar.gz"
      sha256 "601222b3e1634941c40eea60d865fbc923b4264b3f10bc74739f7ad22fc07aaf"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.258.0/prb_Darwin_x86_64.tar.gz"
      sha256 "c1b2d2f7276b515178376b49c5613b99643a6e09aae25266fe2be7e6b2c868b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.258.0/prb_Linux_arm64.tar.gz"
      sha256 "5b913819cff1a44a7189e0cd630b2fe4c3e76a92b043f2f7f8da74276265be53"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.258.0/prb_Linux_x86_64.tar.gz"
      sha256 "c213368d89e836d5f54c3c618d76fe755e72eb0c7a67034d7fbf5586bf8376e0"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
