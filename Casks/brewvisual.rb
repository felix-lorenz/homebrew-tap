cask "brewvisual" do
  version "0.5.0"
  sha256 "a8f9f4452a59f4ba441c767944dba4f1d9a9da7af01a1db8c72aa86724595de6"

  url "https://github.com/felix-lorenz/brewvisual-releases/releases/download/v#{version}/BrewVisual-#{version}.zip"
  name "BrewVisual"
  desc "Graphical interface for Homebrew packages"
  homepage "https://github.com/felix-lorenz/brewvisual-releases"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "BrewVisual.app"
end
