class RemindersCli < Formula
  desc "Interact with macOS Reminders from the command line"
  homepage "https://github.com/udondan/reminders-cli"
  version "3.2.0"
  license "MIT"
  url "https://github.com/udondan/reminders-cli/releases/download/v3.2.0/reminders.tar.gz"
  sha256 "a4e7e1e6780e7819e262e1d13bffde245fbd92db40df5ea0f6cd3cb9a86f20a9"

  def install
    bin.install "reminders"
    generate_completions_from_executable(bin/"reminders", "--generate-completion-script")
  end
end

