# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.227.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.227.0/prb_Darwin_arm64.tar.gz"
      sha256 "980d02776a6b87f6a806df8845e1eaf5cfa5d6c62ea4cce520fdc03d381b3972"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.227.0/prb_Darwin_x86_64.tar.gz"
      sha256 "8cd3b228467c4dcf96cdba8b0d7461832b06a405059420528898e0502644cb3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.227.0/prb_Linux_arm64.tar.gz"
      sha256 "14dd9dc413d185c7efbf47f5812892402ed8d9c9d170ae403a34ab96a4520733"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.227.0/prb_Linux_x86_64.tar.gz"
      sha256 "ec74452719614a7a2f3fc0a895caf0f91b8e34aa08e5e06b84c1eed80a69018d"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
