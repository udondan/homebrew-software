# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.52.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.0/cfn-teleport-x86_64-apple-darwin-v0.52.0.dmg"
      sha256 "89ccc8c9d6704408eaf84f3781dcbbaf697abbae4bb67b10d23291d64fb52e14"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.0/cfn-teleport-aarch64-apple-darwin-v0.52.0.dmg"
      sha256 "5b7bade95132ce6a0ea10daca1744fa2776b0896501345b92475beef0e05f135"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.0/cfn-teleport-aarch64-unknown-linux-musl-v0.52.0.tar.gz"
        sha256 "d47c8639f6cdcdd2eb9c3163338075088bc54a746bfe402606aca8aa45311296"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.0/cfn-teleport-arm-unknown-linux-musleabihf-v0.52.0.tar.gz"
        sha256 "c507b253497e1d2b608e89e6ff4718730da764eadada23211869a1f0a09bf8dc"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.0/cfn-teleport-x86_64-unknown-linux-musl-v0.52.0.tar.gz"
        sha256 "eb2bd1108bea51db2a9378dcda6bb24220eab1af956c3c071bf9048ccf241003"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.0/cfn-teleport-i686-unknown-linux-musl-v0.52.0.tar.gz"
        sha256 "71933cfcebfc27367c6bd19b8f468c664461a1f35ff9e739de2edde627834e56"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

