# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kraftkit < Formula
  desc "Build and use highly customized and ultra-lightweight unikernels."
  homepage "https://kraftkit.sh"
  version "0.7.14"
  license "BSD-3-Clause"

  depends_on "aarch64-elf-binutils"
  depends_on "aarch64-elf-gcc"
  depends_on "coreutils"
  depends_on "gawk"
  depends_on "gnu-sed"
  depends_on "grep"
  depends_on "m4"
  depends_on "make"
  depends_on "qemu"
  depends_on "socat"
  depends_on "wget"
  depends_on "x86_64-elf-binutils"
  depends_on "x86_64-elf-gcc"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/unikraft/kraftkit/releases/download/v0.7.14/kraft_0.7.14_darwin_arm64.tar.gz"
      sha256 "aabd5f80a4cafd54cfe613f8c40ce52bdcb1bab31cc67f721310355948513df8"

      def install
        bin.install "kraft"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/unikraft/kraftkit/releases/download/v0.7.14/kraft_0.7.14_darwin_amd64.tar.gz"
      sha256 "ebcc8139a83f438f7855050957c81f7a6b35d3ae6e306f93092dbce457cfd38d"

      def install
        bin.install "kraft"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/unikraft/kraftkit/releases/download/v0.7.14/kraft_0.7.14_linux_arm64.tar.gz"
      sha256 "63f89619978a672ecd5bf6437ad1b3af66c146174dcf91e94ac63b1b79a1ec57"

      def install
        bin.install "kraft"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/unikraft/kraftkit/releases/download/v0.7.14/kraft_0.7.14_linux_amd64.tar.gz"
      sha256 "a7dbb460d0d7683b12f0040ff8a8ba3dcaad3521c3a17962bcfd1d354c8ba346"

      def install
        bin.install "kraft"
      end
    end
  end
end
