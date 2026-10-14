cask "brewvisual" do
  version "0.9.0"
  sha256 "62d57c3d7684f442903ab6e996df174b41dfe28f35f2da45a13e9307cfa14174"

  url "https://github.com/felix-lorenz/brewvisual-releases/releases/download/v#{version}/BrewVisual-#{version}.zip"
  name "BrewVisual"
  desc "Graphical interface for Homebrew packages"
  homepage "https://github.com/felix-lorenz/brewvisual-releases"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "BrewVisual.app"
end
