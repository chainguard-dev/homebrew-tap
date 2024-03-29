# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Melange < Formula
  desc "Build apk packages using declarative pipelines"
  homepage "https://github.com/chainguard-dev/melange"
  version "0.6.10"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chainguard-dev/melange/releases/download/v0.6.10/melange_0.6.10_darwin_amd64.tar.gz"
      sha256 "52c1d9f7ec3467fb4321d86a639e367ed4232e558e8837c9a95b9afdd9a4e09c"

      def install
        bin.install "melange" => "melange"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chainguard-dev/melange/releases/download/v0.6.10/melange_0.6.10_darwin_arm64.tar.gz"
      sha256 "95530dd3f1920655ab87379d47c5414d5426eeb5296a43763c45aa7ffb8d7c76"

      def install
        bin.install "melange" => "melange"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chainguard-dev/melange/releases/download/v0.6.10/melange_0.6.10_linux_arm64.tar.gz"
      sha256 "aa2bc0d6c3335e2476c4a0a7c72485559955fa31e2cf3b75d92cd244140656e6"

      def install
        bin.install "melange" => "melange"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chainguard-dev/melange/releases/download/v0.6.10/melange_0.6.10_linux_amd64.tar.gz"
      sha256 "dba0b0d36248b1cb8cd5065ec9ddcbfc46736bd9d5bb07b0d8b3c1c742861002"

      def install
        bin.install "melange" => "melange"
      end
    end
  end

  test do
    system "#{bin}/melange", "version"
  end
end
