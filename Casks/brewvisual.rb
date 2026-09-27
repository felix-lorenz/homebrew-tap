cask "brewvisual" do
  version "0.1.0"
  sha256 "24e27ed9a0844d182ab9a5c4f922b90da4ed424bcd23eb94c2dbf13181e5def8"

  url "https://github.com/felix-lorenz/brewvisual-releases/releases/download/v#{version}/BrewVisual-#{version}.zip"
  name "BrewVisual"
  desc "Graphical interface for Homebrew packages"
  homepage "https://github.com/felix-lorenz/brewvisual-releases"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "BrewVisual.app"
end
