class RemindersCli < Formula
  desc "Interact with macOS Reminders from the command line"
  homepage "https://github.com/udondan/reminders-cli"
  version "3.5.4"
  license "MIT"
  url "https://github.com/udondan/reminders-cli/releases/download/v3.5.4/reminders.tar.gz"
  sha256 "2b74b9eb478147e419f348444423df2b6537b167951e97ddb9f832ccd95c2559"

  def install
    bin.install "reminders"
    generate_completions_from_executable(bin/"reminders", "--generate-completion-script")
  end
end

