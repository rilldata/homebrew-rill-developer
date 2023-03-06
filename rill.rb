# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rill < Formula
  desc "The Rill CLI"
  homepage "https://github.com/rilldata/rill-developer"
  version "0.22.2"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://cdn.rilldata.com/rill/v0.22.2/rill_darwin_arm64.zip"
      sha256 "125dadb697cbecee6460d7452aae1401aa515610d5521576979cf65d9a21a615"

      def install
        bin.install "rill"
      end
    end
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.22.2/rill_darwin_amd64.zip"
      sha256 "e8d12a34a5bcb1c8a6c05db64718b6896b4a52ae8dc225e462b3169b6cd4d12d"

      def install
        bin.install "rill"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.22.2/rill_linux_amd64.zip"
      sha256 "ce8809af930732dfb53d4765db5297927a428c2840fb26de612c98a7427526b0"

      def install
        bin.install "rill"
      end
    end
  end

  test do
    system "#{bin}/rill --version"
  end
end
