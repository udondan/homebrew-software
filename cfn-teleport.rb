# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "9.9.9"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/udondan/cfn-teleport/releases/download/v9.9.9/cfn-teleport-x86_64-apple-darwin-v9.9.9.dmg"
    sha256 "efe3544c7e19bb77372f5c61cc07af3f60a4edf311fb62c9ec09902d1588464f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/udondan/cfn-teleport/releases/download/v9.9.9/cfn-teleport-aarch64-apple-darwin-v9.9.9.dmg"
    sha256 "8356592e39fdcced409207bbb19b9e239acd3bba2728ef2a2d20de3b4ba8ba3b"
  end

  def install
    bin.install "cfn-teleport"
  end
end

