# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.22.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.22.0/cfn-teleport-x86_64-apple-darwin-v0.22.0.dmg"
      sha256 "ef1e33907e17901827db0ac22775a1dcd5174621da5b6ae3a3032cfb679c3fa1"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.22.0/cfn-teleport-aarch64-apple-darwin-v0.22.0.dmg"
      sha256 "a3259e5f3c5e13e0d43f81d6e7190c56170a3646a46cc4e7d1ee4941dfe945f3"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.22.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.22.0.tar.gz"
        sha256 "066e3d4d0c4e5b2eec08dcf618ec89c8ed09ec1b037c5de5c02f8fdc5228d595"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.22.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.22.0.tar.gz"
        sha256 "fb4a376c4f8d3fd052baa6db87d1e97430af1de895c1f8ac1c9211e23b92b3d3"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.22.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.22.0.tar.gz"
        sha256 "9b174ac45ef67beb481bb13269f2ddf1e8c08a33b010b31536f16cd8d00c5885"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.22.0/cfn-teleport-i686-unknown-linux-gnu-v0.22.0.tar.gz"
        sha256 "baf9822b862f49c109b286ad30770a7d10cf7fe1a6adac5476d07a56073d4c8b"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

