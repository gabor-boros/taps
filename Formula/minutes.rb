# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Minutes < Formula
  desc "Sync worklogs between time trackers, invoicing, and bookkeeping software"
  homepage "https://github.com/gabor-boros/minutes"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gabor-boros/minutes/releases/download/v0.2.3/minutes_0.2.3_Darwin_arm64.tar.gz"
      sha256 "c1526ce2a371f106faefd7a28cd6247a80f3477f4439dae1680d806133b4ea4c"

      def install
        bin.install "minutes"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gabor-boros/minutes/releases/download/v0.2.3/minutes_0.2.3_Darwin_x86_64.tar.gz"
      sha256 "0d6e45a920a2120a70d0641e1c881fcf8ee889390612c671aaf3720f2ce24f7e"

      def install
        bin.install "minutes"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gabor-boros/minutes/releases/download/v0.2.3/minutes_0.2.3_Linux_arm64.tar.gz"
      sha256 "007c5d1a85268661d1334dce0486284150afe35d597da93e35820fa780edf267"

      def install
        bin.install "minutes"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gabor-boros/minutes/releases/download/v0.2.3/minutes_0.2.3_Linux_x86_64.tar.gz"
      sha256 "d1fcdf2bf52e0c3dff11ff569bb12c259c62f2e7a631145c4a261755a266855a"

      def install
        bin.install "minutes"
      end
    end
  end

  head "https://github.com/gabor-boros/minutes", branch: "main"

  livecheck do
    url "https://github.com/gabor-boros/minutes/releases"
    regex(/^v(\d+(?:\.\d+)+)$/i)
  end

  depends_on "go" => :build
end