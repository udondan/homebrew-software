class RemindersCli < Formula
  desc "Interact with macOS Reminders from the command line"
  homepage "https://github.com/udondan/reminders-cli"
  version "3.4.0"
  license "MIT"
  url "https://github.com/udondan/reminders-cli/releases/download/v3.4.0/reminders.tar.gz"
  sha256 "d350a74294234689adfc3c7cf438918cb6b54a1c1debf5cfc0e5f90774236b9e"

  def install
    bin.install "reminders"
    generate_completions_from_executable(bin/"reminders", "--generate-completion-script")
  end
end

