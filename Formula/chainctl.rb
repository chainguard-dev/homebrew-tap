# typed: false
# frozen_string_literal: true

class Chainctl < Formula
  desc "Chainguard Control"
  homepage "https://chainguard.dev"
  version "0.1.18" # e49ad7e
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl_Darwin_x86_64"
      sha256 "b0bcb83d935636af02a54b3dbda8ff2836b5c804d4ff69ede2ba3092b1ba03a9"
    end

    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl_Darwin_arm64"
      sha256 "cc91b977f1f50922776a6404648fd267334ac88785ca09597f990112a67edd13"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl_Linux_x86_64"
      sha256 "0c95e49a0f87e24eb26dd536ad1c2308e1d668d2ac1302bf4b3a661cec24675d"
    end

    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl_Linux_arm64"
      sha256 "614cd118615bd677f04d7cda8148c4e92d0e75a5b94f25e1e8292198d451a312"
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
