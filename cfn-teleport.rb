# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.31.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.31.0/cfn-teleport-x86_64-apple-darwin-v0.31.0.dmg"
      sha256 "aca7a6ba8bbaebabaa59fa07446fa37637bc4ecf08781bfb8223a826cc6aca33"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.31.0/cfn-teleport-aarch64-apple-darwin-v0.31.0.dmg"
      sha256 "65f0763b25e06f54a1fe611fc003fe21294c8561b0b5866885157f67569972db"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.31.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.31.0.tar.gz"
        sha256 "3a85c99454cd19e487bb99922395117d9b951159a7269df4b02bc76619e6e113"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.31.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.31.0.tar.gz"
        sha256 "9e799fbb531424e36fec4363007168dc560125db993a93dee44fe5bd79d86e6a"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.31.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.31.0.tar.gz"
        sha256 "dc962afa19e7b727998f4d1eab5146ff42b5528e643a78fb194b9b805e8e064d"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.31.0/cfn-teleport-i686-unknown-linux-gnu-v0.31.0.tar.gz"
        sha256 "cce916d574076f2cf9dd9f42e34c2693afd9f52d7720a6c7214c4287067a5231"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

