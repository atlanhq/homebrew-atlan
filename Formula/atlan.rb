# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Atlan < Formula
  desc "Atlan CLI"
  homepage "https://developer.atlan.com/sdks/cli"
  version "0.1.3-alpharomeo"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/atlanhq/atlan-cli-releases/releases/download/0.1.3-alpharomeo/atlan_Darwin_amd64.tar.gz"
      sha256 "eea751da5b2181f5cac3213b08f539982717afca1c1baa08884a0ea3cc18b4d6"

      def install
        bin.install "atlan"
      end
    end
    on_arm do
      url "https://github.com/atlanhq/atlan-cli-releases/releases/download/0.1.3-alpharomeo/atlan_Darwin_arm64.tar.gz"
      sha256 "ba0e38d50bdb2c867768097e0b7149db090626914150e1249cb9b05732521d88"

      def install
        bin.install "atlan"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/atlanhq/atlan-cli-releases/releases/download/0.1.3-alpharomeo/atlan_Linux_amd64.tar.gz"
        sha256 "75fa31ef17d56fccaf570eaccec79eca3fac73d550b8712cc9aedbb4320183b3"

        def install
          bin.install "atlan"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/atlanhq/atlan-cli-releases/releases/download/0.1.3-alpharomeo/atlan_Linux_arm64.tar.gz"
        sha256 "e4ea5e7063cdaf5f3109c7cdfba7e1a4f41f55bb1e8bc37c3dbdf794a7f95d81"

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
