# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.6.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.6.0/cfn-teleport-x86_64-apple-darwin-v0.6.0.dmg"
      sha256 "4157e6fe21742bdf86eb8d29bc388a1e365ba1720d55e1364cecb389e2abda9a"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.6.0/cfn-teleport-aarch64-apple-darwin-v0.6.0.dmg"
      sha256 "f14e05ff0e13ca18a9105742c839082db1ff4415e5c3684059f49776fc1da127"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.6.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.6.0.tar.gz"
        sha256 "d4798681ed2f6e67fe81bf9d2c6c959dddb510e99967e4de2422ee5d4e9fb49a"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.6.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.6.0.tar.gz"
        sha256 "3a9eca3ec301dfd92c2a1029367ff0453cf93f9ddf65b315b49ec8e1cf8fa57c"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.6.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.6.0.tar.gz"
        sha256 "7c749b03c86dbdba3718ba429cbaa03143bafe472cd8c358c8e818886cb87e36"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.6.0/cfn-teleport-i686-unknown-linux-gnu-v0.6.0.tar.gz"
        sha256 "2ac60745f136768f8b792f3c3b5686cdce1fa2ea50b783595bd74eed057322ae"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

