# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.35.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.35.0/cfn-teleport-x86_64-apple-darwin-v0.35.0.dmg"
      sha256 "47322fb1bee63f27a70458e2ed151a6db66f2ae44cf856611881de163bb456f6"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.35.0/cfn-teleport-aarch64-apple-darwin-v0.35.0.dmg"
      sha256 "fce1b24725d58e0b420dc69dce3eeaae00cf1ab26b00e742be997a78d8d780c9"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.35.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.35.0.tar.gz"
        sha256 "aba76e649ba9daaa2f7ceed7cbb641ab0ccc8dba714196af28ea7e49b4febcea"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.35.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.35.0.tar.gz"
        sha256 "0c8bff482d6501ce4eb5d4a6284a45caed33b595c51fbe241d72c01dcc53bdd2"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.35.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.35.0.tar.gz"
        sha256 "e94d4672c62ee260c6f5a07cc5b61e3b8237938764534329650dcdfe04d9958f"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.35.0/cfn-teleport-i686-unknown-linux-gnu-v0.35.0.tar.gz"
        sha256 "2ee88a4e6b91ffe7bebd3b517ed53de522f9189a469c9a7d879d652cc0fe08ad"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

