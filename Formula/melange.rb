class Melange < Formula
  desc "Build apk packages using declarative pipelines"
  homepage "https://github.com/chainguard-dev/melange"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chainguard-dev/melange/releases/download/v#{version}/melange_#{version}_darwin_arm64.tar.gz"
      sha256 "33a8ddcd60fcd887d1f228db651eaa7e601ed3462ca1ac6a2c1649d39961ae12"

      def install
        bin.install "melange"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chainguard-dev/melange/releases/download/v#{version}/melange_#{version}_darwin_amd64.tar.gz"
      sha256 "360c786b89bdce169153b242cb76aef7707689570ccda252e6b65c437ef787c2"

      def install
        bin.install "melange"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chainguard-dev/melange/releases/download/v#{version}/melange_#{version}_linux_arm64.tar.gz"
      sha256 "d39ba023640d91962df855e5a733e7935acb992bcfcd4e90d4ec2cbffffd87cf"

      def install
        bin.install "melange"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chainguard-dev/melange/releases/download/v#{version}/melange_#{version}_linux_amd64.tar.gz"
      sha256 "d87c86935282546d6f2d5c1173f711b5919e2501722aa7458fa5b741fe13fc80"

      def install
        bin.install "melange"
      end
    end
  end

  test do
    system "#{bin}/melange", "version"
  end
end
