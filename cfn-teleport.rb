# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.43.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.43.0/cfn-teleport-x86_64-apple-darwin-v0.43.0.dmg"
      sha256 "043bd41e90df00bf93a32382fae7f9112cc093ee9e8c3e8fd5c966aec3af0cd8"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.43.0/cfn-teleport-aarch64-apple-darwin-v0.43.0.dmg"
      sha256 "964aeebcff9e5ad9f67f3b2778c9cd7c278af0c0c534271c023fc633c3f6eee1"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.43.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.43.0.tar.gz"
        sha256 "4d1208c6ec3d4b69e817b1e0c72e3f24562f280f99daf3191758eb785bc90fcb"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.43.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.43.0.tar.gz"
        sha256 "6e329e33ecf77c48e0409222f805ed54e1871a321f83602c63f49fd07d95c98e"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.43.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.43.0.tar.gz"
        sha256 "8eb3c4a635b60a83a83f9fbab44c3272083af770b74c67bdf85127e803ad3c20"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.43.0/cfn-teleport-i686-unknown-linux-gnu-v0.43.0.tar.gz"
        sha256 "8d25fd2fa1920192c65ba947d8548783954646f7112d8de01973cb97ac228074"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

