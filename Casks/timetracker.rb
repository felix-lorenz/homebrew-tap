require_relative "../lib/timetracker_private_release_download_strategy"

cask "timetracker" do
  version "0.15.2"
  sha256 "35c8cbabe10e255a0bdcf714ffefe9f63018502662db81c8c132962b73e7f777"

  url "https://github.com/felix-lorenz/timetracker-releases/releases/download/v#{version}/TimeTracker-#{version}.zip",
      using: TimeTrackerPrivateReleaseDownloadStrategy
  name "Time Tracker"
  desc "Native time tracker with a weekly calendar and menu bar capture"
  homepage "https://github.com/felix-lorenz/timetracker-releases"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "Time Tracker.app"
end
