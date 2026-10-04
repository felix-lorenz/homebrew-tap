cask "timetracker" do
  version "0.1.0"
  sha256 "2db43ed6dc669e3b0cd3588a25f1498631303231231d6e99584364522ee0d3d4"

  url "https://github.com/felix-lorenz/timetracker-releases/releases/download/v#{version}/TimeTracker-#{version}.zip"
  name "Time Tracker"
  desc "Native time tracker with a weekly calendar and menu bar capture"
  homepage "https://github.com/felix-lorenz/timetracker-releases"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Time Tracker.app"
end
