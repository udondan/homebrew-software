# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.39.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.39.0/cfn-teleport-x86_64-apple-darwin-v0.39.0.dmg"
      sha256 "6329ade930042562883aca077747e12437383320f737113703dc1628311081a0"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.39.0/cfn-teleport-aarch64-apple-darwin-v0.39.0.dmg"
      sha256 "306db83c2c35cf19f241da292fcda7ee98fe4de855bc07e7e932a2e73ac1c9ac"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.39.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.39.0.tar.gz"
        sha256 "37d86f75104cab86680a2be6dec8954cf07b52ee7292ec0013124e484171ff55"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.39.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.39.0.tar.gz"
        sha256 "a573156c541415b17bb22e90cd6b593ad0f6587d3616e8789bb8c3bb5d4e5c86"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.39.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.39.0.tar.gz"
        sha256 "5f2842c0467dcf34e7a8b399251c570e2543243eddfb8c23b425d46ecb7b4162"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.39.0/cfn-teleport-i686-unknown-linux-gnu-v0.39.0.tar.gz"
        sha256 "4876e23e70301657c6294c8dfb5beee3dd4f4c1dc7aea8754742a54fd2092ec1"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

