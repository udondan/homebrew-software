# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.30.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.30.0/cfn-teleport-x86_64-apple-darwin-v0.30.0.dmg"
      sha256 "06112c7609f7bbecaeacf157a0389ccbdf6a13d73f064b4432d1eb4d041bbdd8"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.30.0/cfn-teleport-aarch64-apple-darwin-v0.30.0.dmg"
      sha256 "9e2a419b3b9ba585813f51162aa224bebb8eb73d057dac7f123beafe45ddf7b2"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.30.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.30.0.tar.gz"
        sha256 "d172f019d432341428005ad3ec4e24029b27a45498b210f84d870bf74b345a6b"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.30.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.30.0.tar.gz"
        sha256 "2bb9aa910ab13b9d5e6220740e4329cb17ae75eba4d9a39f7fcedfcd2f3457b4"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.30.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.30.0.tar.gz"
        sha256 "b0567df5135108f0bd5d1e96d2c9ed9ecf8ad953272d98b507dcb4c5fe7e17dc"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.30.0/cfn-teleport-i686-unknown-linux-gnu-v0.30.0.tar.gz"
        sha256 "d958ab00560768164fd40b693ed1387a74eab84ae643c3e63b8d96b93c826d8c"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

