# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.2.44"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.2.44/chainctl_darwin_x86_64"
      sha256 "73354af8b9f9e6f8112c28b7b62f5e3935a3fd13ac01d9309d546bb6a418f790"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.2.44/chainctl_darwin_arm64"
      sha256 "a645b15ab22f6e89ff937f69840dec68c109c693516b2265b62b72b008cab125"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.2.44/chainctl_linux_x86_64"
        sha256 "e0936c3b86de1431cb5b805a68321fe5e9b077d4815f9eaf760e437bb32722c6"

        def install
          bin.install "chainctl_linux_x86_64" => "chainctl"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.2.44/chainctl_linux_arm64"
        sha256 "16848334fb458ebe726c0a19aa77c052980350d41db5ea411888775ee0acbbfb"

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
