# typed: false
# frozen_string_literal: true

class Fritz < Formula
  desc "CLI and MCP server for FRITZ!Box routers (unofficial)"
  homepage "https://github.com/udondan/fritz"
  version "0.2.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/udondan/fritz/releases/download/fritz-v0.2.5/fritz-0.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "ae95a8a757da199bd261af4496c1766f2948051ecb73b01e309a2f512c3d62cd"
    end
    on_intel do
      url "https://github.com/udondan/fritz/releases/download/fritz-v0.2.5/fritz-0.2.5-x86_64-apple-darwin.tar.gz"
      sha256 "978a907dcf42f1d994f48c7f4078bbf0f77fbf19378d493501c3333632f75a1f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/udondan/fritz/releases/download/fritz-v0.2.5/fritz-0.2.5-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a4229a3804653d9cb08bd680d7390adbeff2b69a6f6d97bd29df7c33c2b74bce"
    end
    on_intel do
      url "https://github.com/udondan/fritz/releases/download/fritz-v0.2.5/fritz-0.2.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "13c554019d0f71771d649334effc8cb69070769fcbcdbca155d13338946947fe"
    end
  end

  def install
    bin.install "fritz"
    bash_completion.install "completions/fritz.bash" => "fritz"
    zsh_completion.install "completions/_fritz"
    fish_completion.install "completions/fritz.fish"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fritz --version")
  end
end
