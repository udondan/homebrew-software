# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.12.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.12.0/cfn-teleport-x86_64-apple-darwin-v0.12.0.dmg"
      sha256 "bd9de35a6561e3604b58a3e8951082505047a99bdce1453225f485f4013d1575"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.12.0/cfn-teleport-aarch64-apple-darwin-v0.12.0.dmg"
      sha256 "202de3420dc09f25576cb58fea00eabfda38397a5d9c21cc0e2dc06ca9b44c17"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.12.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.12.0.tar.gz"
        sha256 "3e9aabd5ad273a4e16b50c610ce34b5f6bb9afdbbc9407085d20a2adcd3a643c"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.12.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.12.0.tar.gz"
        sha256 "d2380e22bdb42383a2885ad756535b3ab7f8bf9517b77ddd1aaa1b35f330984f"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.12.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.12.0.tar.gz"
        sha256 "b7d3d9664e3ba3ff4c33b57dbc8940f451d1cab479c9018c8feae8b22bc188cf"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.12.0/cfn-teleport-i686-unknown-linux-gnu-v0.12.0.tar.gz"
        sha256 "6792473c14eb2f8a512dd7deaf0f3738fc135a9bd475bd609f94efa545ed6f03"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

