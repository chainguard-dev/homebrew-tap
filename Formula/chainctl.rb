# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.239"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.239/chainctl_darwin_x86_64"
      sha256 "cec6883f1efaa1c3f1591a1e69f1605537271a73596fc135892fce388ff35166"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.239/chainctl_darwin_arm64"
      sha256 "7e7837c0862c7cc991388844a65a2962798c62631e9d448d3272e32683e9f8cf"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.239/chainctl_linux_x86_64"
      sha256 "417eb43f0cf414ee7e7eef68463490d1a4bbcc4bee2fa375434ba4d854cd3ad3"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.239/chainctl_linux_arm64"
      sha256 "16a3b19672400a41c6c0c3345316bab715b9280d51bc19534b6ab7e420a536c7"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
