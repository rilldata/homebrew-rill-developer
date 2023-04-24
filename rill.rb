# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rill < Formula
  desc "The Rill CLI"
  homepage "https://github.com/rilldata/rill-developer"
  version "0.24.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://cdn.rilldata.com/rill/v0.24.0/rill_darwin_arm64.zip"
      sha256 "ea51d83dfb2d5bfbe55fb4758b175c2aa6c543d74a944937a4300dd8180de13f"

      def install
        bin.install "rill"
      end
    end
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.24.0/rill_darwin_amd64.zip"
      sha256 "c3b1d8486510cd565416a646f3bae73cecc14199fb943c17de028fffafb0860a"

      def install
        bin.install "rill"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.24.0/rill_linux_amd64.zip"
      sha256 "9f8be6ccab2b2c800829b340bf90319c65d80ef8e259953b601f526843f5b990"

      def install
        bin.install "rill"
      end
    end
  end

  test do
    system "#{bin}/rill --version"
  end
end
