# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.155"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.155/chainctl_darwin_x86_64"
      sha256 "34fefe565c64c16156961a2fe7a185f7ed5ab120c84de1f0ddcc396954e6d7e3"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.155/chainctl_darwin_arm64"
      sha256 "816a087d8fee4e00fae20609eeac2c30454b9589f95aa32f7147d8ec6e050f20"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.155/chainctl_linux_x86_64"
      sha256 "3d933a2114ce962599501c83ea2b1d888f1efb58698e580938117e8f050e0a9b"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.155/chainctl_linux_arm64"
      sha256 "8e44fe793e4b2f6550ab5a5179be05d592dcff30ccf5133d199fde25946fcd4b"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
