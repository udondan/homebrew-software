class RemindersCli < Formula
  desc "Interact with macOS Reminders from the command line"
  homepage "https://github.com/udondan/reminders-cli"
  version "3.5.3"
  license "MIT"
  url "https://github.com/udondan/reminders-cli/releases/download/v3.5.3/reminders.tar.gz"
  sha256 "1f3854bdbd5fcbd8b4c05db221d0b23489fed982923d6953f72bb9187ea8de15"

  def install
    bin.install "reminders"
    generate_completions_from_executable(bin/"reminders", "--generate-completion-script")
  end
end

