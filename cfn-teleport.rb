# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.18.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.18.0/cfn-teleport-x86_64-apple-darwin-v0.18.0.dmg"
      sha256 "69efb93028295c0a331fcd397dbbfd1b11e5a851365330d1931cd1ac34cd5b3c"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.18.0/cfn-teleport-aarch64-apple-darwin-v0.18.0.dmg"
      sha256 "3be5691de2af852c973297aaca23360f17fc1861a2f29ff6f75e2b6c9b23c01f"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.18.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.18.0.tar.gz"
        sha256 "6f3c01caf891f526d6abdff85da4da606fc4d5483ae372b2eee869e9f40d07b2"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.18.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.18.0.tar.gz"
        sha256 "5cedb7c4242436f93b52945676a3fe464ced4f9f353724341ef16875095541b3"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.18.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.18.0.tar.gz"
        sha256 "8d64345038cd3f1af84892a192987c2b057795dba3a256bcdd1ab0d5108309ad"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.18.0/cfn-teleport-i686-unknown-linux-gnu-v0.18.0.tar.gz"
        sha256 "fdd6c39f3829cd94722ea1c1f6267401799d026c5d6085f04a91de3cbb2a3c98"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

