# typed: false
# frozen_string_literal: true

class Chainctl < Formula
  desc "Chainguard Control"
  homepage "https://chainguard.dev"
  version "0.1.27"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/v#{version}/chainctl_Darwin_x86_64"
      sha256 "418920b5a8e3bcf86ecc99aec8c13c8346d278cae38c00af1fc7adbd2b677de0"
    end

    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/v#{version}/chainctl_Darwin_arm64"
      sha256 "479b646bbbb7e53b1ca12d78525c5c613bc35021c6260c39d1c3a9f0596de331"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/v#{version}/chainctl_Linux_x86_64"
      sha256 "f8c2b5cb28a6766395e613847402620be20c68c6b9b262f3f5cb774a2c1e600d"
    end

    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/v#{version}/chainctl_Linux_arm64"
      sha256 "7fdbe773203d97f8c009e50e887e169e309b618b08a4223af1f9811a643cc64c"
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
