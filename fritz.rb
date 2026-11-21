# typed: false
# frozen_string_literal: true

class Fritz < Formula
  desc "CLI and MCP server for FRITZ!Box routers (unofficial)"
  homepage "https://github.com/udondan/fritz"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/udondan/fritz/releases/download/fritz-v0.1.1/fritz-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "6c3cb5e6cb4bdcebade7bda2fdad4e68bf28f48d945d1fe515cdcb41ec7369a0"
    end
    on_intel do
      url "https://github.com/udondan/fritz/releases/download/fritz-v0.1.1/fritz-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "8ef2ebc1199b26e2ec05054c2d3e6d74cfed3b662134ac763dfa422e5ffb0680"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/udondan/fritz/releases/download/fritz-v0.1.1/fritz-0.1.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "480d63f167076f4e8daa4e3aa40d97dae1c85d2881b5c49bbd8cc7ed128bed17"
    end
    on_intel do
      url "https://github.com/udondan/fritz/releases/download/fritz-v0.1.1/fritz-0.1.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9e8ecfe7f6d65f315c0f050f05883a555cd5d3e916fa18b1f17d7b3a44ba1ab7"
    end
  end

  def install
    bin.install "fritz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fritz --version")
  end
end
