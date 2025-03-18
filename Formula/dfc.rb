class Dfc < Formula
  desc "Convert Dockerfiles to use Chainguard"
  homepage "https://github.com/chainguard-dev/dfc"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chainguard-dev/dfc/releases/download/v#{version}/dfc_#{version}_darwin_arm64.tar.gz"
      sha256 "d5e86f83e5b2cb2fcde9ef4008e998bdff627b67868ad98e75456dabbb0e9f51"

      def install
        bin.install "dfc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chainguard-dev/dfc/releases/download/v#{version}/dfc_#{version}_darwin_amd64.tar.gz"
      sha256 "4aea766950a7062035ad38083594867cd39ee34006e878983713f3325ec8dd1f"

      def install
        bin.install "dfc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chainguard-dev/dfc/releases/download/v#{version}/dfc_#{version}_linux_arm64.tar.gz"
      sha256 "0a470b94f034161eb9133db1c88ea0a206d97751ccacfe58b017d3d4b57d7579"

      def install
        bin.install "dfc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chainguard-dev/dfc/releases/download/v#{version}/dfc_#{version}_linux_amd64.tar.gz"
      sha256 "4514cf2bf6456b83cd27bf5faa3418280eccb898fdb12e0a249c56dba7f1cbf3"

      def install
        bin.install "dfc"
      end
    end
  end

  test do
    system "#{bin}/dfc", "--version"
  end
end
