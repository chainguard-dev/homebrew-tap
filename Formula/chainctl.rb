# typed: false
# frozen_string_literal: true

class Chainctl < Formula
  desc "Chainguard Control"
  homepage "https://chainguard.dev"
  version "0.1.22" # 83a81de
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/v#{version}/chainctl_Darwin_x86_64"
      sha256 "398bf53fc3ebd2ad1c7195bd86ef4dc80051062f7dd209c99ef49813cd714c37"
    end

    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/v#{version}/chainctl_Darwin_arm64"
      sha256 "4766037e5e120ddb728bacc8a6544861dc292019cedd58dc3c47df43aea8ecc6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/v#{version}/chainctl_Linux_x86_64"
      sha256 "05f86437c65d456255371bfc66ab56d5914ace85878dc3d152a4e15487f7b639"
    end

    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/v#{version}/chainctl_Linux_arm64"
      sha256 "05f86437c65d456255371bfc66ab56d5914ace85878dc3d152a4e15487f7b639"
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
