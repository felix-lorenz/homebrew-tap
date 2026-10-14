cask "timetracker" do
  version "0.13.0"
  sha256 "7e4ecc4941acbcc30d2c99bb03d3f7a5084cdb5ddf29b817f48fcd08c659d816"

  url "https://github.com/felix-lorenz/timetracker-releases/releases/download/v#{version}/TimeTracker-#{version}.zip"
  name "Time Tracker"
  desc "Native time tracker with a weekly calendar and menu bar capture"
  homepage "https://github.com/felix-lorenz/timetracker-releases"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "Time Tracker.app"
end
