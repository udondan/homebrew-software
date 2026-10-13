# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.52.1"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.1/cfn-teleport-x86_64-apple-darwin-v0.52.1.dmg"
      sha256 "fa98c1bfe12e03cb0e281857b5d3da3d5a42e5053463773a8ffe01de39aeff97"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.1/cfn-teleport-aarch64-apple-darwin-v0.52.1.dmg"
      sha256 "886850161c232c6ba274c994d1585d6278a259caa733a1f281194ea22ccf3b80"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.1/cfn-teleport-aarch64-unknown-linux-musl-v0.52.1.tar.gz"
        sha256 "fc1a148833231d6958ff5f731f0996c67ea87972f23bd499674790d7dba7fd35"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.1/cfn-teleport-arm-unknown-linux-musleabihf-v0.52.1.tar.gz"
        sha256 "52002b1d7cca3d49289cd77db942be59abbb071d6ec620bb5f2ee3f32165bd8b"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.1/cfn-teleport-x86_64-unknown-linux-musl-v0.52.1.tar.gz"
        sha256 "1e8654ff542399250310e64ca5bdcfdb18f84806f31b17482eb8d16ce59d8bff"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.1/cfn-teleport-i686-unknown-linux-musl-v0.52.1.tar.gz"
        sha256 "4275ce8e5eab36b4313ef3deb35c38101576e820f92717328e971d4d7ebdc1c7"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

