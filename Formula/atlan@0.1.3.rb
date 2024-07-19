# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AtlanAT013 < Formula
  desc "Atlan CLI"
  homepage "https://developer.atlan.com/sdks/cli"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/atlanhq/atlan-cli-releases/releases/download/v0.1.3/atlan_Darwin_amd64.tar.gz"
      sha256 "39360d9885e27df9edd32b645607a011562a8e00087eec61b356e6e141eeb469"

      def install
        bin.install "atlan"
      end
    end
    on_arm do
      url "https://github.com/atlanhq/atlan-cli-releases/releases/download/v0.1.3/atlan_Darwin_arm64.tar.gz"
      sha256 "d7055faae68d1596f0458dccadad61a78b111286d52d4f4cd7fbf5a87d3ea949"

      def install
        bin.install "atlan"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/atlanhq/atlan-cli-releases/releases/download/v0.1.3/atlan_Linux_amd64.tar.gz"
        sha256 "1e3066541c26331d34805985aad949f102db862f35604c79debc794f9a43147b"

        def install
          bin.install "atlan"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/atlanhq/atlan-cli-releases/releases/download/v0.1.3/atlan_Linux_arm64.tar.gz"
        sha256 "15301fdb67e0523ca5d8da27cf186e85ed4ad181d677997f78fa6a95ede5cdc5"

        def install
          bin.install "atlan"
        end
      end
    end
  end

  def post_install
    system "#{bin}/atlan"
  end
end
