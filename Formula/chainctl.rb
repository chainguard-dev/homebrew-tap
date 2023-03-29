# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.95"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.95/chainctl_darwin_x86_64"
      sha256 "fc0abc82539c58835fd16ca28ef33165d9e39f0368c2a46afd3589aff1373328"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.95/chainctl_darwin_arm64"
      sha256 "e197de1fe60e55565758081c1f604dfcc38ac8e8f988476397309b1624bf4aaa"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.95/chainctl_linux_x86_64"
      sha256 "1b0f7e31e76525b073003d39582bafd88b2c77823520406a25c557b439b15456"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.95/chainctl_linux_arm64"
      sha256 "418b5c2ea772cde3cb6d4dd201ec0834e324b226755dd4b3c0d503160f4ac21c"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
