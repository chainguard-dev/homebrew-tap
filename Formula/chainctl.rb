# typed: false
# frozen_string_literal: true

class Chainctl < Formula
  desc "Chainguard Control"
  homepage "https://chainguard.dev"
  version "0.1.31"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/v#{version}/chainctl_Darwin_x86_64"
      sha256 "6e36cee4adf90be04ec4358c0da0cc06974f44088330afba87e218d7632a3329"
    end

    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/v#{version}/chainctl_Darwin_arm64"
      sha256 "959531689228ef0489f5eb9f0aabc6a3545420c337e04e05b29c1b68e48b4ab6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/v#{version}/chainctl_Linux_x86_64"
      sha256 "4b8012e97959e7b3af7b91f62bccc68099c690ba688918b041bcedd74cca91e7"
    end

    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/v#{version}/chainctl_Linux_arm64"
      sha256 "3d67672a61b8e6bf5002eedaabfaa6404f0a2cdbca94c42a25226dedddc88dd7"
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
