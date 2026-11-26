# typed: false
# frozen_string_literal: true

class Transitous < Formula
  desc "CLI and MCP server for public transport on Transitous, with realtime status"
  homepage "https://github.com/udondan/transitous"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/udondan/transitous/releases/download/transitous-v0.1.0/transitous-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "0299adfdc695e4e7121526d05f2ead5d97148195268d477588e3f76effaa6506"
    end
    on_intel do
      url "https://github.com/udondan/transitous/releases/download/transitous-v0.1.0/transitous-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "90f92236ba5b3e24a447c31d5453e9b9912a008766f3e819dbcb721acc6b6078"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/udondan/transitous/releases/download/transitous-v0.1.0/transitous-0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c55d52873c5bcc336c583b74dec4c2433579ae1a28d271142aba26071bf65815"
    end
    on_intel do
      url "https://github.com/udondan/transitous/releases/download/transitous-v0.1.0/transitous-0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "593c88b4688493a74767b3f8d250adf1443a93c89c9b5ac3d50d189a99f31a6e"
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
