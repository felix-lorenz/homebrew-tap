cask "timetracker" do
  version "0.9.0"
  sha256 "7e8ab884fdb5cbacce42ce425696bbb7ba8a0e1f88d38ee0f9649b5e89fbd964"

  url "https://github.com/felix-lorenz/timetracker-releases/releases/download/v#{version}/TimeTracker-#{version}.zip"
  name "Time Tracker"
  desc "Native time tracker with a weekly calendar and menu bar capture"
  homepage "https://github.com/felix-lorenz/timetracker-releases"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "Time Tracker.app"
end
