# typed: false
# frozen_string_literal: true

class Chainctl < Formula
  desc "Chainguard Control"
  homepage "https://chainguard.dev"
  version "9dd3c6d"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/us.artifacts.prod-enforce-fabc.appspot.com/chainctl_Darwin_x86_64"
      sha256 "8a81ca76572b8055fa00e513ab23e785a41fb0d3138fc2f5d2cddf6f068fe8d5"
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/us.artifacts.prod-enforce-fabc.appspot.com/chainctl_Darwin_arm64"
      sha256 "411e34dda772d79b6853cff2b6c75eb1fd769fedccf3dffb9e0ce7415d0be789"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/us.artifacts.prod-enforce-fabc.appspot.com/chainctl_Linux_x86_64"
      sha256 "46148893a3dd5ed267780b8d838b4dda91d38f15e35b39c8081279c8fb94ef31"
    end

    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/us.artifacts.prod-enforce-fabc.appspot.com/chainctl_Linux_arm64"
      sha256 "036a4a3211da7a4b2ac970a0213b8660fe2b8e2d5fe02af333f08b14f5d31d7d"
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
