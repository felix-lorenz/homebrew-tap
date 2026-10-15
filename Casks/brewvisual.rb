cask "brewvisual" do
  version "0.10.0"
  sha256 "3414efe1e01e225181d5a1b7d5e3939121a276617a62fc70c0b448b1c7f5b90d"

  url "https://github.com/felix-lorenz/brewvisual-releases/releases/download/v#{version}/BrewVisual-#{version}.zip"
  name "BrewVisual"
  desc "Graphical interface for Homebrew packages"
  homepage "https://github.com/felix-lorenz/brewvisual-releases"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "BrewVisual.app"
end
