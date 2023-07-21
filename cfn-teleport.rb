# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.8.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.8.0/cfn-teleport-x86_64-apple-darwin-v0.8.0.dmg"
      sha256 "5d3b621dbbd27fed3e2a088a7f95dd6c9a8897a5be8b273822194ce5a33fc21e"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.8.0/cfn-teleport-aarch64-apple-darwin-v0.8.0.dmg"
      sha256 "20848917ffb7f07d4ef295d184641f60b6320897550ad0210e12ef1eefeb6fdf"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.8.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.8.0.tar.gz"
        sha256 "950d141a985c7dc0364a8ed35d55319aad8b127e90f0933a02730c28df231f85"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.8.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.8.0.tar.gz"
        sha256 "19de425099c0867a50ed0db5c00453fc28cd43905c82f2a9c210fba8016a67f5"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.8.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.8.0.tar.gz"
        sha256 "b54c3647ba8d88c6296b0460da6dd63c6dbbbfdfc432c9c762bc17e3064c645c"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.8.0/cfn-teleport-i686-unknown-linux-gnu-v0.8.0.tar.gz"
        sha256 "52248b07da6caa345c009b6f0da6e7635307e9751b61cb0a9a199499bc644acd"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

