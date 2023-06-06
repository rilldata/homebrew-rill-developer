# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rill < Formula
  desc "The Rill CLI"
  homepage "https://github.com/rilldata/rill-developer"
  version "0.27.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://cdn.rilldata.com/rill/v0.27.0/rill_darwin_arm64.zip"
      sha256 "4dba67c0fe8416839d92ec0adc23aa872f1882358827490aee12af2117e3a212"

      def install
        bin.install "rill"
      end
    end
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.27.0/rill_darwin_amd64.zip"
      sha256 "20d240a3380c104277f593973bb83220566385ace1e18c71c985e8e8fadee515"

      def install
        bin.install "rill"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://cdn.rilldata.com/rill/v0.27.0/rill_linux_amd64.zip"
      sha256 "75fb83069a07fd4a8bb7e3fcb3fc849ee931683a92a846b7007cef1ad00db0bc"

      def install
        bin.install "rill"
      end
    end
  end

  test do
    system "#{bin}/rill --version"
  end
end
