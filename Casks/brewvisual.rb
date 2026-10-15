cask "brewvisual" do
  version "0.11.0"
  sha256 "cd40ffa72a60b3295fff6c66c67c2867e7906ac76e87aebdb1c89fc800e3c20d"

  url "https://github.com/felix-lorenz/brewvisual-releases/releases/download/v#{version}/BrewVisual-#{version}.zip"
  name "BrewVisual"
  desc "Graphical interface for Homebrew packages"
  homepage "https://github.com/felix-lorenz/brewvisual-releases"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "BrewVisual.app"
end
