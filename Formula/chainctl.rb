# typed: false
# frozen_string_literal: true

class Chainctl < Formula
  desc "Chainguard Control"
  homepage "https://chainguard.dev"
  version "0.1.28"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/v#{version}/chainctl_Darwin_x86_64"
      sha256 "3734289e60161b94e61e52452a868c9db15a9cd5ea223f1119302beaf0aeab5f"
    end

    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/v#{version}/chainctl_Darwin_arm64"
      sha256 "aab4717ad11afc550deb046a711bc5df8bd7975c5cd128eb007e91d8fb0af5ee"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/v#{version}/chainctl_Linux_x86_64"
      sha256 "2a75bdb8300f614fc12e343e6aeee26494fc76ba4256cc10ae20c432b1225872"
    end

    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/v#{version}/chainctl_Linux_arm64"
      sha256 "2923bbebf350d365a3695b12e360bf45292c904fe2e968b14061db226e9a0b9e"
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
