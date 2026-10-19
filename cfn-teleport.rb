# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.52.2"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.2/cfn-teleport-x86_64-apple-darwin-v0.52.2.dmg"
      sha256 "d0d99593e7373001727b4f108b207a87bc0110856ec7ed6f6f12aa67870894ff"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.2/cfn-teleport-aarch64-apple-darwin-v0.52.2.dmg"
      sha256 "2fa0c62956b6c37c0a31bd321530a8bcabc8a86dddc168a08c62cd0590e3fa00"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.2/cfn-teleport-aarch64-unknown-linux-musl-v0.52.2.tar.gz"
        sha256 "1c1448810be11212891b6b1cfe77b9d782300617f81b52bc4ae11035c10f01d6"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.2/cfn-teleport-arm-unknown-linux-musleabihf-v0.52.2.tar.gz"
        sha256 "07ced18dd0a36a98da9a50cbe74a4369045bf92a90cc92ca690cac825fa2aa3c"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.2/cfn-teleport-x86_64-unknown-linux-musl-v0.52.2.tar.gz"
        sha256 "7e2b3fc2d959a8341460e35e6e3adfb1e58a06e5796f2fb78826043b3ee67206"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.2/cfn-teleport-i686-unknown-linux-musl-v0.52.2.tar.gz"
        sha256 "746edf0d585e341e5225730052ef1a5bdf4b2dd75e4e8b5908b1fb4983f52941"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

