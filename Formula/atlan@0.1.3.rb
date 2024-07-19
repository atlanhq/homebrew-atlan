# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AtlanAT013 < Formula
  desc "Atlan CLI"
  homepage "https://developer.atlan.com/sdks/cli"
  version "0.1.3-beta"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/atlanhq/atlan-cli-releases/releases/download/0.1.3-beta/atlan_Darwin_amd64.tar.gz"
      sha256 "b32d0bb4b73a3fc4ded8220deee6b6de812a1a30808a635264f675f230bb8137"

      def install
        bin.install "atlan"
      end
    end
    on_arm do
      url "https://github.com/atlanhq/atlan-cli-releases/releases/download/0.1.3-beta/atlan_Darwin_arm64.tar.gz"
      sha256 "922229abb966975458c5e2695c33b1e7b7b49f555555081254394a1553e272d5"

      def install
        bin.install "atlan"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/atlanhq/atlan-cli-releases/releases/download/0.1.3-beta/atlan_Linux_amd64.tar.gz"
        sha256 "3c616a5d3ae762ceef7feb1a748c7d84853fe398cb43280ff370e226770234a1"

        def install
          bin.install "atlan"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/atlanhq/atlan-cli-releases/releases/download/0.1.3-beta/atlan_Linux_arm64.tar.gz"
        sha256 "f870ca7bda753eef67f7863c299fe6d25697c8828b9625f270dd2e5048aeded3"

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
