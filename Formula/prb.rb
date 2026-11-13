# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.267.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.267.0/prb_Darwin_arm64.tar.gz"
      sha256 "6e1f68618ae07db682012cfbfc739f5933e9b264240ffcf8d55630b2d7209b2e"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.267.0/prb_Darwin_x86_64.tar.gz"
      sha256 "d4e8d82c4ba71ff75b6f5be3222bc1bdfae3f7e81ad44855dcc55280cf328412"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.267.0/prb_Linux_arm64.tar.gz"
      sha256 "8b49bb48dae082fa18005519205385c78d7c60a345d888a54fc39df1ab0a5cea"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.267.0/prb_Linux_x86_64.tar.gz"
      sha256 "b88c1f273d020edfdb99f7adb7d8a911b3cb90396c0e278c22f59312f5fa1212"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
