class Apko < Formula
  desc "Build and publish OCI container images built from apk packages"
  homepage "https://github.com/chainguard-dev/apko"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chainguard-dev/apko/releases/download/v0.8.0/apko_0.8.0_darwin_arm64.tar.gz"
      sha256 "70666cddb7c95b614e27af037aaa61d6bb5c46bd8be78a3e750f6b6dce970f9e"

      def install
        bin.install "apko"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chainguard-dev/apko/releases/download/v0.8.0/apko_0.8.0_darwin_amd64.tar.gz"
      sha256 "10663cba9685115762577a8031aa4807121440327ea89c4d7e05ca65cbff44ff"

      def install
        bin.install "apko"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chainguard-dev/apko/releases/download/v0.8.0/apko_0.8.0_linux_arm64.tar.gz"
      sha256 "9af76d6f5552d587acc517ce5f7bbae66fdb8b5509a665b3380b66cc62987b34"

      def install
        bin.install "apko"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chainguard-dev/apko/releases/download/v0.8.0/apko_0.8.0_linux_amd64.tar.gz"
      sha256 "73ee1fae4bfe50bb7886fa9f2d802ef8bf4a3eb638ca72ffd3f47156df2b23dd"

      def install
        bin.install "apko"
      end
    end
  end

  test do
    system "#{bin}/apko", "version"
  end
end
