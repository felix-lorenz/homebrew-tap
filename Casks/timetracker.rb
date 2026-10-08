cask "timetracker" do
  version "0.5.1"
  sha256 "ab1f142ba096ba97ca0632ce07401904d4f2679fda48ec1670cd41f59984f75a"

  url "https://github.com/felix-lorenz/timetracker-releases/releases/download/v#{version}/TimeTracker-#{version}.zip"
  name "Time Tracker"
  desc "Native time tracker with a weekly calendar and menu bar capture"
  homepage "https://github.com/felix-lorenz/timetracker-releases"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "Time Tracker.app"
end
