cask "brewvisual@beta" do
  version "0.16.0-beta.1"
  sha256 "591f6ac7cb911bd151161f42663d5c761c3f8c218a5205f99b7ea4cd9edcba67"

  url "https://github.com/felix-lorenz/brewvisual/releases/download/v#{version}/BrewVisual-#{version}.zip"
  name "BrewVisual"
  desc "Graphical interface for Homebrew packages"
  homepage "https://github.com/felix-lorenz/brewvisual"

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
