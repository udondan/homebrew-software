# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.28.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.28.0/cfn-teleport-x86_64-apple-darwin-v0.28.0.dmg"
      sha256 "22e48c2a82bad20fc8977cfa7b1d7ecae7caa9a2c697d87eea0c187d3e45b05d"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.28.0/cfn-teleport-aarch64-apple-darwin-v0.28.0.dmg"
      sha256 "3654959a201d4faff1b9618d9350d98da4aaaa9ad11e5b5b036b5a613bca3f47"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.28.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.28.0.tar.gz"
        sha256 "884f3e916a399471822415f217289198c3a04a72095fbb40d68c90b42aaeccb5"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.28.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.28.0.tar.gz"
        sha256 "a341d263837b1c42d836b933748efc70cc5e7fe2afa2b407f0b41be0431cc8a2"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.28.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.28.0.tar.gz"
        sha256 "f14e0a994319ea83cd2e7d46cc3a1a22471eba16f340031ec2aa2e457ac76f57"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.28.0/cfn-teleport-i686-unknown-linux-gnu-v0.28.0.tar.gz"
        sha256 "0398a5c68495428a0d0e3d757a64e25169d0f40fa38d257bfaaea6b15712a0fc"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

