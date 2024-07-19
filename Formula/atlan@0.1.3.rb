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
      url "https://github.com/atlanhq/atlan-cli-releases/releases/download/v0.1.3-beta/atlan_Darwin_amd64.tar.gz"
      sha256 "bfe73a6d10bf466386a290197cc335faeeeaf8b2110ecde83f0eaee7044a6234"

      def install
        bin.install "atlan"
      end
    end
    on_arm do
      url "https://github.com/atlanhq/atlan-cli-releases/releases/download/v0.1.3-beta/atlan_Darwin_arm64.tar.gz"
      sha256 "c2ec6771139dc451edbf7394fe792b6df19d46e2fd2cf26cfc6965cba6e0198f"

      def install
        bin.install "atlan"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/atlanhq/atlan-cli-releases/releases/download/v0.1.3-beta/atlan_Linux_amd64.tar.gz"
        sha256 "e5137da8f25c2329fc7225443e2cb507c8a764d4c9c5a2daf913ce3d1c33298f"

        def install
          bin.install "atlan"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/atlanhq/atlan-cli-releases/releases/download/v0.1.3-beta/atlan_Linux_arm64.tar.gz"
        sha256 "265b412963c508b784eb7252b839b24cc2036577233784330fb8b0259795cfa7"

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
