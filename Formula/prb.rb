# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.163.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.163.2/prb_Darwin_arm64.tar.gz"
      sha256 "e04aa0df5108635396413a14ca61691b048cd4802d615801cfefe10614ba5673"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.163.2/prb_Darwin_x86_64.tar.gz"
      sha256 "a8f9c4ebfb098cff6acc3dcac3de60803bf475d56ec9f237427381065c261758"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/v0.163.2/prb_Linux_arm64.tar.gz"
      sha256 "33be77b79e2e8668b51ad14df2e972153a7dd30b6445c5f803071be19f796f2c"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/v0.163.2/prb_Linux_x86_64.tar.gz"
      sha256 "c67758ff625f3699b8a26c7252a3fd8db5a3da49593137d7863d80d41d322fa9"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
