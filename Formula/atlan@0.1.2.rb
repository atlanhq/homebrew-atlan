# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AtlanAT012 < Formula
    desc "Atlan CLI"
    homepage "https://developer.atlan.com/sdks/cli"
    version "0.1.2"
    license "Apache-2.0"
  
    on_macos do
      on_intel do
        url "https://github.com/atlanhq/atlan-cli-releases/releases/download/v0.1.2/atlan_Darwin_amd64.tar.gz"
        sha256 "d00fbeba2d7b5f17b3ec3971690b44941ad402607d0327958ebff0b6012270f6"
  
        def install
          bin.install "atlan"
        end
      end
      on_arm do
        url "https://github.com/atlanhq/atlan-cli-releases/releases/download/v0.1.2/atlan_Darwin_arm64.tar.gz"
        sha256 "5a53610e8c954523bdae763101007ece894ce06a28104a129f23d81db845030b"
  
        def install
          bin.install "atlan"
        end
      end
    end
  
    on_linux do
      on_intel do
        if Hardware::CPU.is_64_bit?
          url "https://github.com/atlanhq/atlan-cli-releases/releases/download/v0.1.2/atlan_Linux_amd64.tar.gz"
          sha256 "9ae87de602f2dd9dc9f7477f83e02c9a545b4fcfdb42c1460f8e2ce87628f75a"
  
          def install
            bin.install "atlan"
          end
        end
      end
      on_arm do
        if Hardware::CPU.is_64_bit?
          url "https://github.com/atlanhq/atlan-cli-releases/releases/download/v0.1.2/atlan_Linux_arm64.tar.gz"
          sha256 "5a96aa3de1aa1d40bdf24fe6577d565259ec0fe7eb5b5a07ad5e5442a855480b"
  
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