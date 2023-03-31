class Melange < Formula
  desc "Build apk packages using declarative pipelines"
  homepage "https://github.com/chainguard-dev/melange"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chainguard-dev/apko/releases/download/v0.3.2/apko_0.3.2_darwin_arm64.tar.gz"
      sha256 "c5b06be8c3c40144025213a5cf8a45c53b531b7c69319e73957f4e6fb041cdf4"

      def install
        bin.install "melange"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chainguard-dev/melange/releases/download/v0.3.2/melange_0.3.2_darwin_amd64.tar.gz"
      sha256 "3bcdae85536d25731529f21ee7f2cd6c600086d3cb1f28d1c16a5fdc4707e145"

      def install
        bin.install "melange"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chainguard-dev/melange/releases/download/v0.3.2/melange_0.3.2_linux_arm64.tar.gz"
      sha256 "b3ac9d4f48e22a73167129116a8ca2eb54515b5d4a27bfd11a7150c6c43aaeb5"

      def install
        bin.install "melange"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chainguard-dev/melange/releases/download/v0.3.2/melange_0.3.2_linux_amd64.tar.gz"
      sha256 "3ee61bfdc9e7c7d0b62ef454445801b70e3ec3f78541ab3b7dc82607ed2d08bd"

      def install
        bin.install "melange"
      end
    end
  end

  test do
    system "#{bin}/melange", "version"
  end
end
