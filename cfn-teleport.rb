# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.24.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.24.0/cfn-teleport-x86_64-apple-darwin-v0.24.0.dmg"
      sha256 "0330378d1fc52081b27cd78680c161df382389e18d8843af6c0a2fdfd0387d45"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.24.0/cfn-teleport-aarch64-apple-darwin-v0.24.0.dmg"
      sha256 "2e0b027b733939be99b5d62aec2e0f46451e511d072d5264f9efa88fc0502055"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.24.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.24.0.tar.gz"
        sha256 "299b386a26b76da90dbd77a21c619cbb0cecf4bf2433feafc0e1ba596bcf847b"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.24.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.24.0.tar.gz"
        sha256 "b2c8fca4d7e1ef64708df19ef75d54305e9a3fc6d8a38195345384343fc8e571"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.24.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.24.0.tar.gz"
        sha256 "8d595823f333e8dcef11202b17a3c73c8d7e03492c8f066a1c3538a3049b12ef"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.24.0/cfn-teleport-i686-unknown-linux-gnu-v0.24.0.tar.gz"
        sha256 "934fbd799e2f66c19f2bab658d75fe9711a2f29b4c769808ee0f091d2587f304"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

