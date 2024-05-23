# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.305"

  on_macos do
    on_intel do
      url "https://dl.enforce.dev/chainctl/0.1.305/chainctl_darwin_x86_64"
      sha256 "418edc9076d487b5c81daa0f8207785f08ffa27e3fb4a83ab13293153eafb689"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    on_arm do
      url "https://dl.enforce.dev/chainctl/0.1.305/chainctl_darwin_arm64"
      sha256 "e1cdc5630acefb2e892cdced4fd4cdd0d0eb6e263787ba493d727c34e0f901d2"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.1.305/chainctl_linux_x86_64"
        sha256 "6939d1f1207d1a2e13fb2d854eed2348be178fa84231f51e6b1e8d9bbf1d9f93"

        def install
          bin.install "chainctl_linux_x86_64" => "chainctl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.1.305/chainctl_linux_arm64"
        sha256 "d1b842b30b0133bee2e8420598fdd6461839c143cee4dbbaa3a32bf5ae852df5"

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
