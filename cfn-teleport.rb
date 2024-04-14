# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.21.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.21.0/cfn-teleport-x86_64-apple-darwin-v0.21.0.dmg"
      sha256 "9931bae08c9ebf467235b748e01dca5e1999d7a717783e81462b4608c7a4bb7c"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.21.0/cfn-teleport-aarch64-apple-darwin-v0.21.0.dmg"
      sha256 "71d077bfd11ccbfe8d84566c73e917f966799fd1e83ad9a660bd0d16a261fefe"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.21.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.21.0.tar.gz"
        sha256 "f19549eb97fc91652ce19bdb3766e38aadde7ee4f4d155c4534744bd39ae1167"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.21.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.21.0.tar.gz"
        sha256 "ca70edc004bdf802eda79e2c05978c8530c431dd29772b280f0cc6cd1952b762"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.21.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.21.0.tar.gz"
        sha256 "61a60b543b759499179b372cf1b21b4390ea9fc33a363c030f8622f764fba26e"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.21.0/cfn-teleport-i686-unknown-linux-gnu-v0.21.0.tar.gz"
        sha256 "7734b1019f7bd4412184fa45ac87d7f2d03522746b4f49cf3ad40e9fb05c5cac"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

