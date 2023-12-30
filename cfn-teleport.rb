# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.11.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.11.0/cfn-teleport-x86_64-apple-darwin-v0.11.0.dmg"
      sha256 "d9479ec9437ea9d08722ec6012dc4b0be631167101656a9e732aa23c5053f45c"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.11.0/cfn-teleport-aarch64-apple-darwin-v0.11.0.dmg"
      sha256 "1b1df56e3ca775bdcd4b78e42cfc33ded5c0cd0761d30cd7e2fd3957f0d3bdb6"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.11.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.11.0.tar.gz"
        sha256 "1e9c2fe1b5094ec44e233bb53aef8f606de3ddde13d15cab5442ede694412bbd"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.11.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.11.0.tar.gz"
        sha256 "58afaa3dca6dec3665c9976ef108c37569a2fc431c9d11d2bfddcaaf35778578"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.11.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.11.0.tar.gz"
        sha256 "046f6348d35f0fe57c9eae9485032b20522938477251c0afbed7333586c2c2b3"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.11.0/cfn-teleport-i686-unknown-linux-gnu-v0.11.0.tar.gz"
        sha256 "7b31bd98ebecfcfee17d28ab55a234f84255ecf6beed7add2aba8ad9e800dd9b"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

