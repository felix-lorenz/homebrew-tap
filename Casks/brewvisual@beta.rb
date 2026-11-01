cask "brewvisual@beta" do
  version "0.17.0-beta.7"
  sha256 "ee9e51cd7ea77373ad2377eeeb1f9efb7a5d4b40077c3fb5580480f94b6747ca"

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
