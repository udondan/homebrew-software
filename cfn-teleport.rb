# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.52.7"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.7/cfn-teleport-x86_64-apple-darwin-v0.52.7.dmg"
      sha256 "474757588bd32804d34a8ca6357c7aec004b98d3c6e98eef69b732bdcdddd1ee"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.7/cfn-teleport-aarch64-apple-darwin-v0.52.7.dmg"
      sha256 "23f04d1b7f5f105e0bffa67cf2575894b6d60828a3c0d221747faadefcad65a9"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.7/cfn-teleport-aarch64-unknown-linux-musl-v0.52.7.tar.gz"
        sha256 "b728a35ac51aab2ddbc8f1e8e6c173d5314d3ea1bc8a86282b887203406279d7"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.7/cfn-teleport-arm-unknown-linux-musleabihf-v0.52.7.tar.gz"
        sha256 "06221900d6100baea45948c24c56eaba3583b93350f7ef1650b21b0725f1a3c8"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.7/cfn-teleport-x86_64-unknown-linux-musl-v0.52.7.tar.gz"
        sha256 "9deb1bb7c6843af0ab72a38268f7de2eeac9e16605f5f608d982ad9cb64ccb61"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.7/cfn-teleport-i686-unknown-linux-musl-v0.52.7.tar.gz"
        sha256 "5e83c314a062da48445354aacad5576509a4b2828628fb91bb3c3ef5b3bb89d9"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

