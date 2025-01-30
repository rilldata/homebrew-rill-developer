# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rill < Formula
  desc "The Rill CLI"
  homepage "https://github.com/rilldata/rill"
  version "0.54.1"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.54.1/rill_darwin_amd64.zip"
      sha256 "521c0072a866c53e8166d1f8c8a7b81ad9f7d73e1f3e4f05082854ffbf875a5b"

      def install
        bin.install "rill"
      end
    end
    if Hardware::CPU.arm?
      url "https://cdn.rilldata.com/rill/v0.54.1/rill_darwin_arm64.zip"
      sha256 "1322d2510b2d9e2f637b2cc8ce7e6a3ae5cc09277a86416871604d81c6e2e340"

      def install
        bin.install "rill"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://cdn.rilldata.com/rill/v0.54.1/rill_linux_amd64.zip"
        sha256 "4e304f2649f19d516f2fd761bd3f4e17bf11b3847af5c081f5039fe754c985df"

        def install
          bin.install "rill"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://cdn.rilldata.com/rill/v0.54.1/rill_linux_arm64.zip"
        sha256 "9d7f7036d088202ffa33e1420d1bd8a0fcb7289bb71dd0b0d4b69a428811e419"

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
