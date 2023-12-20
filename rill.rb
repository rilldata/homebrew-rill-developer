# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rill < Formula
  desc "The Rill CLI"
  homepage "https://github.com/rilldata/rill"
  version "0.38.1"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://cdn.rilldata.com/rill/v0.38.1/rill_darwin_arm64.zip"
      sha256 "2557e9914b658e15abf7d1b7056a826b03111a08e25cd20bff6db012110c812b"

      def install
        bin.install "rill"
      end
    end
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.38.1/rill_darwin_amd64.zip"
      sha256 "b876abee1455f3230efd2615a25f19ad8353769507437a0e201562a485ce5e42"

      def install
        bin.install "rill"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.38.1/rill_linux_amd64.zip"
      sha256 "1e80001aebfca8e35adf4357f701598fea4bb78c3e76b21332bd9510844a264d"

      def install
        bin.install "rill"
      end
    end
  end

  test do
    system "#{bin}/rill --version"
  end
end
