cask "brewvisual" do
  version "0.8.0"
  sha256 "2b449850b8a0a50f22dca089d125f68c86a90f39b8e407ce9d263df1fe40e662"

  url "https://github.com/felix-lorenz/brewvisual-releases/releases/download/v#{version}/BrewVisual-#{version}.zip"
  name "BrewVisual"
  desc "Graphical interface for Homebrew packages"
  homepage "https://github.com/felix-lorenz/brewvisual-releases"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "BrewVisual.app"
end
