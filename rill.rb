# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rill < Formula
  desc "The Rill CLI"
  homepage "https://github.com/rilldata/rill"
  version "0.40.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://cdn.rilldata.com/rill/v0.40.0/rill_darwin_arm64.zip"
      sha256 "ffc79a6ad41d4a193086c28b456ef41ddff68bdb8e8bc908ddb987c284abf8d8"

      def install
        bin.install "rill"
      end
    end
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.40.0/rill_darwin_amd64.zip"
      sha256 "90f72944652f65d7d4ba54fa9c69485dea8358cef770f1f0f7014b06ce51d7bd"

      def install
        bin.install "rill"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.40.0/rill_linux_amd64.zip"
      sha256 "9ff46a38b7056032cedaff3fa55c4186b49ea08a243a419fbc5a76a2d03c7f7e"

      def install
        bin.install "rill"
      end
    end
  end

  test do
    system "#{bin}/rill --version"
  end
end
