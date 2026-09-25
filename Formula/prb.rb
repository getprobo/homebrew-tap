# typed: false
# frozen_string_literal: true

class Prb < Formula
  desc "Probo CLI"
  homepage "https://github.com/getprobo/probo"
  version "0.236.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.236.0/prb_Darwin_arm64.tar.gz"
      sha256 "356877722eb3da38a8537492c6cfe88eca354b482c0030e25daf4ed93bfc0ca0"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.236.0/prb_Darwin_x86_64.tar.gz"
      sha256 "881739a6aa0ab2f3f46219f4110d2487d3604bb09703906fa1f96d4cfcc7e5fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.236.0/prb_Linux_arm64.tar.gz"
      sha256 "016278a2d3e7610a09df75789a089d008f4de2cfb09023d8783aa218ccb14595"
    end
    on_intel do
      url "https://github.com/getprobo/probo/releases/download/prb/v0.236.0/prb_Linux_x86_64.tar.gz"
      sha256 "f59ee15d3f41d852122066ee3edfc8d160bf89c68811f1fdf35ec6ddbfa36341"
    end
  end

  def install
    bin.install "prb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prb --version")
  end
end
