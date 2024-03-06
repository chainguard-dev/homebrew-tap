# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.247"

  on_macos do
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.247/chainctl_darwin_arm64"
      sha256 "9fd128dff652d5878e32bd227528163da11d83dc2c93508d13fd875ebb29b2bd"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.247/chainctl_darwin_x86_64"
      sha256 "4e1d11259b6e347b0a0b24e96e71bfab056ca25f6251913a9704fa67efcb76ca"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.247/chainctl_linux_x86_64"
      sha256 "54b4d354b9595fb934701e5f5e288d79b2cb630a117f3bcaa62ba92279e7d0aa"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.247/chainctl_linux_arm64"
      sha256 "a65953ee0ada93076f4f9f71b12bf8d3fec42791be09b104fa5af0202155b5ec"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
