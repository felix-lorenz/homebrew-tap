cask "timetracker" do
  version "0.7.0"
  sha256 "534a180e3d9a3bf12210b7dc9c919b0e7f20b4e69ba78df60c69e466f2e9b160"

  url "https://github.com/felix-lorenz/timetracker-releases/releases/download/v#{version}/TimeTracker-#{version}.zip"
  name "Time Tracker"
  desc "Native time tracker with a weekly calendar and menu bar capture"
  homepage "https://github.com/felix-lorenz/timetracker-releases"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "Time Tracker.app"
end
