cask "brewvisual" do
  version "0.12.0"
  sha256 "2b22fc06f106a901fffbb953fd454d3d51a4d219e8030e3a7a625d632c783a36"

  url "https://github.com/felix-lorenz/brewvisual/releases/download/v#{version}/BrewVisual-#{version}.zip"
  name "BrewVisual"
  desc "Native interface for Homebrew packages and taps"
  homepage "https://github.com/felix-lorenz/brewvisual"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "BrewVisual.app"
end
