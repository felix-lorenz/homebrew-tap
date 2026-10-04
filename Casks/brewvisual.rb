cask "brewvisual" do
  version "0.4.0"
  sha256 "539da42966be915b6054e0d69c92ed5b7eb0fa01b449cc52cb6454b8fa240a69"

  url "https://github.com/felix-lorenz/brewvisual-releases/releases/download/v#{version}/BrewVisual-#{version}.zip"
  name "BrewVisual"
  desc "Graphical interface for Homebrew packages"
  homepage "https://github.com/felix-lorenz/brewvisual-releases"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "BrewVisual.app"
end
