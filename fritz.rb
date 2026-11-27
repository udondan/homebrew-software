# typed: false
# frozen_string_literal: true

class Fritz < Formula
  desc "CLI and MCP server for FRITZ!Box routers (unofficial)"
  homepage "https://github.com/udondan/fritz"
  version "0.2.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/udondan/fritz/releases/download/fritz-v0.2.3/fritz-0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "de0700718f8cc02e7c858fb084f64d6f1c40037584ba7737d5d7197f0f39e1f3"
    end
    on_intel do
      url "https://github.com/udondan/fritz/releases/download/fritz-v0.2.3/fritz-0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "66989ffecf4604307c4cadb3d08826ef3025dc5aeba9c50fee3963983a67a89a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/udondan/fritz/releases/download/fritz-v0.2.3/fritz-0.2.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7ee2ffae6d7deccd6f78a797c06bb6205f2fc55014542b9c8af9ff5bfbd267b3"
    end
    on_intel do
      url "https://github.com/udondan/fritz/releases/download/fritz-v0.2.3/fritz-0.2.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "48b30989c910b48ec7af9a37ca5e65276f2e7a7ad624f7f832423bba1d0ea7c2"
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
