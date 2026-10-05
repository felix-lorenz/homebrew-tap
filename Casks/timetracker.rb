cask "timetracker" do
  version "0.2.0"
  sha256 "1cb703138439af71b980f09e777c637286bf4daf71889b1a6532b861b013b02d"

  url "https://github.com/felix-lorenz/timetracker-releases/releases/download/v#{version}/TimeTracker-#{version}.zip"
  name "Time Tracker"
  desc "Native time tracker with a weekly calendar and menu bar capture"
  homepage "https://github.com/felix-lorenz/timetracker-releases"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Time Tracker.app"
end
