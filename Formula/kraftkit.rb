# Copyright (c) Unikraft GmbH
# SPDX-License-Identifier: BSD-3-Clause

class Kraftkit < Formula
  desc "Build and use highly customized and ultra-lightweight unikernels."
  homepage "https://kraftkit.sh"
  version "0.7.0"
  depends_on "gnu-sed"
  depends_on "make"
  depends_on "coreutils"
  depends_on "m4"
  depends_on "gawk"
  depends_on "grep"
  depends_on "wget"
  depends_on "qemu"
  depends_on "socat"
  depends_on "x86_64-elf-binutils"
  depends_on "x86_64-elf-gcc"
  depends_on "aarch64-elf-binutils"
  depends_on "aarch64-elf-gcc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/unikraft/kraftkit/releases/download/v0.7.0/kraftkit_0.7.0_darwin_universal.zip"
    sha256 "9ecbfc56f7df173c5080549f10a2b692de17ca9a14fac3cf1bc6d77d0984c679"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/unikraft/kraftkit/releases/download/v0.7.0/kraftkit_0.7.0_darwin_universal.zip"
    sha256 "9ecbfc56f7df173c5080549f10a2b692de17ca9a14fac3cf1bc6d77d0984c679"
  end

  conflicts_with "kraft"

  def install
    bin.install "kraft"
  end

  test do
    system "#{bin}/kraft version"
  end
end
