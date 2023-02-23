class Apko < Formula
  desc "Build and publish OCI container images built from apk packages"
  homepage "https://github.com/chainguard-dev/apko"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chainguard-dev/apko/releases/download/v0.7.0/apko_0.7.0_darwin_arm64.tar.gz"
      sha256 "4096bb38c3116038ac541b0fe5bb1e3160d592b32e2177ed07b70a2b634d5117"

      def install
        bin.install "apko"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chainguard-dev/apko/releases/download/v0.7.0/apko_0.7.0_darwin_amd64.tar.gz"
      sha256 "c2b12ec73d02cae768a1bde4bc22817ae556a26f0088b8dd14ee6d50120ad324"

      def install
        bin.install "apko"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chainguard-dev/apko/releases/download/v0.7.0/apko_0.7.0_linux_arm64.tar.gz"
      sha256 "b025d8d4c0ece0e981c148076cde4f037b9fc2a21cacbed19550d8e5d4211b04"

      def install
        bin.install "apko"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chainguard-dev/apko/releases/download/v0.7.0/apko_0.7.0_linux_amd64.tar.gz"
      sha256 "e6144943667ecb2eaecaf4bea3023cc0ab51a83affffcdfaa0f496199ab6eaca"

      def install
        bin.install "apko"
      end
    end
  end

  test do
    system "#{bin}/apko", "version"
  end
end
