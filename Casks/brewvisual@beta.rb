cask "brewvisual@beta" do
  version "0.17.0-beta.1"
  sha256 "dd46eac4942a4d7b95faa1dfc1173a00243d66bd71c5dbc4e321756022747c3e"

  url "https://github.com/felix-lorenz/brewvisual/releases/download/v#{version}/BrewVisual-#{version}.zip"
  name "BrewVisual"
  desc "Graphical interface for Homebrew packages"
  homepage "https://brewvisual.app/"

  livecheck do
    url :url
    regex(/\Av?(\d+\.\d+\.\d+(?:-beta\.\d+)?)\z/i)
    strategy :github_releases do |json, regex|
      json.filter_map do |release|
        next if release["draft"]

        release["tag_name"]&.[](regex, 1)
      end
    end
  end

  conflicts_with cask: "brewvisual"
  depends_on arch: :arm64
  depends_on macos: :tahoe

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
