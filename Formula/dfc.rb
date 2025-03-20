class Dfc < Formula
  desc "Convert Dockerfiles to use Chainguard"
  homepage "https://github.com/chainguard-dev/dfc"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chainguard-dev/dfc/releases/download/v#{version}/dfc_#{version}_darwin_arm64.tar.gz"
      sha256 "c0f1935aa250daef541ee1d0653ce7afa1120b5b422894f497353151c8abe8f2"

      def install
        bin.install "dfc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chainguard-dev/dfc/releases/download/v#{version}/dfc_#{version}_darwin_amd64.tar.gz"
      sha256 "3fcab790b81021e9921a52e02e9dd83d7fa3ee0fc68b333f0a9340d3639b57cf"

      def install
        bin.install "dfc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chainguard-dev/dfc/releases/download/v#{version}/dfc_#{version}_linux_arm64.tar.gz"
      sha256 "a296bf2b302b98ad7ad1b57510131172c4317ade4f9e3305c866191409a30471"

      def install
        bin.install "dfc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chainguard-dev/dfc/releases/download/v#{version}/dfc_#{version}_linux_amd64.tar.gz"
      sha256 "fed1be98b203b85351b4440e87abeee0f04583c447c94e965745f84c1005460d"

      def install
        bin.install "dfc"
      end
    end
  end

  test do
    system "#{bin}/dfc", "--version"
  end
end
