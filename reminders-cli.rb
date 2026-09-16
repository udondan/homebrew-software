class RemindersCli < Formula
  desc "Interact with macOS Reminders from the command line"
  homepage "https://github.com/udondan/reminders-cli"
  version "3.5.1"
  license "MIT"
  url "https://github.com/udondan/reminders-cli/releases/download/v3.5.1/reminders.tar.gz"
  sha256 "002b3291353d0f183d1cad042a3c474e666612ea68010d1f1b834712fe9b22d9"

  def install
    bin.install "reminders"
    generate_completions_from_executable(bin/"reminders", "--generate-completion-script")
  end
end

