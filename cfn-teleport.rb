# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.3.0"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/udondan/cfn-teleport/releases/download/v0.3.0/cfn-teleport-x86_64-apple-darwin-v0.3.0.dmg"
    sha256 "38a1c6ed3f9cbeeb740f740b5a873b9f79890a57cf5809e1689dd94a000ab4d0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/udondan/cfn-teleport/releases/download/v0.3.0/cfn-teleport-aarch64-apple-darwin-v0.3.0.dmg"
    sha256 "60268354f83c87f0b33c7a1106370bcc5aedc67c80573b7679a04abd85241832"
  end

  def install
    bin.install "cfn-teleport"
  end
end

