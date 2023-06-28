# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rill < Formula
  desc "The Rill CLI"
  homepage "https://github.com/rilldata/rill"
  version "0.28.2"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.28.2/rill_darwin_amd64.zip"
      sha256 "ecd1c67cd20a4aee772f5de3fb5013b2eda0fb3ab4b1511b371afefdb6961aff"

      def install
        bin.install "rill"
      end
    end
    if Hardware::CPU.arm?
      url "https://cdn.rilldata.com/rill/v0.28.2/rill_darwin_arm64.zip"
      sha256 "2e16f0c92c21d436e5514e2971f3d936d9e7f0feaf590a774d9bc032c34d2c6d"

      def install
        bin.install "rill"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.28.2/rill_linux_amd64.zip"
      sha256 "620a6a995e8f3f5c619f9b9972b6b3467a49c7627ae122ffc2538e61299e9db0"

      def install
        bin.install "rill"
      end
    end
  end

  test do
    system "#{bin}/rill --version"
  end
end
