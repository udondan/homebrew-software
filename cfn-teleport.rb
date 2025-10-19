# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.42.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.42.0/cfn-teleport-x86_64-apple-darwin-v0.42.0.dmg"
      sha256 "298bd33a6e6940cb08f0dba5918170b590ce8be2f84a464244281755073793a2"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.42.0/cfn-teleport-aarch64-apple-darwin-v0.42.0.dmg"
      sha256 "247630f2a9f91dc46e0171ba07a37aeb2cf49ee8e2c4b97780f0f090b72572ed"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.42.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.42.0.tar.gz"
        sha256 "6dec3e322ddd5bd3659a0edf1ebb3fe2c95fa157a31e2364ced3e052ba9cb694"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.42.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.42.0.tar.gz"
        sha256 "2db567631baabfe250f923eecf9975eb6ad7089d0e75024ba38138def5cc47f1"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.42.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.42.0.tar.gz"
        sha256 "ddb88b1e4a6d63e2b7abf62cbd1ace3dfdaecc9e2b2201fc3c5027e92fbf38c3"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.42.0/cfn-teleport-i686-unknown-linux-gnu-v0.42.0.tar.gz"
        sha256 "bf31bd68af5f68d67dd65aac048b134ab49c93ac0898d044369c0ce8ca9e3fc0"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

