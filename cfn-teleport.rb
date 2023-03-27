# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "9.9.9"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/udondan/cfn-teleport/releases/download/9.9.9/artifacts/cfn-teleport-x86_64-apple-darwin-v9.9.9.dmg"
    sha256 "03026ad4e2a5a3f678df3443b4413db2c1cdbb79f5cfd981a1148b385de4f378"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/udondan/cfn-teleport/releases/download/9.9.9/artifacts/cfn-teleport-aarch64-apple-darwin-v9.9.9.dmg"
    sha256 "b9419ba1b7c9e38ac89dec99999b3898763d2433997fcbc6e59c24cde9a20d80"
  end

  def install
    bin.install "cfn-teleport"
  end
end

