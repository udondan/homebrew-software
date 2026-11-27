# typed: false
# frozen_string_literal: true

class Transitous < Formula
  desc "CLI and MCP server for public transport on Transitous, with realtime status"
  homepage "https://github.com/udondan/transitous"
  version "1.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/udondan/transitous/releases/download/transitous-v1.1.0/transitous-1.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "75a128ebe02c9b2bd702a808503a996d5230b3697bfffa38484908841bd72b0f"
    end
    on_intel do
      url "https://github.com/udondan/transitous/releases/download/transitous-v1.1.0/transitous-1.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "cbb3a1b6510ceb4f1ffb0db9fd34c2c3ef734301299b85da01e785eaa75f291d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/udondan/transitous/releases/download/transitous-v1.1.0/transitous-1.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b0dba6bd51f76e7a94fc6f7ad488645a964451df708bc4adfcae04b77cfdc8da"
    end
    on_intel do
      url "https://github.com/udondan/transitous/releases/download/transitous-v1.1.0/transitous-1.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6789a6fb4a70968a896490e042c7f5b8a0304a37f81819d4c3a5615248e88f05"
    end
  end

  def install
    bin.install "transitous"
    bash_completion.install "completions/transitous.bash" => "transitous"
    zsh_completion.install "completions/_transitous"
    fish_completion.install "completions/transitous.fish"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/transitous --version")
  end
end
