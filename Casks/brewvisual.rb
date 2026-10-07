cask "brewvisual" do
  version "0.6.0"
  sha256 "922955dab138342b95dd94db5a14121d0d1746edba69fb5a0b92e4d5e71406e2"

  url "https://github.com/felix-lorenz/brewvisual-releases/releases/download/v#{version}/BrewVisual-#{version}.zip"
  name "BrewVisual"
  desc "Graphical interface for Homebrew packages"
  homepage "https://github.com/felix-lorenz/brewvisual-releases"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "BrewVisual.app"
end
