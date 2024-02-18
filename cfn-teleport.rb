# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.14.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.14.0/cfn-teleport-x86_64-apple-darwin-v0.14.0.dmg"
      sha256 "fbcd18ce7ab4e80b9b9db18fa0e1914e539ad37da4f211e3bfe74a32fbc1a4b3"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.14.0/cfn-teleport-aarch64-apple-darwin-v0.14.0.dmg"
      sha256 "ab62a70d971864828fa3c1158611154c5a7abbc21df15716a2ba2317e1c836ff"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.14.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.14.0.tar.gz"
        sha256 "c0d10828e73c551bd7dc51b30ca2423b62f7f3b29c83604837efcd5d6ac90c1f"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.14.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.14.0.tar.gz"
        sha256 "45251f8898445911792aae60d5f4b7148e8578f2cb2a6514ac340be913a85274"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.14.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.14.0.tar.gz"
        sha256 "e876c0a16bac122b755fff71a8db38f532673f6ff3407f959e88eac9ea3ef6c3"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.14.0/cfn-teleport-i686-unknown-linux-gnu-v0.14.0.tar.gz"
        sha256 "d46b1de6fbbbc379b2bfc163b58f03d0ef6772807a426d26fd0ffbacdeda5a2a"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

