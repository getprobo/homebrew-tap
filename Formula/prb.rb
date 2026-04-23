# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.172.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.172.1/prb_Darwin_arm64.tar.gz"
      sha256 "d81e2ccadfea7112ad13a32a3540af46d8a9cf38319fa7784ac53a37e8b65ad0"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.172.1/prb_Darwin_x86_64.tar.gz"
      sha256 "19b916c35414011b12ef4e82c30291dc980d418b1558e225c14916b1139affda"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.172.1/prb_Linux_arm64.tar.gz"
      sha256 "5b8267f299632deeda64a1fe43a335ade7e13a26db21cd091b8765eea614d33f"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.172.1/prb_Linux_x86_64.tar.gz"
      sha256 "08be39f370b74511630545a96cc93498e28a64ff3871852418a77b1f77bde59f"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
