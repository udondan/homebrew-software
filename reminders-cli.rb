class RemindersCli < Formula
  desc "Interact with macOS Reminders from the command line"
  homepage "https://github.com/udondan/reminders-cli"
  version "3.5.0"
  license "MIT"
  url "https://github.com/udondan/reminders-cli/releases/download/v3.5.0/reminders.tar.gz"
  sha256 "db1c2303c224604f5e5ad9f51fcca916f955950f5b882fad4988f8114c6b2ec7"

  def install
    bin.install "reminders"
    generate_completions_from_executable(bin/"reminders", "--generate-completion-script")
  end
end

