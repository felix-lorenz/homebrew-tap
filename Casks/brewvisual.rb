cask "brewvisual" do
  version "0.4.2"
  sha256 "bd3ef61b9d6d283406464f2364ad5a614c076d3a40508bc603013e96986e8045"

  url "https://github.com/felix-lorenz/brewvisual-releases/releases/download/v#{version}/BrewVisual-#{version}.zip"
  name "BrewVisual"
  desc "Graphical interface for Homebrew packages"
  homepage "https://github.com/felix-lorenz/brewvisual-releases"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "BrewVisual.app"
end
