# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.36.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.36.0/cfn-teleport-x86_64-apple-darwin-v0.36.0.dmg"
      sha256 "f205b9fbee0dea31fc69b8f3d789dc47c26f22edd49807a0bc7715ff2fcc7c7f"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.36.0/cfn-teleport-aarch64-apple-darwin-v0.36.0.dmg"
      sha256 "f28ae69dc8fe893a540a08b1f9428f9f86a4aedfdca8a481ae267249ea88b7ad"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.36.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.36.0.tar.gz"
        sha256 "45b1e2a3ac4b8514f01e0ca79b9ab39308acc3f88f576782d23b61686842aceb"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.36.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.36.0.tar.gz"
        sha256 "295185f6525d7228dd231c946cd9f01b4babe9504cb0d4b5cb7898505746f9ae"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.36.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.36.0.tar.gz"
        sha256 "6e7d76a10aa9e8563bc65aecdb5a81153fdc739fe1ca77d234224a179f7a86fe"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.36.0/cfn-teleport-i686-unknown-linux-gnu-v0.36.0.tar.gz"
        sha256 "786cd5f907162fd3dd33ccb8a4fd4241c1ce356bdabd307757af4a166330c115"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

