# typed: false
# frozen_string_literal: true

class Chainctl < Formula
  desc "Chainguard Control"
  homepage "https://chainguard.dev"
  version "0.1.15" # c4b585d
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl_Darwin_x86_64"
      sha256 "7081fccf4fc344ea13d74bd18b1a0dceba8e420fab174dd5652d97aaf14c5d98"
    end

    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl_Darwin_arm64"
      sha256 "65d87bcc4820bb25abf07ad81084eb473046f0300d034d9069940cbfa18b2e47"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl_Linux_x86_64"
      sha256 "71b3538f89ecd9653ee65dc81502a47696dc088df9b64db1a01815dcb15d3268"
    end

    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl_Linux_arm64"
      sha256 "cf5d9f47b10864082f4284cf49f85eff8f1001987357a1422c94f7a9e51eca07"
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
