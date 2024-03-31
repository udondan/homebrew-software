# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.19.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.19.0/cfn-teleport-x86_64-apple-darwin-v0.19.0.dmg"
      sha256 "bea087efc77a143d1cfe9d50f592eacb3b0b5c61a02721cd7fbda0e20299f253"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.19.0/cfn-teleport-aarch64-apple-darwin-v0.19.0.dmg"
      sha256 "fc66e28f5bab5142b1aaa04b91d740674e0b1bb599af1cd8cddc0279c724a9f4"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.19.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.19.0.tar.gz"
        sha256 "35ea8cfd5127b236cabdae39a30da040448d493538cc2756233dd000eb63781b"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.19.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.19.0.tar.gz"
        sha256 "ad423637483eabeab5e18b90ceff8a48f487d1bb0f3e059feefb4a58969a19c5"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.19.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.19.0.tar.gz"
        sha256 "4fc82f86192fa17668983447ca895bef74bfc32e20d62502e12a522af0383988"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.19.0/cfn-teleport-i686-unknown-linux-gnu-v0.19.0.tar.gz"
        sha256 "a09fbc9e55f0a553df833cc835cd7d9327501c4f4a7e2c37923f3a52fedf992f"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

