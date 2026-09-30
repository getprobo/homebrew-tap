# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.238.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.238.0/prb_Darwin_arm64.tar.gz"
      sha256 "772354745abc8723df1ac553b8606140d05dd8946d7d1ba761673ac037fb3cbd"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.238.0/prb_Darwin_x86_64.tar.gz"
      sha256 "10d94720a7a3354721250326bbea25bfcdcdcb0cc17a9a70e083bc37343945e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.238.0/prb_Linux_arm64.tar.gz"
      sha256 "999efd5106e74aebb6404e82466991f1df0c4cf4d796c68d7ad22658ae556dbe"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.238.0/prb_Linux_x86_64.tar.gz"
      sha256 "76ccf83aee1f5074b93e26fd6f380257923e28e02f10ac926d09c76caed37134"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
