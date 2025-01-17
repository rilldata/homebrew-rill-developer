# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rill < Formula
  desc "The Rill CLI"
  homepage "https://github.com/rilldata/rill"
  version "0.52.8"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.52.8/rill_darwin_amd64.zip"
      sha256 "64ac4fdb8ae117f20f85114b8f5675f1ef9be5daa44e5c7af2bd4964d74451d1"

      def install
        bin.install "rill"
      end
    end
    if Hardware::CPU.arm?
      url "https://cdn.rilldata.com/rill/v0.52.8/rill_darwin_arm64.zip"
      sha256 "0e8c429e15efe1220aa06449d433898b2b740ec05e46d2df7eebbc7dda94cea2"

      def install
        bin.install "rill"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://cdn.rilldata.com/rill/v0.52.8/rill_linux_amd64.zip"
        sha256 "714e175dc868b0e60ff22a0c419ed8a3dfb6d6d85440a073d0f55bd748c7c736"

        def install
          bin.install "rill"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://cdn.rilldata.com/rill/v0.52.8/rill_linux_arm64.zip"
        sha256 "2e0ceb33e4bf9355958b5edc688e587d71720c6bb978a690487b70532799dfb3"

        def install
          bin.install "rill"
        end
      end
    end
  end

  test do
    system "#{bin}/rill --version"
  end
end
