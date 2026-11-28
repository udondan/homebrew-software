# typed: false
# frozen_string_literal: true

class Rmv < Formula
  desc "CLI and MCP server for connections and departures of the RMV, with realtime status"
  homepage "https://github.com/udondan/rmv"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/udondan/rmv/releases/download/rmv-v1.0.0/rmv-1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "3873aaeeb77c27d40cd5de93ab26ef236a275f1391ce6470aaab2d7fc1315754"
    end
    on_intel do
      url "https://github.com/udondan/rmv/releases/download/rmv-v1.0.0/rmv-1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "d99e9b87709ba74ab0d9df2ed56dc22d37457dae71464c54de4178cf6a5808ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/udondan/rmv/releases/download/rmv-v1.0.0/rmv-1.0.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b848ccbc23ed259423e12956d374934266dc33b95a43a8ef8606e5ee2a36681a"
    end
    on_intel do
      url "https://github.com/udondan/rmv/releases/download/rmv-v1.0.0/rmv-1.0.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0d8a4dfd08790dfe4682ab671df489547efaae68410d641648ccd02447e31084"
    end
  end

  def install
    bin.install "rmv"
    bash_completion.install "completions/rmv.bash" => "rmv"
    zsh_completion.install "completions/_rmv"
    fish_completion.install "completions/rmv.fish"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rmv --version")
  end
end
