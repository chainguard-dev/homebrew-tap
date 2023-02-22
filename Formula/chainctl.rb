# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.77"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.77/chainctl_darwin_x86_64"
      sha256 "29a123186796edeeb44b399a982036800033291bf5b3d88a432f63e443ffc475"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.77/chainctl_darwin_arm64"
      sha256 "6b2ba65e44b404214a077db579c890213a887319f9e31daeaa7c306f998c866f"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.77/chainctl_linux_arm64"
      sha256 "929dff56691ff129b92962ad8c564637ebf44f3b2607ed8a68b346f3b1e11ff0"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.77/chainctl_linux_x86_64"
      sha256 "35122530954bcdc81f44e56cdf3bc299d4c1aa25ad3d230a092cfdf34204121a"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
