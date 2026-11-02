class RemindersCli < Formula
  desc "Interact with macOS Reminders from the command line"
  homepage "https://github.com/udondan/reminders-cli"
  version "3.5.5"
  license "MIT"
  url "https://github.com/udondan/reminders-cli/releases/download/v3.5.5/reminders.tar.gz"
  sha256 "9eac29e580c1474bb64b8fd9305c0f51a6467fd488201346de1f76c77232cdac"

  def install
    bin.install "reminders"
    generate_completions_from_executable(bin/"reminders", "--generate-completion-script")
  end
end

