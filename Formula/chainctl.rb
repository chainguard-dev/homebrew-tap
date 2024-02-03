# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.222"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.222/chainctl_darwin_x86_64"
      sha256 "4ff9869df7941a02b56d2e12b4d3c3932cd7a39fd4360fc6be08104631050497"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.222/chainctl_darwin_arm64"
      sha256 "94e7f30dc49fcf7a2d585506d22a683ba7c5427ebe8832ad33ebf3dc23413902"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.222/chainctl_linux_x86_64"
      sha256 "2c58ca02969fada25406b71e58012a5ce36feb655710c632a4705189ea503584"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.222/chainctl_linux_arm64"
      sha256 "e78567742e75e2655aee85b4db56c53eeb386acac18124612d396d88bd36a3bc"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
