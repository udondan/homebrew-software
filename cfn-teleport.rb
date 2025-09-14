# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.37.2"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.37.2/cfn-teleport-x86_64-apple-darwin-v0.37.2.dmg"
      sha256 "e1fe35520b179006374f64ccf2bb74fb72d47ce1773c052cbdfe8fd3cb84a55e"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.37.2/cfn-teleport-aarch64-apple-darwin-v0.37.2.dmg"
      sha256 "59c81c70b9e9f40a79c161f502c50b3ee5c70c2d9b1ddb4902577f5022eceda1"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.37.2/cfn-teleport-aarch64-unknown-linux-gnu-v0.37.2.tar.gz"
        sha256 "b9c1bb9af6fb5d6d7f765254ac14df5c5ec2d473fdb1c87da9f8994fcd8a96ba"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.37.2/cfn-teleport-arm-unknown-linux-gnueabihf-v0.37.2.tar.gz"
        sha256 "02c1444715f43ab1d4c53386cca3929b26f1dde755cd4ca6e4743e1c604928d2"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.37.2/cfn-teleport-x86_64-unknown-linux-gnu-v0.37.2.tar.gz"
        sha256 "413b84b1a0cec5336f88debd435a0b8f38025c2f543bc9426168bf92e59ac89e"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.37.2/cfn-teleport-i686-unknown-linux-gnu-v0.37.2.tar.gz"
        sha256 "5842011e88191553f63492b93800fbc6ccc1c21f42c44bd5dd25ddf96134c26b"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

