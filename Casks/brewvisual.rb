cask "brewvisual" do
  version "0.2.0"
  sha256 "0b6f527f972d52e622aa39fc02fef1d5157e0e9bcaf8cdcb81c3088f60b7e57c"

  url "https://github.com/felix-lorenz/brewvisual-releases/releases/download/v#{version}/BrewVisual-#{version}.zip"
  name "BrewVisual"
  desc "Graphical interface for Homebrew packages"
  homepage "https://github.com/felix-lorenz/brewvisual-releases"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "BrewVisual.app"
end
