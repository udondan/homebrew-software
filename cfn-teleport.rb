# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.20.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.20.0/cfn-teleport-x86_64-apple-darwin-v0.20.0.dmg"
      sha256 "03d6168f8a4bf430ef3b1c6ea14ee7c34e31363f22eaa3e96ce7e1dc5b222f26"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.20.0/cfn-teleport-aarch64-apple-darwin-v0.20.0.dmg"
      sha256 "2153812b04a416bf916c258bd6a67f9006bc075301dab9a4d63b427d0d0ba1e7"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.20.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.20.0.tar.gz"
        sha256 "3ebf619d27b400c37c2416b6f0e4eacc1f45c0f3b35b83cee6edb504624e159e"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.20.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.20.0.tar.gz"
        sha256 "e6fc61cc868220edce0b56a669c0fbbf266bcd72bc8ac78ffc8792e9be82c4b3"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.20.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.20.0.tar.gz"
        sha256 "272d4a126972a4a25a4c4cef4370c2c03bcdad1295aefd474999fdaebe013787"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.20.0/cfn-teleport-i686-unknown-linux-gnu-v0.20.0.tar.gz"
        sha256 "e9fcbba93316f7271969317a837c90dad5d5cbcf9b1e557bc1f4c7d10fbabf22"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

