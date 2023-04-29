# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "9.9.9"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/udondan/cfn-teleport/releases/download/v9.9.9/cfn-teleport-x86_64-apple-darwin-v9.9.9.dmg"
    sha256 "e1d8490b08bfd96fd1c37b11b3c2ff5ebfe75bb8f25814a3d2d3db22cbbf2b28"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/udondan/cfn-teleport/releases/download/v9.9.9/cfn-teleport-aarch64-apple-darwin-v9.9.9.dmg"
    sha256 "91ec42af17533a6d29b9b8d032fb6314584bd820b708e70ef7e69bb4b8e467d6"
  end

  def install
    bin.install "cfn-teleport"
  end
end

