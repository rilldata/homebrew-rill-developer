# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rill < Formula
  desc "The Rill CLI"
  homepage "https://github.com/rilldata/rill"
  version "0.50.2"
  license "Apache 2.0"

  on_macos do
    on_intel do
      url "https://cdn.rilldata.com/rill/v0.50.2/rill_darwin_amd64.zip"
      sha256 "38dc53ac933ddd8ef69ecc6ac2a67ffb72815c01af988a571b600f3f0e072fec"

      def install
        bin.install "rill"
      end
    end
    on_arm do
      url "https://cdn.rilldata.com/rill/v0.50.2/rill_darwin_arm64.zip"
      sha256 "b77cc530219d4e658ccbcf55c18d965f7b7bc2e5bf6c27efd926ab7917a0dcb8"

      def install
        bin.install "rill"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://cdn.rilldata.com/rill/v0.50.2/rill_linux_amd64.zip"
        sha256 "92c4e18479bde08d7ff9635413b0aee34ac34ea4bc4ef24a0e177168aaa0404c"

        def install
          bin.install "rill"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://cdn.rilldata.com/rill/v0.50.2/rill_linux_arm64.zip"
        sha256 "908a6e3add2aeacc48466ff2a5e880a55e5b9272a56115f86107b65430798850"

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
