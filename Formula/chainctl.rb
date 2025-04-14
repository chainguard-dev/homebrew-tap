# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.2.68"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.2.68/chainctl_darwin_x86_64"
      sha256 "7217d4a777045db9c9c47a58acb953a5477c896aab909254401b00402af048aa"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.2.68/chainctl_darwin_arm64"
      sha256 "17d69f23267de2744a607511906b425895bb2e6ea91b88cca54a023176728e9d"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.2.68/chainctl_linux_x86_64"
        sha256 "e3119dcd6d177e9149c1f587037056228e6d608bc8b54f00c414d611d8ccd0d4"

        def install
          bin.install "chainctl_linux_x86_64" => "chainctl"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.2.68/chainctl_linux_arm64"
        sha256 "a59d24cb09a87021caef3e7b93177e2dd8cbd5ac80eae0b2bb176cf971a4acbb"

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
