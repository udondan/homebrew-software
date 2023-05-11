# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.4.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.4.0/cfn-teleport-x86_64-apple-darwin-v0.4.0.dmg"
      sha256 "26eb2c8a189c9d429d3b81ce54aba6c91fed760afbf58a6c23c964dcc88f6289"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.4.0/cfn-teleport-aarch64-apple-darwin-v0.4.0.dmg"
      sha256 "51d9d9cea696c038b988d3f98d345b4d652e37eb736c01bfb7cd672acc6734b6"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.4.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.4.0.tar.gz"
        sha256 "3196c142997cae8c4a44a9e1a488380d23f63852b069bd350c653738d2136b1f"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.4.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.4.0.tar.gz"
        sha256 "b03482839f6277bad03b3d70510e4cc0e0d54d7b2f757a6a726cfb8e702f8b76"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.4.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.4.0.tar.gz"
        sha256 "622a9f58fc9c33111b5f3a49c7b8ca460edf8d384653ecccb18082f380f15eb0"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.4.0/cfn-teleport-i686-unknown-linux-gnu-v0.4.0.tar.gz"
        sha256 "80e3bfba9696876ab21802eaf9ed0ede5e045d09b7d87772b9e25f1866f93e1c"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

