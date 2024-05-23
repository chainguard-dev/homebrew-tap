# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.306"

  on_macos do
    on_intel do
      url "https://dl.enforce.dev/chainctl/0.1.306/chainctl_darwin_x86_64"
      sha256 "8497beb28a686ac9adadc047896e368e6046efa4c71ec6434aa55b5e259ad077"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    on_arm do
      url "https://dl.enforce.dev/chainctl/0.1.306/chainctl_darwin_arm64"
      sha256 "aaa97d8cdf8548450123e1bb3b4a0758f1a3e41c458d684b5559ed6404884dc0"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.1.306/chainctl_linux_x86_64"
        sha256 "f27f270a380e35b3e5695017e766fcfc97087302df3d710ca84ea5e074883a09"

        def install
          bin.install "chainctl_linux_x86_64" => "chainctl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.1.306/chainctl_linux_arm64"
        sha256 "6a210d10012b2b86fc5e38c80c975721da5963f97b962f653fe9b5a3c26bb199"

        def install
          bin.install "chainctl_linux_arm64" => "chainctl"
        end
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
