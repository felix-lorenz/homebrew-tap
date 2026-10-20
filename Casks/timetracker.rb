cask "timetracker" do
  version "0.15.0"
  sha256 "f23081633e7496e9659f9bee9d1e6a9fb3fa682cc266e78e83ea8a8464659eee"

  url "https://github.com/felix-lorenz/timetracker-releases/releases/download/v#{version}/TimeTracker-#{version}.zip"
  name "Time Tracker"
  desc "Native time tracker with a weekly calendar and menu bar capture"
  homepage "https://github.com/felix-lorenz/timetracker-releases"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "Time Tracker.app"
end
