# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.32.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.32.0/cfn-teleport-x86_64-apple-darwin-v0.32.0.dmg"
      sha256 "e852e2a1f255cace8c60055e4dc667e9498cfb02cb54a1c70cd873aff380ab52"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.32.0/cfn-teleport-aarch64-apple-darwin-v0.32.0.dmg"
      sha256 "968e78604257997a6940d1f33118cb49d7e1179d80f388c3aa442bd260be0e87"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.32.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.32.0.tar.gz"
        sha256 "14d1a98068af531db06dfc88658ad8f69bfff37858ecd7b37bbe8ecdbbf71980"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.32.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.32.0.tar.gz"
        sha256 "34d16b72db9dbdee545422614528321997a4c58a2521e8c836d1305717151506"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.32.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.32.0.tar.gz"
        sha256 "8dc479aff8daa08b86262667c093dfd4ca5436a4aad9eea6a65b02aadd5acaff"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.32.0/cfn-teleport-i686-unknown-linux-gnu-v0.32.0.tar.gz"
        sha256 "77078815c4e74acec0f384e2dfb14cd5e1a6a1216ff92326e07abdc30ab35a95"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

