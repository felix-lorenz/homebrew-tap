cask "timetracker" do
  version "0.8.0"
  sha256 "9b46c0e1dfb65957f2e0f91829fd73228df02a8fe45dd089ccf4564547f81a2e"

  url "https://github.com/felix-lorenz/timetracker-releases/releases/download/v#{version}/TimeTracker-#{version}.zip"
  name "Time Tracker"
  desc "Native time tracker with a weekly calendar and menu bar capture"
  homepage "https://github.com/felix-lorenz/timetracker-releases"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "Time Tracker.app"
end
