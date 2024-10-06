# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.27.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.27.0/cfn-teleport-x86_64-apple-darwin-v0.27.0.dmg"
      sha256 "7cd83bf21a4af1c577a50fffff6e24f984c56fa3cc7a660b8684fb1286f17569"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.27.0/cfn-teleport-aarch64-apple-darwin-v0.27.0.dmg"
      sha256 "123837cc7107f373e738393b2dd125d5dac383d9ce5ca0e9929ff1a3f7f97683"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.27.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.27.0.tar.gz"
        sha256 "bd1b9bc1b7181de307e380919527173ab32f28cdba6afd389b53b40e8983295f"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.27.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.27.0.tar.gz"
        sha256 "2a3a5dd03c3b5a0c5d4e4ab8f2b9a1750c39cf23e8f81d46d7f8b08773ab2423"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.27.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.27.0.tar.gz"
        sha256 "c7842c8467493cea781e9ce8cbcb0e42b9c1828c0411dee9ee1acb175d93d290"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.27.0/cfn-teleport-i686-unknown-linux-gnu-v0.27.0.tar.gz"
        sha256 "937407add0a3dac0799f748363464617d7771ce199f6d1a1e46538c3b6e7c92d"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

