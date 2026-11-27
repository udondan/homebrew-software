# typed: false
# frozen_string_literal: true

class Transitous < Formula
  desc "CLI and MCP server for public transport on Transitous, with realtime status"
  homepage "https://github.com/udondan/transitous"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/udondan/transitous/releases/download/transitous-v1.0.0/transitous-1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "fb6e4fa549c594931dfb996836b44abe822e0786a8323a83e2b487dc69ee3fc0"
    end
    on_intel do
      url "https://github.com/udondan/transitous/releases/download/transitous-v1.0.0/transitous-1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "d128021bac58a5179d01157b9ee3e229a20c21332c0bc08247449c8ddf77335f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/udondan/transitous/releases/download/transitous-v1.0.0/transitous-1.0.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "021c221e49cec651442e628a5922db85f559f58e738ce24080ccbeb4f15c5918"
    end
    on_intel do
      url "https://github.com/udondan/transitous/releases/download/transitous-v1.0.0/transitous-1.0.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "519c7d945b3eb6aae59f267204c2b2ea85226affbe3e8c280214865c7fedf933"
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
