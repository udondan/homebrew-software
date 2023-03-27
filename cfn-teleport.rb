# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "9.9.9"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/udondan/cfn-teleport/releases/download/v9.9.9/artifacts/cfn-teleport-x86_64-apple-darwin-v9.9.9.dmg"
    sha256 "78b415e5516256010544e796821134aca4409952dcef932b9cf23b7e170873b9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/udondan/cfn-teleport/releases/download/v9.9.9/artifacts/cfn-teleport-aarch64-apple-darwin-v9.9.9.dmg"
    sha256 "36a324447f0f487ef29f7f490c35977314d282f2b55da769e3ec205c424b951c"
  end

  def install
    bin.install "cfn-teleport"
  end
end

