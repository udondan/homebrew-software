# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.10.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.10.0/cfn-teleport-x86_64-apple-darwin-v0.10.0.dmg"
      sha256 "833e113369d39f634f146b706b33418c8f3247128aed296b82b3bcb3bf956894"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.10.0/cfn-teleport-aarch64-apple-darwin-v0.10.0.dmg"
      sha256 "f79e1f6231a90bca87225ece016bf247fbb6846537fd110233632381414ef1a8"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.10.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.10.0.tar.gz"
        sha256 "0e9729d30d0ef3219f11404df7cb5bef736867b1aa76067ea4a3168409dc40fb"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.10.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.10.0.tar.gz"
        sha256 "e523e69c5e653c564facbdc44a7b1d0a3d8e260c524fd804d18f5c8765b31d93"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.10.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.10.0.tar.gz"
        sha256 "f3caaaaa19ab212a375edbce92ea3f0728791b8b5618fc0f20727fa807bb439c"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.10.0/cfn-teleport-i686-unknown-linux-gnu-v0.10.0.tar.gz"
        sha256 "855860971fbc2f06f2881c0e19fa17f799d23643d3a90aae74102d3a4e16abd0"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

