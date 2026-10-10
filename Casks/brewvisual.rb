cask "brewvisual" do
  version "0.7.1"
  sha256 "9cee2edaac57197ffbe417779a8d166dbc4d0b8fa1fc3c311423757e0e3436c8"

  url "https://github.com/felix-lorenz/brewvisual-releases/releases/download/v#{version}/BrewVisual-#{version}.zip"
  name "BrewVisual"
  desc "Graphical interface for Homebrew packages"
  homepage "https://github.com/felix-lorenz/brewvisual-releases"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "BrewVisual.app"
end
