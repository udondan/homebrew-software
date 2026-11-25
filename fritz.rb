# typed: false
# frozen_string_literal: true

class Fritz < Formula
  desc "CLI and MCP server for FRITZ!Box routers (unofficial)"
  homepage "https://github.com/udondan/fritz"
  version "0.2.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/udondan/fritz/releases/download/fritz-v0.2.2/fritz-0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "3f09de4529bde4d353487dbf54c9331e331b33ae1615d90cb98cb7c8585d4187"
    end
    on_intel do
      url "https://github.com/udondan/fritz/releases/download/fritz-v0.2.2/fritz-0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "a7f74f58116b1b69b756dbd627dd9eb11906255b7422e972b0dda23f7166d1d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/udondan/fritz/releases/download/fritz-v0.2.2/fritz-0.2.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "070df9ae95827221b93bd3f6d32dfa9b75add859c738d657f6d6a3e1f8a8a82b"
    end
    on_intel do
      url "https://github.com/udondan/fritz/releases/download/fritz-v0.2.2/fritz-0.2.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8c3a992ffad83125fe317db0db6a85ba388eb12d624dc32d059220c043238682"
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
