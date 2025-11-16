# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.45.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.45.0/cfn-teleport-x86_64-apple-darwin-v0.45.0.dmg"
      sha256 "f75df0ba52cc84cd44f74d0bd8c24c10df4e135b9efa11c86e82e1ff28eeb6b7"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.45.0/cfn-teleport-aarch64-apple-darwin-v0.45.0.dmg"
      sha256 "0ac450cf43b57df7d0657cda91ec0248f281c60c63da4b7a748a61cba1f75c26"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.45.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.45.0.tar.gz"
        sha256 "1a70001918b7b7073479ec26d740c09701b2b390f5a6dc50e705fa997b146630"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.45.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.45.0.tar.gz"
        sha256 "6eea76aa6157678520daa52e302c73b83dd885f94da7e631869e31089dc0d04e"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.45.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.45.0.tar.gz"
        sha256 "c72bdac8d49c8b3ad1498cf0e2edec4e92aebf8f244a442c3c9e3870995717c8"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.45.0/cfn-teleport-i686-unknown-linux-gnu-v0.45.0.tar.gz"
        sha256 "8408b5c74487f0621a7205ecdb86735f372c515427bf3f23737eb41c824a01b5"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

