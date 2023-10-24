# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rill < Formula
  desc "The Rill CLI"
  homepage "https://github.com/rilldata/rill"
  version "0.36.3"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://cdn.rilldata.com/rill/v0.36.3/rill_darwin_arm64.zip"
      sha256 "3c6471a247e2ddffcc78b72a6ef08122d7b79409342d74840fb7daff7b7fe9b9"

      def install
        bin.install "rill"
      end
    end
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.36.3/rill_darwin_amd64.zip"
      sha256 "8652b94182b580d4e920a602460bb70740df9e25f7b6e47f0803c8566e1fa5e1"

      def install
        bin.install "rill"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.36.3/rill_linux_amd64.zip"
      sha256 "4a4b55f2edac03cbd1b537130bcb256641c865b8fce2e213b297425284595abe"

      def install
        bin.install "rill"
      end
    end
  end

  test do
    system "#{bin}/rill --version"
  end
end
