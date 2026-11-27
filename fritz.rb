# typed: false
# frozen_string_literal: true

class Fritz < Formula
  desc "CLI and MCP server for FRITZ!Box routers (unofficial)"
  homepage "https://github.com/udondan/fritz"
  version "0.2.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/udondan/fritz/releases/download/fritz-v0.2.4/fritz-0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "5fe1bafef0f7d4f6f118e537ad17be322e594f392719cc1191226db679dd3c3f"
    end
    on_intel do
      url "https://github.com/udondan/fritz/releases/download/fritz-v0.2.4/fritz-0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "26f1652e4c15d44e4f68bebee18a59cee35585178636c5092e95405d0b387550"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/udondan/fritz/releases/download/fritz-v0.2.4/fritz-0.2.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "25e352bf9b9df94c1cca23e32c0563e2b2d0ade09d1059aeb06b85e9d58bac61"
    end
    on_intel do
      url "https://github.com/udondan/fritz/releases/download/fritz-v0.2.4/fritz-0.2.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b96415a958b8d463480aaf3abcbf279f376313d1468694c2576169c2ffe2442a"
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
