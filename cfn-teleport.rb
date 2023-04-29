# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "9.9.9"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/udondan/cfn-teleport/releases/download/v9.9.9/cfn-teleport-x86_64-apple-darwin-v9.9.9.dmg"
    sha256 "af571c347c99e4661b0116d1d6e74604e49b40fa131cbc8099e997af7c720e22"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/udondan/cfn-teleport/releases/download/v9.9.9/cfn-teleport-aarch64-apple-darwin-v9.9.9.dmg"
    sha256 "851c15b3ae7834441be986ee6434420aed88518866abf5786bb898ddb46d9c1e"
  end

  def install
    bin.install "cfn-teleport"
  end
end

