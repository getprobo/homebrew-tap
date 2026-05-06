# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.182.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.182.0/prb_Darwin_arm64.tar.gz"
      sha256 "a23d7bf63c2e1a57bf432e0840c4226c1fb8ac3af2ea67e3b67bc0c3d5db6a10"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.182.0/prb_Darwin_x86_64.tar.gz"
      sha256 "4ce697f098322fe5669c376540a0762db5bf8dd47b4dcf7ea368adebd42c654f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.182.0/prb_Linux_arm64.tar.gz"
      sha256 "ee4b5e50246d8b4c152c2cf3c06a817983c40be33d9966abfe626442e1794302"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.182.0/prb_Linux_x86_64.tar.gz"
      sha256 "95d6a3932021c008cfbbb96ca8f4393af75baaabd666ebd0c34f408fc9e2cc2d"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
