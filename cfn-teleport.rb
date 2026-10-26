# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.52.3"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.3/cfn-teleport-x86_64-apple-darwin-v0.52.3.dmg"
      sha256 "54bb8575d5430ce8939879a2b0e842488c45ea8aa5253404f500f2587c2782ae"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.3/cfn-teleport-aarch64-apple-darwin-v0.52.3.dmg"
      sha256 "9f20a4f57e29e6519f9e43fc5cb692720179ddd3fb7badfdf64353b0eb7b0047"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.3/cfn-teleport-aarch64-unknown-linux-musl-v0.52.3.tar.gz"
        sha256 "625a9c8cfa8a17374086b98a92b98653499542fce865bc78cf3dc5a3c4b65db1"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.3/cfn-teleport-arm-unknown-linux-musleabihf-v0.52.3.tar.gz"
        sha256 "4fced590c839ccf742914d11a7df8255e9d04fd40a8b43ce5c61320e652cf688"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.3/cfn-teleport-x86_64-unknown-linux-musl-v0.52.3.tar.gz"
        sha256 "8f56858403cfd6391d07e1da9d1aac67b736f208921d74ad6bd0aab6fa7d765e"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.3/cfn-teleport-i686-unknown-linux-musl-v0.52.3.tar.gz"
        sha256 "5721ddf661512e8b915eab7940ad2d3f60f0c9bde35bc8a595614caf7691a196"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

