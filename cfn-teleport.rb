# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.7.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.7.0/cfn-teleport-x86_64-apple-darwin-v0.7.0.dmg"
      sha256 "daf6be334040c13041aa534cdbc1ed457b42f9b7e968fc70f2ad33a01c5a7a56"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.7.0/cfn-teleport-aarch64-apple-darwin-v0.7.0.dmg"
      sha256 "c016f2f0c4e918e574059c0edc47cef7938e0792622b0a402550181aac824fdc"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.7.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.7.0.tar.gz"
        sha256 "bf9cb44c75d8d8bee134bb4e05a5ed327fad018aba207324441457ac0e4a54e1"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.7.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.7.0.tar.gz"
        sha256 "e2c0447577465bf0fcf2664059468ab2e2d8980f5e033f8fe38295334fac67a6"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.7.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.7.0.tar.gz"
        sha256 "eb4140e35835156716cbd4473b945cb7feb1d22d73d34d61b9ef09a1fc71c0d0"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.7.0/cfn-teleport-i686-unknown-linux-gnu-v0.7.0.tar.gz"
        sha256 "8c5f20ec6367e0cfff1395afdeee1a289160133095b009085a58afff7d22d67b"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

