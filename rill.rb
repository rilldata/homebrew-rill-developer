# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rill < Formula
  desc "The Rill CLI"
  homepage "https://github.com/rilldata/rill"
  version "0.54.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.54.0/rill_darwin_amd64.zip"
      sha256 "452058aa514ad3c693086db9035481fb2e52b41fcb20b716a8a5b502c8f5fc95"

      def install
        bin.install "rill"
      end
    end
    if Hardware::CPU.arm?
      url "https://cdn.rilldata.com/rill/v0.54.0/rill_darwin_arm64.zip"
      sha256 "a41493a64062b3605e26d1d26810282a7a9e9dfc846fd674c61034a748d54c3e"

      def install
        bin.install "rill"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://cdn.rilldata.com/rill/v0.54.0/rill_linux_amd64.zip"
        sha256 "55dcbd87202e083d197dfe5069ee102b75af3b71c2a36d58d718ad171d32a294"

        def install
          bin.install "rill"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://cdn.rilldata.com/rill/v0.54.0/rill_linux_arm64.zip"
        sha256 "e944a39091b9fd51dab9e39ef5d244b42b066aba0c7c363678dca9dac2c4c643"

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
