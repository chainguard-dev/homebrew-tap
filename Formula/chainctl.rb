# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.2.55"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.2.55/chainctl_darwin_x86_64"
      sha256 "0d4a7b7f206747e9df821967a141e27f2fa4b104d6604e8abcaae26fbe087654"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.2.55/chainctl_darwin_arm64"
      sha256 "33fcfaef2aa541b0b4f5eec526fbc5a447a32631365d9ffa7b180cae454f5d84"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.2.55/chainctl_linux_x86_64"
        sha256 "794e3f0e7b4ccfcf11a0e2e471cc4e37cebfb1ecd7b4af8fb02403b14cf3509a"

        def install
          bin.install "chainctl_linux_x86_64" => "chainctl"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.2.55/chainctl_linux_arm64"
        sha256 "37223ee374f9db7bd8849555ca38cbd921b48ec6a20251b5ca92fdeed6263d1b"

        def install
          bin.install "chainctl_linux_arm64" => "chainctl"
        end
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
