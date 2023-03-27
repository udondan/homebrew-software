# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line tool which can migrate CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.2.0"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/udondan/cfn-teleport/releases/download/v0.2.0/cfn-teleport-x86_64-apple-darwin-v0.2.0.dmg"
    sha256 "b46a111bc862d7421f9154bd3722b44e55e78aef37982fcf6ef539aa4f007f18"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/udondan/cfn-teleport/releases/download/v0.2.0/cfn-teleport-aarch64-apple-darwin-v0.2.0.dmg"
    sha256 "5b94abd2c19101a5cc9d35c2a074251e90daed4afdc71f68def922e7c4c4d2e9"
  end

  def install
    bin.install "cfn-teleport"
  end
end
