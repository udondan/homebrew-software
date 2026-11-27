# typed: false
# frozen_string_literal: true

class Transitous < Formula
  desc "CLI and MCP server for public transport on Transitous, with realtime status"
  homepage "https://github.com/udondan/transitous"
  version "1.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/udondan/transitous/releases/download/transitous-v1.2.0/transitous-1.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "f5b2050dbb82bd7ee218cfd7ddd1568d2113cebe79c998f65eb2888654096557"
    end
    on_intel do
      url "https://github.com/udondan/transitous/releases/download/transitous-v1.2.0/transitous-1.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "1bcfdbc895f10672c4e3fd53fab6770e09bcab5f5cdbdfe90ff466504b78304e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/udondan/transitous/releases/download/transitous-v1.2.0/transitous-1.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "07d2cb35dbd735a3d282ed354a269b6a20d37c158426e609f931e14e19f03745"
    end
    on_intel do
      url "https://github.com/udondan/transitous/releases/download/transitous-v1.2.0/transitous-1.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9da25c367337c7dc57b46baa7b08268372964a5ecc9a035e6ccf86999eb080f5"
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
