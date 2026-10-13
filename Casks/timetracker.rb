cask "timetracker" do
  version "0.12.0"
  sha256 "414bcaf6f2b536b113181bd1791d9fffd70c31eb6de986c4c661e32dbf46cac7"

  url "https://github.com/felix-lorenz/timetracker-releases/releases/download/v#{version}/TimeTracker-#{version}.zip"
  name "Time Tracker"
  desc "Native time tracker with a weekly calendar and menu bar capture"
  homepage "https://github.com/felix-lorenz/timetracker-releases"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "Time Tracker.app"
end
