class RemindersCli < Formula
  desc "Interact with macOS Reminders from the command line"
  homepage "https://github.com/udondan/reminders-cli"
  version "3.5.6"
  license "MIT"
  url "https://github.com/udondan/reminders-cli/releases/download/v3.5.6/reminders.tar.gz"
  sha256 "2f03c7565885df25bbc3f9ef58753c9d5baf361026d6446ded8e2ec4e8f1cbe6"

  depends_on macos: :sonoma

  def install
    bin.install "reminders"
    generate_completions_from_executable(bin/"reminders", "--generate-completion-script")
  end
end

