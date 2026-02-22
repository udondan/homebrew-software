# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.47.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.47.0/cfn-teleport-x86_64-apple-darwin-v0.47.0.dmg"
      sha256 "e1cccc14162353dc038dd2c1acbfbfc161c06dc8cebd0c4c556e86c8a25edd77"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.47.0/cfn-teleport-aarch64-apple-darwin-v0.47.0.dmg"
      sha256 "55d54f016d32ace0555bf21bafab56e5915d166da2704ef6406002643e66e614"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.47.0/cfn-teleport-aarch64-unknown-linux-gnu-v0.47.0.tar.gz"
        sha256 "0665e254e7a5749667a19a58647c5dc3b2be7de742e6485fbf851634f75e78df"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.47.0/cfn-teleport-arm-unknown-linux-gnueabihf-v0.47.0.tar.gz"
        sha256 "04515b8f6bf0f56de79f8941add7fe3c497730fa69feefc43993d15fd23e92fe"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.47.0/cfn-teleport-x86_64-unknown-linux-gnu-v0.47.0.tar.gz"
        sha256 "8bc370d441479e1d66c1d635dfaab635eff38ae1f6e8346835f4454e8b10c71c"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.47.0/cfn-teleport-i686-unknown-linux-gnu-v0.47.0.tar.gz"
        sha256 "6d53552cf472b4a637afce361a46638668ff346aa5eae3e6da2961131e055e2d"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

