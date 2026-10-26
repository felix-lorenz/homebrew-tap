cask "brewvisual" do
  version "0.15.0"
  sha256 "110ae39f44fd22c207a474f33bf96a649e9fcc931785a08929dd9e0c4c26aa12"

  url "https://github.com/felix-lorenz/brewvisual/releases/download/v#{version}/BrewVisual-#{version}.zip"
  name "BrewVisual"
  desc "Graphical interface for Homebrew packages"
  homepage "https://github.com/felix-lorenz/brewvisual"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "BrewVisual.app"

  zap quit:   [
        "app.brewvisual.mac",
        "app.brewvisual.mac.login-item",
      ],
      script: {
        executable:   "/usr/bin/env",
        args:         ["#{appdir}/BrewVisual.app/Contents/MacOS/BrewVisual", "--brewvisual-prepare-zap"],
        must_succeed: true,
        sudo:         false,
      },
      trash:  [
        "~/Library/Caches/app.brewvisual.mac",
        "~/Library/Caches/BrewVisual",
        "~/Library/Preferences/app.brewvisual.mac.plist",
        "~/Library/Saved Application State/app.brewvisual.mac.savedState",
      ]
end
