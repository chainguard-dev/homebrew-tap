class Apko < Formula
  desc "Build and publish OCI container images built from apk packages"
  homepage "https://github.com/chainguard-dev/apko"
  version "0.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chainguard-dev/apko/releases/download/v0.7.1/apko_0.7.1_darwin_arm64.tar.gz"
      sha256 "40dc2f2d1be035d3da4d439c9021efa68531fb2153df2b7952bbb1d0f61f415e"

      def install
        bin.install "apko"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chainguard-dev/apko/releases/download/v0.7.1/apko_0.7.1_darwin_amd64.tar.gz"
      sha256 "4a89ea34a1d230084054ef85a81162a49a0115495c7bd46713dbe31859f3c0ba"

      def install
        bin.install "apko"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chainguard-dev/apko/releases/download/v0.7.1/apko_0.7.1_linux_arm64.tar.gz"
      sha256 "72859722b1dac7dc4ca777ff228c82d495d74038a2359d1bd00e59f7b70d47b3"

      def install
        bin.install "apko"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chainguard-dev/apko/releases/download/v0.7.1/apko_0.7.1_linux_amd64.tar.gz"
      sha256 "5a3bb61a5adc2020c2a8ce85c46cadbc0cb8075fdd3ba9f73dbc86bfd757f8d3"

      def install
        bin.install "apko"
      end
    end
  end

  test do
    system "#{bin}/apko", "version"
  end
end
