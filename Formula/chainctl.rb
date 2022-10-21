# typed: false
# frozen_string_literal: true

class Chainctl < Formula
  desc "Chainguard Control"
  homepage "https://chainguard.dev"
  version "0382fb5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl_Darwin_x86_64"
      sha256 "115c7b6004f10a1d75689ae95d3d3eef082876d2e38df85f3602cc17240b2f25"
    end

    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl_Darwin_arm64"
      sha256 "6fcbf6a9fd64f211e9bdc3f304b18e5c60d215f869aca8aa7ee0c6f6a25ce86a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl_Linux_x86_64"
      sha256 "4969d6207a1574131fa1fbf881f2c195d189a8e51fbd42ed182a4440878ee624"
    end

    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl_Linux_arm64"
      sha256 "93b9d1b4c55b37318e6ab6d528734cf0d46c3595e4f1c4c360eb19273857cbae"
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
