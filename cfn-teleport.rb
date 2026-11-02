# typed: false
# frozen_string_literal: true

class CfnTeleport < Formula
  desc "A command line-tool which can move CloudFormation resources between stacks"
  homepage "https://github.com/udondan/cfn-teleport"
  version "0.52.5"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.5/cfn-teleport-x86_64-apple-darwin-v0.52.5.dmg"
      sha256 "d8eec72795eb543a09fe77f2d362404c348635bf8378b3c0ebd1ea8824d7da70"
    elsif Hardware::CPU.arm?
      url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.5/cfn-teleport-aarch64-apple-darwin-v0.52.5.dmg"
      sha256 "cb09316baa53aba342900be56cd8197edb9e782f82900366e9e09be33454e586"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.5/cfn-teleport-aarch64-unknown-linux-musl-v0.52.5.tar.gz"
        sha256 "17cafa80049b3361f82d61b177ef1b33a663db5f18b7c3c14326bf71fb8e98fd"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.5/cfn-teleport-arm-unknown-linux-musleabihf-v0.52.5.tar.gz"
        sha256 "5247bc709e5a660d2750544e476cdfe01bd8ea50fad96d11a65e35d230e3fc7b"
      end
    elsif Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.5/cfn-teleport-x86_64-unknown-linux-musl-v0.52.5.tar.gz"
        sha256 "395fa54ece30549afd61ec58e1a7261bf9bc8c05a2664715ac48dcbd5c2603e1"
      elsif Hardware::CPU.is_32_bit?
        url "https://github.com/udondan/cfn-teleport/releases/download/v0.52.5/cfn-teleport-i686-unknown-linux-musl-v0.52.5.tar.gz"
        sha256 "fbbfa1b50697a7be87761a43cc8a6d4d290c2e0b750ced995319d18eb7c294d8"
      end
    end
  end

  def install
    bin.install "cfn-teleport"
  end
end

