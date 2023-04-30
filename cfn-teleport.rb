# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.3.1"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.3.1/cfn-teleport-x86_64-apple-darwin-v0.3.1.dmg"
      sha256 "fb4c991f4a6a8c38897c8c8a8c7f90faf5ca7a8c6bb226bc2d45bd8c43d352cb"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.3.1/cfn-teleport-aarch64-apple-darwin-v0.3.1.dmg"
      sha256 "b55bca77d43ede4f8effdf5a7baff349625874f49e53c086114c625b46375fe9"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.3.1/cfn-teleport-aarch64-unknown-linux-gnu-v0.3.1.tar.gz"
        sha256 "e2c3f6a165a100e5e9a42ea1f586b379fd4abf0e9c22d7c359a70b6a2b532291"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.3.1/cfn-teleport-arm-unknown-linux-gnueabihf-v0.3.1.tar.gz"
        sha256 "f32684f2cac672722bdf510ef05d10c90bcbff1a725c231850e8e442c94fa383"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.3.1/cfn-teleport-x86_64-unknown-linux-gnu-v0.3.1.tar.gz"
        sha256 "c2f0eaf3c882c69326aeaf44feefe7d09b19a4e620249480d554f87a3c35ea7b"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.3.1/cfn-teleport-i686-unknown-linux-gnu-v0.3.1.tar.gz"
        sha256 "b7d0dafc02fa2c8509e6343d9c4f2571d08cb3bd2935e9f9801641fe75c25bc0"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

