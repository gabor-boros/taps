# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Minutes < Formula
  desc "Sync worklogs between time trackers, invoicing, and bookkeeping software"
  homepage "https://github.com/gabor-boros/minutes"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gabor-boros/minutes/releases/download/v0.3.2/minutes_0.3.2_Darwin_arm64.tar.gz"
      sha256 "5974879a7822846f48441a9a04d5f55e6143688c497e37041334aaaa03943491"

      def install
        bin.install "minutes"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gabor-boros/minutes/releases/download/v0.3.2/minutes_0.3.2_Darwin_x86_64.tar.gz"
      sha256 "aef43faa3c9336bd42c18e5ef9c687ff8bcb635f2a11041e0ec7180d7bc0c2bc"

      def install
        bin.install "minutes"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gabor-boros/minutes/releases/download/v0.3.2/minutes_0.3.2_Linux_arm64.tar.gz"
      sha256 "79f20bbb09a0487436883c1653402f9aefbe5992e9fb7ec5ee9e8a2291c55370"

      def install
        bin.install "minutes"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gabor-boros/minutes/releases/download/v0.3.2/minutes_0.3.2_Linux_x86_64.tar.gz"
      sha256 "3337c5c430f81093e4e7f43bb33385af7dd095acf99fb41d341a935b0b95eddb"

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
