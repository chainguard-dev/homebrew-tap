# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.329"

  on_macos do
    on_intel do
      url "https://dl.enforce.dev/chainctl/0.1.329/chainctl_darwin_x86_64"
      sha256 "bd98f8549274025de59d79d3668b3f197c5117034c579e52f300073b54d8413d"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    on_arm do
      url "https://dl.enforce.dev/chainctl/0.1.329/chainctl_darwin_arm64"
      sha256 "a4cd28da9ffce070c0e7c70670714571ef7a31d89937ef9d47a742a867c11d54"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.1.329/chainctl_linux_x86_64"
        sha256 "3fedc0381ef511e4acfdac8e9dbc547c586542a8f1d67feb751bf19d97c535e1"

        def install
          bin.install "chainctl_linux_x86_64" => "chainctl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.1.329/chainctl_linux_arm64"
        sha256 "9010cbc3d9c85f6fd7003fe3487cace61b9c74b4e489e55740f9250953cc2c54"

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
