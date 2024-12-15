# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.34.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.34.0/cfn-teleport-x86_64-apple-darwin-v0.34.0.dmg"
      sha256 "7241b42c0362b9e764e57567d52c8e8fea80e44ef3afd34023473497281b3b5f"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.34.0/cfn-teleport-aarch64-apple-darwin-v0.34.0.dmg"
      sha256 "18e8e4252be2b3f661f07e3d9f36bb75e08aec4dde89fc4337153196a69b8a21"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.34.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.34.0.tar.gz"
        sha256 "cd86df2f958dbde32b34777c71a60c1b0805e21d76ec8a0b7ade8296d1fee71b"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.34.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.34.0.tar.gz"
        sha256 "494584832ecd92c5c5a48758d974bf1f89137a2f1e27a9b6a574600593b68572"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.34.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.34.0.tar.gz"
        sha256 "d27d29f4b2b692aaa70689461e0862e120e631c4e86ffec487194b62f233ca5d"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.34.0/cfn-teleport-i686-unknown-linux-gnu-v0.34.0.tar.gz"
        sha256 "adc5f90e4e567bc857bcaf9eee22f7a7768b5c387546a2a4c6be5f304736e3da"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

