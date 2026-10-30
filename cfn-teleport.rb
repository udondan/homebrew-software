# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.52.4"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.4/cfn-teleport-x86_64-apple-darwin-v0.52.4.dmg"
      sha256 "90e3528b4c1b5e57694f38881fabe48e6738f6bdc9c12404355a4195a20e7972"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.4/cfn-teleport-aarch64-apple-darwin-v0.52.4.dmg"
      sha256 "365ba4ab72dca30721b9d85582a45cf15be8428821f847180502b6e20da4e958"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.4/cfn-teleport-aarch64-unknown-linux-musl-v0.52.4.tar.gz"
        sha256 "6e45a45f036082bfbd63c6b1f02b46b672f32e3c9b1f89893adde02ce2792445"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.4/cfn-teleport-arm-unknown-linux-musleabihf-v0.52.4.tar.gz"
        sha256 "48d20c6f9223ce6c0785c21b31f6e886428860e2d7ce220d687a60ffa75cf20a"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.4/cfn-teleport-x86_64-unknown-linux-musl-v0.52.4.tar.gz"
        sha256 "26b661108260e8421fdf0d347f151f5562475966df405512054d86a585ea3e11"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.4/cfn-teleport-i686-unknown-linux-musl-v0.52.4.tar.gz"
        sha256 "e68e1f8c42791b8c7dea8d995d5ecdc0ea112cd4011388fb753af001e5490424"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

