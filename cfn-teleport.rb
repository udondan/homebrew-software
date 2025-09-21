# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.38.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.38.0/cfn-teleport-x86_64-apple-darwin-v0.38.0.dmg"
      sha256 "ddd4f467bece6249473fcf65f3fbcdd294c9c736b063c304cedd043c84b08a24"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.38.0/cfn-teleport-aarch64-apple-darwin-v0.38.0.dmg"
      sha256 "4015ffb2364d4c1412ff56c4debbad47886e72f19f94e30b93f7da6dc6948002"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.38.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.38.0.tar.gz"
        sha256 "8eff4e927e2571bb9b3fe139024cf5a6c160031d296b99ed4e63813356f73a6b"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.38.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.38.0.tar.gz"
        sha256 "de50734216e51d928d199b6321a488eade793f7c3c1bdcf204460ffe9b17d922"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.38.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.38.0.tar.gz"
        sha256 "bcbd4f49fcf357c8d14b10c00995a824678a90c393a7534b5aee756729f84147"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.38.0/cfn-teleport-i686-unknown-linux-gnu-v0.38.0.tar.gz"
        sha256 "66d52efbab14d7a702dd48e72956141fc61a62dd3edc059bf0bc7bc704019a1c"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

