# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.52.6"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.6/cfn-teleport-x86_64-apple-darwin-v0.52.6.dmg"
      sha256 "3772adb892050dad890b61033797e69261dcf998464104859ac1e4da3f7b0f86"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.6/cfn-teleport-aarch64-apple-darwin-v0.52.6.dmg"
      sha256 "27deed6103d0964fc896651719ab304ff3389cd35e687b22e8f09191261c8862"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.6/cfn-teleport-aarch64-unknown-linux-musl-v0.52.6.tar.gz"
        sha256 "1bcae4fb9a79e4b41ff6ca12d39265c626e732dbd02c495bba477827ba69fddb"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.6/cfn-teleport-arm-unknown-linux-musleabihf-v0.52.6.tar.gz"
        sha256 "52857570ba5dd8d04d06a480989062a10a7337aaef1a2fc52151453bc5d4edb8"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.6/cfn-teleport-x86_64-unknown-linux-musl-v0.52.6.tar.gz"
        sha256 "6567c43b2a654c809be58632ef2b551a1c1d13d89485bce749194fd2903e23a7"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.6/cfn-teleport-i686-unknown-linux-musl-v0.52.6.tar.gz"
        sha256 "c3b7ac9c2291da0ea82db29a9c98683ccf19f0d389864a8d91e8fe992898ca0e"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

