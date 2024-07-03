# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Melange < Formula
  desc "Build apk packages using declarative pipelines"
  homepage "https://github.com/chainguard-dev/melange"
  version "0.10.1"

  on_macos do
    on_intel do
      url "https://github.com/chainguard-dev/melange/releases/download/v0.10.1/melange_0.10.1_darwin_amd64.tar.gz"
      sha256 "08356c879efee8478e999004228b1e5d3305020082c785c6ad7078e62b2a9d07"

      def install
        bin.install "melange" => "melange"
      end
    end
    on_arm do
      url "https://github.com/chainguard-dev/melange/releases/download/v0.10.1/melange_0.10.1_darwin_arm64.tar.gz"
      sha256 "7801680951845262a6a38fe5f4c5ab92c45409bfce71f9652e49ae857d2392fc"

      def install
        bin.install "melange" => "melange"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chainguard-dev/melange/releases/download/v0.10.1/melange_0.10.1_linux_amd64.tar.gz"
        sha256 "62b322f2154664983a835eea54639342b91090cc1c092ddf32d81db19c402bd4"

        def install
          bin.install "melange" => "melange"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chainguard-dev/melange/releases/download/v0.10.1/melange_0.10.1_linux_arm64.tar.gz"
        sha256 "31c0338a1a964512fa2c7ec55882e6bd398ceb3002a5ec07fbe91955c587d2b5"

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
