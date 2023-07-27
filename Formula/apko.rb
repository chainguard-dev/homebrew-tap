class Apko < Formula
  desc "Build and publish OCI container images built from apk packages"
  homepage "https://github.com/chainguard-dev/apko"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chainguard-dev/apko/releases/download/v#{version}/apko_#{version}_darwin_arm64.tar.gz"
      sha256 "8ff96409de2a1f2eba4a5c4dda96c6005d66a345cb26e78862a7320d5a415c89"

      def install
        bin.install "apko"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chainguard-dev/apko/releases/download/v#{version}/apko_#{version}_darwin_amd64.tar.gz"
      sha256 "1386f8ad7e0b7da04882db0f6cd4dd2e3ffd820c646859c11af2a465c657c8d7"

      def install
        bin.install "apko"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chainguard-dev/apko/releases/download/v#{version}/apko_#{version}_linux_arm64.tar.gz"
      sha256 "8978df010b307092f9ec683deb983753040d1880e19cc62e16adbfe3b630c651"

      def install
        bin.install "apko"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chainguard-dev/apko/releases/download/v#{version}/apko_#{version}_linux_amd64.tar.gz"
      sha256 "fcccc3607a2ec61050669fdc77d9ee1265a922b8a4f1b38166777efec9861d16"

      def install
        bin.install "apko"
      end
    end
  end

  test do
    system "#{bin}/apko", "version"
  end
end
