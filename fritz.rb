# typed: false
# frozen_string_literal: true

class Fritz < Formula
  desc "CLI and MCP server for FRITZ!Box routers (unofficial)"
  homepage "https://github.com/udondan/fritz"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/udondan/fritz/releases/download/fritz-v0.2.0/fritz-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "a29a1b6d0837024e59848f04cd770d96b231ffdf8deb22acc602a5069f470c2f"
    end
    on_intel do
      url "https://github.com/udondan/fritz/releases/download/fritz-v0.2.0/fritz-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "7d119f8a81de91605a1ad0e1b857f911622d3261342b79b1983a43fef37b6b27"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/udondan/fritz/releases/download/fritz-v0.2.0/fritz-0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "14f69f027e261b2b31713b4127b834dc80dde41709e38a965d89cc81473d4ed0"
    end
    on_intel do
      url "https://github.com/udondan/fritz/releases/download/fritz-v0.2.0/fritz-0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a2bf4f9efb60c7cfa59cbda10ce2bf8953433ce64103de390529bffc054b6f21"
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
