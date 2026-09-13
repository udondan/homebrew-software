class RemindersCli < Formula
  desc "Interact with macOS Reminders from the command line"
  homepage "https://github.com/udondan/reminders-cli"
  version "3.3.0"
  license "MIT"
  url "https://github.com/udondan/reminders-cli/releases/download/v3.3.0/reminders.tar.gz"
  sha256 "9379f2741b4d5a6919929ff49b049ced6fe1b9382757ef9c309f0d2e293bba06"

  def install
    bin.install "reminders"
    generate_completions_from_executable(bin/"reminders", "--generate-completion-script")
  end
end

