# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.383"

  on_macos do
    on_intel do
      url "https://dl.enforce.dev/chainctl/0.1.383/chainctl_darwin_x86_64"
      sha256 "1b0b2715f641a5eb093759aed34f0e7ac3f540865dfa6779a153411fbe6ab982"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    on_arm do
      url "https://dl.enforce.dev/chainctl/0.1.383/chainctl_darwin_arm64"
      sha256 "3c3bb3b9554ac283e5c19171e1738355580b60aec3a9811a5e16b614f3e1bc5a"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.1.383/chainctl_linux_x86_64"
        sha256 "0e96f4fd95bc247c5566792ecdb7bea2d1540464836e2640b237841334637dd6"

        def install
          bin.install "chainctl_linux_x86_64" => "chainctl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.1.383/chainctl_linux_arm64"
        sha256 "12e614f0dbfe9ddb05c7a23dc62fb0c2b183b09bcb91bd942dee2db036919eda"

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
