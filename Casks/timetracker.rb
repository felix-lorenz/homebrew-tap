cask "timetracker" do
  version "0.6.0"
  sha256 "d1c6630044ba58d0f2dc7ea054b6efb6ac79b3418832df24d7aa7a029fd1a400"

  url "https://github.com/felix-lorenz/timetracker-releases/releases/download/v#{version}/TimeTracker-#{version}.zip"
  name "Time Tracker"
  desc "Native time tracker with a weekly calendar and menu bar capture"
  homepage "https://github.com/felix-lorenz/timetracker-releases"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "Time Tracker.app"
end
