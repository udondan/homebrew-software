# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.9.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.9.0/cfn-teleport-x86_64-apple-darwin-v0.9.0.dmg"
      sha256 "c0f62a745f519fd6039271fd7694757164a7f0d744c6c2aa934867fc69564089"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.9.0/cfn-teleport-aarch64-apple-darwin-v0.9.0.dmg"
      sha256 "9a3fabb4831505206e48a2a97823f5102d08564a54b7bd6a0f82c5ddc6f616ec"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.9.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.9.0.tar.gz"
        sha256 "ab4616c946afdeacdb1d38c719bb055979859a5ece7eb5d755da797f88853cea"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.9.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.9.0.tar.gz"
        sha256 "423a30b07d83eb4bb1decbd7b5e57b7e83bb1c9a0caa5a5df30ad2a16f595524"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.9.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.9.0.tar.gz"
        sha256 "99efff84a71d49fc08ec67ec3cd0ffe192a39bd34dec0d8f46f0c76306a6af7f"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.9.0/cfn-teleport-i686-unknown-linux-gnu-v0.9.0.tar.gz"
        sha256 "4d11a7b1affa6622981588dc27644388101961cd08315baaac02e6fa610e5486"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

