class RemindersCli < Formula
  desc "Interact with macOS Reminders from the command line"
  homepage "https://github.com/udondan/reminders-cli"
  version "3.0.1"
  license "MIT"
  url "https://github.com/udondan/reminders-cli/releases/download/v3.0.1/reminders.tar.gz"
  sha256 "9b7985dba6cef02b108293dcadb7b56fce790fbf9c2960ab071e5d77ea31d6d5"

  def install
    bin.install "reminders"
    generate_completions_from_executable(bin/"reminders", "--generate-completion-script")
  end
end

