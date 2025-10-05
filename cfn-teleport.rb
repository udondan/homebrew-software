# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.40.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.40.0/cfn-teleport-x86_64-apple-darwin-v0.40.0.dmg"
      sha256 "3e97d55031db6814a5f6712de13fac2c3c267cc5b72dce6013bfe3729f1da66d"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.40.0/cfn-teleport-aarch64-apple-darwin-v0.40.0.dmg"
      sha256 "45735cc70ddcc2c5bb5e69526b376d3479b983253e7cb3f5147903fecfb88505"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.40.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.40.0.tar.gz"
        sha256 "d31965083fe975065e3a3661637187bfe90039780ad1f78b7b7408db593b99d3"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.40.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.40.0.tar.gz"
        sha256 "4b1d86dbe812f4ced57384f730641eee2229580c1382d83879022b64854dd904"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.40.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.40.0.tar.gz"
        sha256 "3d8e92f510cd67620ab9125063d11a510475d62f28b1079fe4595a9684ba4961"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.40.0/cfn-teleport-i686-unknown-linux-gnu-v0.40.0.tar.gz"
        sha256 "e28aa445ad826220c7a33de750add3c89a8862ddaf42308b605f7dc10dd651e2"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

