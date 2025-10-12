# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.41.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.41.0/cfn-teleport-x86_64-apple-darwin-v0.41.0.dmg"
      sha256 "6d5ebd3c922eba6d1fb3e3ed9e08906b7ee46c12af395884e3e26d2d0aa8b320"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.41.0/cfn-teleport-aarch64-apple-darwin-v0.41.0.dmg"
      sha256 "ce85e33e892edb612262bc54814d1dfae912195340a1838b513966a444c4d555"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.41.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.41.0.tar.gz"
        sha256 "330a697dcd4a46ad81484427aa31ecff9c90073a667f3eb7ad6f7470b2209fdf"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.41.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.41.0.tar.gz"
        sha256 "ecc1f6a9667e25cf04eddd3c756306d07db1abdfdc72740fe21cfb3d9867a51c"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.41.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.41.0.tar.gz"
        sha256 "ddb67a69387e8a46c7e45b0175b1a9e0b77436fcab7f5a3855b54d016fe3e290"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.41.0/cfn-teleport-i686-unknown-linux-gnu-v0.41.0.tar.gz"
        sha256 "4857de3a1cc056e2dbb94b41a39a96652c43f402fcd880382709f272b0fb82a2"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

