cask "timetracker" do
  version "0.10.0"
  sha256 "e4ee90465e67f5ccbb99694a9c0d3a5539334b13e817fcb6a82fe01bde939b02"

  url "https://github.com/felix-lorenz/timetracker-releases/releases/download/v#{version}/TimeTracker-#{version}.zip"
  name "Time Tracker"
  desc "Native time tracker with a weekly calendar and menu bar capture"
  homepage "https://github.com/felix-lorenz/timetracker-releases"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "Time Tracker.app"
end
