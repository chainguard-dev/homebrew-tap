# typed: false
# frozen_string_literal: true

class Chainctl < Formula
  desc "Chainguard Control"
  homepage "https://chainguard.dev"
  version "0.1.19" # c294308
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl_Darwin_x86_64"
      sha256 "0f191ae569dac3f24cdb0f531617544716e1019946e4e5cd1b9fe1bf1098816f"
    end

    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl_Darwin_arm64"
      sha256 "02c05e781f1f88b678f7aa3ae9717b034d0c8cc55703c6e713bd5846edfee033"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl_Linux_x86_64"
      sha256 "668a52ea57b8e3a309a7d212497a9d43d9ae568367cfaf0e8b61aff3e17c0aa1"
    end

    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl_Linux_arm64"
      sha256 "10446c98db6a922144e1896cf61989e7c72b3b1bb47c3a7160fe3de40e77f3da"
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
