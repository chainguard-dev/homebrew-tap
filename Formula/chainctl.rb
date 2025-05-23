# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.2.81"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.2.81/chainctl_darwin_x86_64"
      sha256 "5a3d54f3d3382d5a9c7a2dbbd50b37cd4e830dac7fa198ad7d5c0e6993a5cd16"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.2.81/chainctl_darwin_arm64"
      sha256 "cfad9e48d1e003d2108b01e4bdff17092d9aae52723ad41f8da15677bb56c411"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.2.81/chainctl_linux_x86_64"
      sha256 "c2a898665a5fe3e8880e64ec51fcf60a010c02d156290a98e51fd1d532d51561"
      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.2.81/chainctl_linux_arm64"
      sha256 "611e5b4d3ea72bec60231bd429169044e55a55c630a4c1e0cf1013c2fb1a6ae1"
      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
