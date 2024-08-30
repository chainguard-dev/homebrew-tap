# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.372"

  on_macos do
    on_intel do
      url "https://dl.enforce.dev/chainctl/0.1.372/chainctl_darwin_x86_64"
      sha256 "cc67f662e5557c9a33f3865b8a70dd7f83265c3541cd031a490f7be37a3be38f"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    on_arm do
      url "https://dl.enforce.dev/chainctl/0.1.372/chainctl_darwin_arm64"
      sha256 "de4107514963c869b63605d9389aee5c1d904779cfc86fd2d5a71d33bffb2f60"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.1.372/chainctl_linux_x86_64"
        sha256 "c23e5a80f5ada9a5b8754919982fd8c42184658e87ee396a904ed63b170393b8"

        def install
          bin.install "chainctl_linux_x86_64" => "chainctl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.1.372/chainctl_linux_arm64"
        sha256 "77acfa69b9025820f3a7a779f04e262e99666095792e3c643e8d0541832bfb52"

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
