# typed: false
# frozen_string_literal: true

class Chainctl < Formula
  desc "Chainguard Control"
  homepage "https://chainguard.dev"
  version "0.1.26"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/v#{version}/chainctl_Darwin_x86_64"
      sha256 "b0e172adc0a0865e9452fe2c25c97f35dd5fa7446a01d91bffcbead76608071d"
    end

    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/v#{version}/chainctl_Darwin_arm64"
      sha256 "697c79be22e246e1f7e85ea58ba19e37c219d816cc68ba5ab6fda228f718a721"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/v#{version}/chainctl_Linux_x86_64"
      sha256 "2d0a280b2508b5ee442bd1c6a61c51210caecee10ee320df9bb7c52f82b67830"
    end

    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/v#{version}/chainctl_Linux_arm64"
      sha256 "ac5c45440656bb515141fc4d72e17e4dd0830ccb234dc036f4473337bb8daeaf"
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
