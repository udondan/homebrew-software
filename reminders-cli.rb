class RemindersCli < Formula
  desc "Interact with macOS Reminders from the command line"
  homepage "https://github.com/udondan/reminders-cli"
  version "3.5.2"
  license "MIT"
  url "https://github.com/udondan/reminders-cli/releases/download/v3.5.2/reminders.tar.gz"
  sha256 "55be14e071250beda50d4eab3fafe8533f2a73c02ca3c66e332e0c534094e64b"

  def install
    bin.install "reminders"
    generate_completions_from_executable(bin/"reminders", "--generate-completion-script")
  end
end

