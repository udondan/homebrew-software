# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.23.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.23.0/cfn-teleport-x86_64-apple-darwin-v0.23.0.dmg"
      sha256 "093d32f21e6c25a1e7f24e549455d41d9c3c110fb50193f0b228a26bec8f3a5c"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.23.0/cfn-teleport-aarch64-apple-darwin-v0.23.0.dmg"
      sha256 "2ae315c3aaab5ecb7a9c72b43634bf12086d6145a4da5e4c7cf72174dd2ecfca"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.23.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.23.0.tar.gz"
        sha256 "82fa6a97fd2964f654fd87a97e25ed6adb67e5e29d3a057b94a9b6a693017304"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.23.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.23.0.tar.gz"
        sha256 "3c3a2cd6e9249c8e27d8be68107dd37bd1c491f382d6a44a12e7ef159d66b3ec"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.23.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.23.0.tar.gz"
        sha256 "6f1cc95bc2e117a439c4b2ad86a4932c0199ffd0d7f720abef8c0a732a238cd9"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.23.0/cfn-teleport-i686-unknown-linux-gnu-v0.23.0.tar.gz"
        sha256 "acb90559c8d51775a5221d60678425a0391c5e67ec1b4d17659e38cd0c7b2018"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

