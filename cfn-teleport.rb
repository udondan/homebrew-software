# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.15.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.15.0/cfn-teleport-x86_64-apple-darwin-v0.15.0.dmg"
      sha256 "34222255450c6e85a91f4e10ee54dba263a263246ddf22c961c6ddc2fec70fd5"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.15.0/cfn-teleport-aarch64-apple-darwin-v0.15.0.dmg"
      sha256 "d6d07775cb8f38d8d3cbfa03adc781a4b1da1b748ea7bc540debcd7ef68f6eef"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.15.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.15.0.tar.gz"
        sha256 "4884543bf1fe1bf12f3cec5dad3ece89a7f353689c22123c130dc3a5077f9355"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.15.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.15.0.tar.gz"
        sha256 "ee1cd0b38695752c186dd8e3ea6376c832e5d175c71511abd3bd20a187c074d0"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.15.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.15.0.tar.gz"
        sha256 "a7af55c23b811b3f73220eff880a103e5f8afbf857a9aa0d63f2eca5e8406105"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.15.0/cfn-teleport-i686-unknown-linux-gnu-v0.15.0.tar.gz"
        sha256 "c622a8a87e0cf771d47739b615b3292406147c34425ecf43744e95da57d1280a"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

