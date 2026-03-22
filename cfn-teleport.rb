# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.49.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.49.0/cfn-teleport-x86_64-apple-darwin-v0.49.0.dmg"
      sha256 "8c27c796d4d28c8432d599ce2637dc57b583bfeef07d9b33f66adce5b8e71dab"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.49.0/cfn-teleport-aarch64-apple-darwin-v0.49.0.dmg"
      sha256 "61e152a1f005ad216d401b42e5236326971eb555c79ba69a9aae0370064bee52"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.49.0/cfn-teleport-aarch64-unknown-linux-musl-v0.49.0.tar.gz"
        sha256 "a39b1847c985b0f04ae0240f29f8ef19706f7e311ffdcb3d671ab25d2441480b"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.49.0/cfn-teleport-arm-unknown-linux-musleabihf-v0.49.0.tar.gz"
        sha256 "3d90e0474c47d2254dc7a8ff5c1ca892d79a5777ceb34f6da31c5524dc80f7c2"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.49.0/cfn-teleport-x86_64-unknown-linux-musl-v0.49.0.tar.gz"
        sha256 "bbd6405ce31a275e16e57b7611feb463e4f6b3a47e829e93399ce5e62115f5fe"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.49.0/cfn-teleport-i686-unknown-linux-musl-v0.49.0.tar.gz"
        sha256 "a49278c00e00834d18004f8da551896053beded825eb8559e0209d712a553a15"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

