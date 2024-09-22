# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.25.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.25.0/cfn-teleport-x86_64-apple-darwin-v0.25.0.dmg"
      sha256 "cc000a4d6d5ed7d163c350546f20ac470e31f7ebacd7ebf6b01edcbe10fa7c70"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.25.0/cfn-teleport-aarch64-apple-darwin-v0.25.0.dmg"
      sha256 "b183f667c75e1205f0021edfef88f2009b0fd86acef5036f66f29162f4d679b1"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.25.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.25.0.tar.gz"
        sha256 "31c320ac52c8f64dc0e753a9dae69153a78fbf4aada029d9d91f90488f8f7f58"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.25.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.25.0.tar.gz"
        sha256 "929e3438bdabe211437a4821d47fd3c46f76e096dc52bc0609909245de5cb9c8"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.25.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.25.0.tar.gz"
        sha256 "3153bc10820cb9add1b7bc9096bda7b0f5e0362837d32131b5cc2073c14504e5"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.25.0/cfn-teleport-i686-unknown-linux-gnu-v0.25.0.tar.gz"
        sha256 "e77fb38d5ae85810d1a112d549c1538a91240574875f4adf1fedb85b0112e175"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

