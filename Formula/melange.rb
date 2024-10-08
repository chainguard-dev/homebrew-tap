# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Melange < Formula
  desc "Build apk packages using declarative pipelines"
  homepage "https://github.com/chainguard-dev/melange"
  version "0.13.4"

  on_macos do
    on_intel do
      url "https://github.com/chainguard-dev/melange/releases/download/v0.13.4/melange_0.13.4_darwin_amd64.tar.gz"
      sha256 "feac817321e4dd7215212af5c63128b578f4c1e943268d2d86db134484cb3693"

      def install
        bin.install "melange" => "melange"
      end
    end
    on_arm do
      url "https://github.com/chainguard-dev/melange/releases/download/v0.13.4/melange_0.13.4_darwin_arm64.tar.gz"
      sha256 "0bba32a0f25d231a65595ea2f191893a10a7470875c93c38d3c1c9294a581a36"

      def install
        bin.install "melange" => "melange"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chainguard-dev/melange/releases/download/v0.13.4/melange_0.13.4_linux_amd64.tar.gz"
        sha256 "1e40c1481cf285fb674a8243a5e7ded6c63b92d4ec907b013cb15b1a1a2f9288"

        def install
          bin.install "melange" => "melange"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chainguard-dev/melange/releases/download/v0.13.4/melange_0.13.4_linux_arm64.tar.gz"
        sha256 "21d293da104199133037f4b8ff41d7490b3dd9f4575fe5e3090f386ad5d9c187"

        def install
          bin.install "melange" => "melange"
        end
      end
    end
  end

  test do
    system "#{bin}/melange", "version"
  end
end
