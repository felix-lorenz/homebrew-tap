cask "brewvisual" do
  version "0.7.0"
  sha256 "98a80558beacc18b4ddd525f0da6ae262c6ebbdb5117cdde859a4a61b98c8a7d"

  url "https://github.com/felix-lorenz/brewvisual-releases/releases/download/v#{version}/BrewVisual-#{version}.zip"
  name "BrewVisual"
  desc "Graphical interface for Homebrew packages"
  homepage "https://github.com/felix-lorenz/brewvisual-releases"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "BrewVisual.app"
end
