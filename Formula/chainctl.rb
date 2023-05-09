# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.114"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.114/chainctl_darwin_x86_64"
      sha256 "3ac7de085f14dfe54ef939bacb4f0c27af115f228c3bc09b7cd5ce86364f740d"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.114/chainctl_darwin_arm64"
      sha256 "f6b12183a9ea342cc2ed64ffa96e5f255b8ee56e265fa7fee070fc27f79ab745"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.114/chainctl_linux_x86_64"
      sha256 "4e405954977c394e7c9023ab3131ffa12dee06c335ff6b4f7748688550c70e28"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.114/chainctl_linux_arm64"
      sha256 "9e66b0896703233386c419eda3968dd43870075099199ed0485277c5b3adc2ab"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
