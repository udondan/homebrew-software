# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.5.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.5.0/cfn-teleport-x86_64-apple-darwin-v0.5.0.dmg"
      sha256 "d26202dc17050949dbd5132a11ca49818a6d8d2d5c0a37ca420f980270a5485b"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.5.0/cfn-teleport-aarch64-apple-darwin-v0.5.0.dmg"
      sha256 "07458937bb7ac27a1926f3129f1af5ac96d93224e2681587a62783b67b7ef3ba"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.5.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.5.0.tar.gz"
        sha256 "2576de23b66089ef43189db65fb9f6a7c2e4d92fff71396b88da97a3f109aec1"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.5.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.5.0.tar.gz"
        sha256 "9e2e25ac43413aff288838d57c31617e8e959a41a83619570ce1216227bbdbb1"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.5.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.5.0.tar.gz"
        sha256 "ad21c80f81d20ae7396ed1d05b512e6e741b3f51e1575ed661d68f397b4f285a"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.5.0/cfn-teleport-i686-unknown-linux-gnu-v0.5.0.tar.gz"
        sha256 "ad2155f866408fef685aa4951e8d4a4d8adfe0a96ff981c4a5096b1b170c0bd7"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

