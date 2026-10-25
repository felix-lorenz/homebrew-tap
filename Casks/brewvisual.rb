cask "brewvisual" do
  version "0.13.0"
  sha256 "f779d2b6eb3f319ca4ca40bf9121435ba91c4bbeefc1e829efc76c38d4049cdc"

  url "https://github.com/felix-lorenz/brewvisual/releases/download/v#{version}/BrewVisual-#{version}.zip"
  name "BrewVisual"
  desc "Graphical interface for Homebrew packages"
  homepage "https://github.com/felix-lorenz/brewvisual"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "BrewVisual.app"
end
