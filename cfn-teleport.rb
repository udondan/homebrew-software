# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.33.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.33.0/cfn-teleport-x86_64-apple-darwin-v0.33.0.dmg"
      sha256 "644e79fd2614dfed46fd6d49f885e105a332dc42f49e8c98559d310fa6c6cea9"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.33.0/cfn-teleport-aarch64-apple-darwin-v0.33.0.dmg"
      sha256 "71de05690f5fbc5453777da6bc85a3956389806d346f1afce4111c9a0d4c4a77"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.33.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.33.0.tar.gz"
        sha256 "bd119165cee4086b2ebbec3330c91451274153616dd8409ba486869ae1b398f3"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.33.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.33.0.tar.gz"
        sha256 "3ee1f41a22e5f78e98f1bf326366dab6b6b40ec7ded94b261e546f63183b7672"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.33.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.33.0.tar.gz"
        sha256 "bd482824a1d6985cbfcec8bcf54bca77175a8503a0a7096245564638c7a52ca8"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.33.0/cfn-teleport-i686-unknown-linux-gnu-v0.33.0.tar.gz"
        sha256 "c3322ff73ff5aba79901712e9e0b825fcedc1238ddad1089cee3f67f89167f76"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

