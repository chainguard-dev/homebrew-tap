# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.326"

  on_macos do
    on_intel do
      url "https://dl.enforce.dev/chainctl/0.1.326/chainctl_darwin_x86_64"
      sha256 "2bb42cc362fa9f53e2c4f7c7c23164a8a62efbc267d5164ae4acf40d75cc72cf"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    on_arm do
      url "https://dl.enforce.dev/chainctl/0.1.326/chainctl_darwin_arm64"
      sha256 "dc84efa9d906e4e152ca7020197992873be0b1722f1df699d766116c24370d9d"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.1.326/chainctl_linux_x86_64"
        sha256 "aad974bc1cf625d68beb1962fbfeedb80d9b91295ca9cea48f98f851cea6f1a9"

        def install
          bin.install "chainctl_linux_x86_64" => "chainctl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.1.326/chainctl_linux_arm64"
        sha256 "e08295969980d95b15bbe6c4848f3ad872e642727ba0419b9993fbf6a1134f3d"

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
