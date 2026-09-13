class RemindersCli < Formula
  desc "Interact with macOS Reminders from the command line"
  homepage "https://github.com/udondan/reminders-cli"
  version "3.1.1"
  license "MIT"
  url "https://github.com/udondan/reminders-cli/releases/download/v3.1.1/reminders.tar.gz"
  sha256 "d819d382476252c14da05154e918b403c093caafea321d4425e295a45f9b4a81"

  def install
    bin.install "reminders"
    generate_completions_from_executable(bin/"reminders", "--generate-completion-script")
  end
end

