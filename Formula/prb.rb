# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.244.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.244.0/prb_Darwin_arm64.tar.gz"
      sha256 "6dbce8abdc255a7dd4b397be857e09a289896c68841efbbdcd7eece953c5b403"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.244.0/prb_Darwin_x86_64.tar.gz"
      sha256 "ee90455a4a92dfe6addb0fb4a4358f655b4fa96fb16bfcb6ee7b8357b25db219"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.244.0/prb_Linux_arm64.tar.gz"
      sha256 "5b29a5c216463dbc0abc84e9bff8d02529af1179907b02fef5d99ce30fb47147"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.244.0/prb_Linux_x86_64.tar.gz"
      sha256 "26f91665c3cfdd76c7f84959c8a683b587996c2767a2cac08274cb2f08e6afe9"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
