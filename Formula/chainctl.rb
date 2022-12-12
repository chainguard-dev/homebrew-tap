# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.40"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.40/chainctl_darwin_amd64"
      sha256 "03455b9a24721d124a97d238d73b6bc834d9ae58fec85c0351cc3abb2f05127e"

      def install
        bin.install "chainctl_darwin_amd64" => "chainctl_darwin_amd64"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.40/chainctl_darwin_arm64"
      sha256 "2c6d937a7f65a47c0abef67be37fb0b2a168bb074e45e51ce266bf39e5407e51"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl_darwin_arm64"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.40/chainctl_linux_amd64"
      sha256 "c6ae1f68e620d79b7b1838f23a9ed11bc8c8b4b5c0bd2d3da4512964c75eb435"

      def install
        bin.install "chainctl_linux_amd64" => "chainctl_linux_amd64"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.40/chainctl_linux_arm64"
      sha256 "eba2f38ef85a32e25654adf383542f83c9e3855de34fddcdc40694eb56bb6d68"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl_linux_arm64"
      end
    end
  end
end
