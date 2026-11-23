# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.52.9"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.9/cfn-teleport-x86_64-apple-darwin-v0.52.9.dmg"
      sha256 "103de2ae115d459edc8901e5af3fac5dffed0d7c59a89272de7e9eed5b6cc56b"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.9/cfn-teleport-aarch64-apple-darwin-v0.52.9.dmg"
      sha256 "6b82cf635e8207bc4d2669e99f31d3c49a30f06d5d248780c5f978ff82674af8"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.9/cfn-teleport-aarch64-unknown-linux-musl-v0.52.9.tar.gz"
        sha256 "e00f29e5d2bb2267cc25dae59372ff428cd0491b0641c6189767a79ee3d31e00"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.9/cfn-teleport-arm-unknown-linux-musleabihf-v0.52.9.tar.gz"
        sha256 "e9e86a85520efff6f116c41e923d1183437b1dc77218e11db2f5b268f04a1ee1"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.9/cfn-teleport-x86_64-unknown-linux-musl-v0.52.9.tar.gz"
        sha256 "07b4daa7d406c6548bb2288de3facaec141e8c8161d6cb8be09d4c83503656b6"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.9/cfn-teleport-i686-unknown-linux-musl-v0.52.9.tar.gz"
        sha256 "19201313c4996bcffab594a69f5bf7967554beb5bc0ec850f726b6c3ffa4b307"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

