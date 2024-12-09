# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Melange < Formula
  desc "Build apk packages using declarative pipelines"
  homepage "https://github.com/chainguard-dev/melange"
  version "0.17.7"

  on_macos do
    on_intel do
      url "https://github.com/chainguard-dev/melange/releases/download/v0.17.7/melange_0.17.7_darwin_amd64.tar.gz"
      sha256 "fd132d9f60a637033c5cde42c835bb28a09fe5e8c000464d0c7a0974b2208489"

      def install
        bin.install "melange" => "melange"
      end
    end
    on_arm do
      url "https://github.com/chainguard-dev/melange/releases/download/v0.17.7/melange_0.17.7_darwin_arm64.tar.gz"
      sha256 "6802d30abe426131225a643b3be4a9dfcfabfa79d1398d2d08db36c67b2271ce"

      def install
        bin.install "melange" => "melange"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chainguard-dev/melange/releases/download/v0.17.7/melange_0.17.7_linux_amd64.tar.gz"
        sha256 "31facfa1e3eb7fd5876a9ac742916d68d22511deae8db6c702f3d4eb18e26691"

        def install
          bin.install "melange" => "melange"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chainguard-dev/melange/releases/download/v0.17.7/melange_0.17.7_linux_arm64.tar.gz"
        sha256 "42d6469a99910ea6763470a40a75f8f99a7fbc5e401a23463be3a7766d68fa90"

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
