class Apko < Formula
  desc "Build and publish OCI container images built from apk packages"
  homepage "https://github.com/chainguard-dev/apko"
  version "0.7.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chainguard-dev/apko/releases/download/v0.7.3/apko_0.7.3_darwin_arm64.tar.gz"
      sha256 "cbec7bf4f2532466bc47ae12e9128cf6c0534dd2cf0340830feed0c9a5c79a6e"

      def install
        bin.install "apko"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chainguard-dev/apko/releases/download/v0.7.3/apko_0.7.3_darwin_amd64.tar.gz"
      sha256 "dc2a36106335a30f6bd5edf40bc16b13c9fc6a80d891420cd3a79c2aa5da5bd1"

      def install
        bin.install "apko"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chainguard-dev/apko/releases/download/v0.7.3/apko_0.7.3_linux_arm64.tar.gz"
      sha256 "416ea9be33047d701a13829ab9d85a7ef6aa17f82196a92b84ef64700e1e763b"

      def install
        bin.install "apko"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chainguard-dev/apko/releases/download/v0.7.3/apko_0.7.3_linux_amd64.tar.gz"
      sha256 "c9d490461fbaebea818455a8c838ea20a3fd1c6085f1dfd7b215d0a999da0f4b"

      def install
        bin.install "apko"
      end
    end
  end

  test do
    system "#{bin}/apko", "version"
  end
end
