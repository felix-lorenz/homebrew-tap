cask "timetracker" do
  version "0.5.0"
  sha256 "bd8bc764400cdd214d6a6b8766fd6e6ba2429ffcc7c861b3a382a5290a951552"

  url "https://github.com/felix-lorenz/timetracker-releases/releases/download/v#{version}/TimeTracker-#{version}.zip"
  name "Time Tracker"
  desc "Native time tracker with a weekly calendar and menu bar capture"
  homepage "https://github.com/felix-lorenz/timetracker-releases"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "Time Tracker.app"
end
