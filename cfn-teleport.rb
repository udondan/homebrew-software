# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "9.9.9"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/udondan/cfn-teleport/releases/download/v9.9.9/cfn-teleport-x86_64-apple-darwin-v9.9.9.dmg"
    sha256 "05acfe0a237bb57e64edbf62e75ff51508f20f4167dd9db87b0031ddb6fba6ad"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/udondan/cfn-teleport/releases/download/v9.9.9/cfn-teleport-aarch64-apple-darwin-v9.9.9.dmg"
    sha256 "f9c79d02bca07c2b909204a9d7ed91e84960ad7ff9df0f8be106e504e0b258a2"
  end

  def install
    bin.install "cfn-teleport"
  end
end

