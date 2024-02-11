# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.13.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.13.0/cfn-teleport-x86_64-apple-darwin-v0.13.0.dmg"
      sha256 "4d1bdb9a02fda67550a3477de707ca8ce7d802980c388885a4e24a3a2b1ee994"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.13.0/cfn-teleport-aarch64-apple-darwin-v0.13.0.dmg"
      sha256 "8c469272011d92b13721a075e8c76c60e053c228bf6c2563c7a0546c130a167e"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.13.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.13.0.tar.gz"
        sha256 "1616dfb927db95e4a32e317224e6f06eecc9a704b4cc11c16f3b047c37770a44"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.13.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.13.0.tar.gz"
        sha256 "1def790bfd13f369152533df6a3bd4d8d4a61189be96bd6a1a6da3716e679dae"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.13.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.13.0.tar.gz"
        sha256 "b0d7e62128de159bb0ccecbc1b9b78e2253f2ba0512c5e7468d81a3f377b2b2f"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.13.0/cfn-teleport-i686-unknown-linux-gnu-v0.13.0.tar.gz"
        sha256 "06a7f5cecc1bcb3b06efa3756b296feb42410aebe2892c46a1d5192ea5ccaff9"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

