# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.29.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.29.0/cfn-teleport-x86_64-apple-darwin-v0.29.0.dmg"
      sha256 "ff241e98d2205b3615d3acfa46f0a5bccc9e7b19b73182a1373fa2d00855216f"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.29.0/cfn-teleport-aarch64-apple-darwin-v0.29.0.dmg"
      sha256 "fc2e1b9eb0902db574e266129aea774a75c9d1d9cb5bbb0491d96f8c2805a3f4"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.29.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.29.0.tar.gz"
        sha256 "f44adf42175ee81be0ec13d3e15644a18747959065239b319ed1c4b76fd3d2de"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.29.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.29.0.tar.gz"
        sha256 "697f311a61641d81cfcd3d0c8805719a0f4d174530388b0a6e6770b41a439842"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.29.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.29.0.tar.gz"
        sha256 "b14c995cccad78f6e567ba8f38790fdb4bd440e03d6b6d5da174326eb5e02381"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.29.0/cfn-teleport-i686-unknown-linux-gnu-v0.29.0.tar.gz"
        sha256 "9d11f26f794cfd401eff00c9753876075800db9160306df5819c7ac991643dfd"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

