# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "9.9.9"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/udondan/cfn-teleport/releases/download/v9.9.9/cfn-teleport-x86_64-apple-darwin-v9.9.9.dmg"
    sha256 "71b37c93bbcf3e69f10e6fa353f370b4fa9a01ce538ab9bffcd2cc164e5c030f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/udondan/cfn-teleport/releases/download/v9.9.9/cfn-teleport-aarch64-apple-darwin-v9.9.9.dmg"
    sha256 "ab2cec1a147b27ec10fa2eabc2d70e6a99199745b0d5c606aa666db18da04d89"
  end

  def install
    bin.install "cfn-teleport"
  end
end

