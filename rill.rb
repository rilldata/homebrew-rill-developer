# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rill < Formula
  desc "The Rill CLI"
  homepage "https://github.com/rilldata/rill-developer"
  version "0.15.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "http://pkg.rilldata.com/rill/v0.15.0/rill_0.15.0_Darwin_amd64.tar.gz"
      sha256 "7eb6699d6bd0f0075cf5fa3a4f54ed6b6964436e33c66dd033a9e6720a059b6e"

      def install
        bin.install "rill"
      end
    end
    if Hardware::CPU.arm?
      url "http://pkg.rilldata.com/rill/v0.15.0/rill_0.15.0_Darwin_arm64.tar.gz"
      sha256 "737fd0f8520c2904f818365509ff13f9cf0f93098139182450703e8a097ac6e7"

      def install
        bin.install "rill"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "http://pkg.rilldata.com/rill/v0.15.0/rill_0.15.0_Linux_amd64.tar.gz"
      sha256 "8c4f87a8e4df15077047345a806a21140974b334e3c6b7775edf199071549099"

      def install
        bin.install "rill"
      end
    end
  end

  test do
    system "#{bin}/rill --version"
  end
end
