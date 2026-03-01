# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.48.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.48.0/cfn-teleport-x86_64-apple-darwin-v0.48.0.dmg"
      sha256 "fd0bce399c6a82c90c82c6778b9a97b4f892f05eda7bede833b79e0838c30bb7"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.48.0/cfn-teleport-aarch64-apple-darwin-v0.48.0.dmg"
      sha256 "161eae43833dced53ae5746f1075f02124c36e634ae9b5012b951a769d86f4f1"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.48.0/cfn-teleport-aarch64-unknown-linux-musl-v0.48.0.tar.gz"
        sha256 "91a7c8ad302a22eb2d522c7355b6d2e6bb72cca57e79d02931916147ac29196a"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.48.0/cfn-teleport-arm-unknown-linux-musleabihf-v0.48.0.tar.gz"
        sha256 "8579d5e0deeea0fdd07254c0ead11a31933f41e5185184b4a39000c14e0c6e98"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.48.0/cfn-teleport-x86_64-unknown-linux-musl-v0.48.0.tar.gz"
        sha256 "a683fa139da49827842abcc9345f0632e423c20cf608bdc4df654820638c2a2c"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.48.0/cfn-teleport-i686-unknown-linux-musl-v0.48.0.tar.gz"
        sha256 "c8bd3d50f948a445327112c04b4a0426b1adf0a394e471d46da870004621f244"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

