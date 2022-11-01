# typed: false
# frozen_string_literal: true

class Chainctl < Formula
  desc "Chainguard Control"
  homepage "https://chainguard.dev"
  version "0.1.17" # aeaae9b
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl_Darwin_x86_64"
      sha256 "7c1ee63008a5e6bad71d55de26db05e20376e5c1016bbe6c17327a913ff24e80"
    end

    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl_Darwin_arm64"
      sha256 "5414b8c16a358c2844c350bc10767d35d03ed5f43c7bdb72381cae6de4d2ab5d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl_Linux_x86_64"
      sha256 "8ed9a91a7c02b3a9e26d560645005a6d5a6dd41c45a3a416c48101dd164e1455"
    end

    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl_Linux_arm64"
      sha256 "0175d59cede43d8a1442827a385bd02a5aa9178156d3602ab7fe56128efa8099"
    end
  end

  def install
    cpu = Hardware::CPU.intel? ? "x86_64" : "arm64"
    os = OS.mac? ? "Darwin" : "Linux"
    bin.install "chainctl_#{os}_#{cpu}" => "chainctl"
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
