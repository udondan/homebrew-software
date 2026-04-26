# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.50.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.50.0/cfn-teleport-x86_64-apple-darwin-v0.50.0.dmg"
      sha256 "e224072bac34414d4edaa14f4b226be865236c4365b2241af5a09ec24bce039e"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.50.0/cfn-teleport-aarch64-apple-darwin-v0.50.0.dmg"
      sha256 "9de655263dc59246f6077eb5e790a2ec0c1833ae5d5ad4dd311a94bdebe40566"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.50.0/cfn-teleport-aarch64-unknown-linux-musl-v0.50.0.tar.gz"
        sha256 "2ed2a7cbb9cd2885d1c80324f2273b0684a2d8dd317ecfdfccd8b4df28d6791b"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.50.0/cfn-teleport-arm-unknown-linux-musleabihf-v0.50.0.tar.gz"
        sha256 "2748c41506536799ababde87a1737c85552379afc159a23178b045556e772af4"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.50.0/cfn-teleport-x86_64-unknown-linux-musl-v0.50.0.tar.gz"
        sha256 "08984374d5a78b39834a3378e39eed830779f2316b36bbf08e6658ac55c70820"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.50.0/cfn-teleport-i686-unknown-linux-musl-v0.50.0.tar.gz"
        sha256 "1a9621483cbbe256797e77abb212d35674a8da6677b8d474c58c8e33d5ca2bc9"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

