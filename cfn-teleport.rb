# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.26.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.26.0/cfn-teleport-x86_64-apple-darwin-v0.26.0.dmg"
      sha256 "0e35e52c694d9d245c9a7aa98784f1f777001e66797ad27430e019f00c32bf79"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.26.0/cfn-teleport-aarch64-apple-darwin-v0.26.0.dmg"
      sha256 "91c0849272aadc3b50d07069608eacc72f31c7f9078b4ba351b470c1e0f103af"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.26.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.26.0.tar.gz"
        sha256 "5c788429409b6fa829909d3a5731c02b7b2b20f4e87b63e20a8cee6d23c35ceb"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.26.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.26.0.tar.gz"
        sha256 "174b4a941be4a96eabc2f28701d403118c5a7d319d8615f7cee1b72b038637f8"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.26.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.26.0.tar.gz"
        sha256 "298fced3a3dc663547b1c82a5505c5c7427efb742af7f3e4d2789fdb188728dd"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.26.0/cfn-teleport-i686-unknown-linux-gnu-v0.26.0.tar.gz"
        sha256 "4c0902442b1e6fe505feed1bf0149f202b567d4a156fbaceefc3e59f3dc5d87c"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

