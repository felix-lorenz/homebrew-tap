cask "brewvisual" do
  version "0.10.1"
  sha256 "2f966ebdce61dfb365b00e9c0d5051ff5be7272d5d25aff17356aa296043105e"

  url "https://github.com/felix-lorenz/brewvisual-releases/releases/download/v#{version}/BrewVisual-#{version}.zip"
  name "BrewVisual"
  desc "Graphical interface for Homebrew packages"
  homepage "https://github.com/felix-lorenz/brewvisual-releases"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "BrewVisual.app"
end
