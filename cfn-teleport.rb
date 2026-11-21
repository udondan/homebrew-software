# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.52.8"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.8/cfn-teleport-x86_64-apple-darwin-v0.52.8.dmg"
      sha256 "f8f22fcf2ac78b331ee0432fdbd06d5c9c9ccb0bb44a496424351908974fa083"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.8/cfn-teleport-aarch64-apple-darwin-v0.52.8.dmg"
      sha256 "7d4d042cb1d306d91c2bdd373626463b5d9834693c810ef6af1c4d093147d607"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.8/cfn-teleport-aarch64-unknown-linux-musl-v0.52.8.tar.gz"
        sha256 "9f378584a51efe6335198490f114cb8b4b88dd5dd0336fd69d133712416e0267"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.8/cfn-teleport-arm-unknown-linux-musleabihf-v0.52.8.tar.gz"
        sha256 "4e551a3a768d65a207f008aa9735574dc0017b84aaab2053e43d0e2aada0bedc"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.8/cfn-teleport-x86_64-unknown-linux-musl-v0.52.8.tar.gz"
        sha256 "3db1fb265f2d00a933f3965ce8cf30f52349b17cb08cc2893c595da31c297b6a"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.8/cfn-teleport-i686-unknown-linux-musl-v0.52.8.tar.gz"
        sha256 "4b77977da19f0a900aeb6f7c9b46fd581035f8208dab9a37cdcdae7ba41b3b70"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

