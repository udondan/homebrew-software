# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.17.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.17.0/cfn-teleport-x86_64-apple-darwin-v0.17.0.dmg"
      sha256 "a1e7b67e99e283362bac9985f9bc3e8aab2ae397dfa7fb109084fc022515ce0c"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.17.0/cfn-teleport-aarch64-apple-darwin-v0.17.0.dmg"
      sha256 "d1c98362d8c5878e3e2138e11ba9e9f7d6ccd6a192653f9ad06a3ccda0c7e5b5"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.17.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.17.0.tar.gz"
        sha256 "fd0036067b739e96416f2a09cd9813d1e611baf7f7b27a6147c2b8b79658743e"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.17.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.17.0.tar.gz"
        sha256 "42567ee80ef0325cf92220ad899a3b07d4485ed0e92ffa86f2dce3510f97a13c"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.17.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.17.0.tar.gz"
        sha256 "20b73cf36ceb3276d28c17894dbaf99f798e0ac3786136d02ef0f75f3991f006"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.17.0/cfn-teleport-i686-unknown-linux-gnu-v0.17.0.tar.gz"
        sha256 "ca759d8067affeb6a224ff72cb0d2729def6891d2343ac81ca22eb7a4a1f161b"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

