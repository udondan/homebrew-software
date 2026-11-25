# typed: false
# frozen_string_literal: true

class Fritz < Formula
  desc "CLI and MCP server for FRITZ!Box routers (unofficial)"
  homepage "https://github.com/udondan/fritz"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/udondan/fritz/releases/download/fritz-v0.2.1/fritz-0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "1a6d13b520827d2dd35a212989ac8d95f99c911ebd8db7d53b8d06f2f382ec4c"
    end
    on_intel do
      url "https://github.com/udondan/fritz/releases/download/fritz-v0.2.1/fritz-0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "261d538c07b3a274544ac2072cc3381d67f42cd79055f32fdb1d1761b98a9108"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/udondan/fritz/releases/download/fritz-v0.2.1/fritz-0.2.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "495ed1c38a3d2a45aacf382d8e85c540a78d3795ca86b59d3accf1d2dc8b562b"
    end
    on_intel do
      url "https://github.com/udondan/fritz/releases/download/fritz-v0.2.1/fritz-0.2.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b5ec445d7d659c1552600ce5fe2f533b92ea0e6801beef5b5f1e55e39493e437"
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
