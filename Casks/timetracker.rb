cask "timetracker" do
  version "0.3.0"
  sha256 "8a37a10e3bc8a21eba9f93aa4d4c6fd5e11cb62680a09ceeb7bdcb79a336a9ca"

  url "https://github.com/felix-lorenz/timetracker-releases/releases/download/v#{version}/TimeTracker-#{version}.zip"
  name "Time Tracker"
  desc "Native time tracker with a weekly calendar and menu bar capture"
  homepage "https://github.com/felix-lorenz/timetracker-releases"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "Time Tracker.app"
end
