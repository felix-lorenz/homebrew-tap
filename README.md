# Homebrew Tap

A Homebrew tap for BrewVisual and Time Tracker.

## Install an app

Install [Homebrew](https://brew.sh) first, then use the command for the app you want. These commands add this tap automatically.

### BrewVisual

[BrewVisual](https://github.com/felix-lorenz/brewvisual) is a native macOS interface for managing Homebrew packages and taps.

**Requirements:** macOS 27 or later, Apple Silicon (arm64), and Homebrew.

```sh
brew install --cask felix-lorenz/tap/brewvisual
```

### Time Tracker

[Time Tracker](https://github.com/felix-lorenz/timetracker-releases) is a native macOS time tracker with a weekly calendar and menu bar capture.

**Requirements:** macOS 27 or later, Apple Silicon (arm64), and Homebrew for Cask installation.

Time Tracker uses private release downloads and also requires a download token. Follow its product documentation for access and setup.

```sh
brew install --cask felix-lorenz/tap/timetracker
```

## Add the tap separately (optional)

To add the tap without installing an app:

```sh
brew tap felix-lorenz/tap
```

Adding the tap makes its package definitions available; it does not install any apps.

## Update an app

For updates from Terminal, refresh Homebrew and tap metadata first:

```sh
brew update
```

Then run the command for the app you want to update. Quit BrewVisual when no Homebrew command is running before using:

```sh
brew upgrade --cask felix-lorenz/tap/brewvisual
```

For Time Tracker, quit the app before upgrading:

```sh
brew upgrade --cask felix-lorenz/tap/timetracker
```

Quitting Time Tracker does not stop an active timer. Stop it first if you want tracking to end. Upgrades preserve tracking records and the Tempo import journal.

## Support

For product questions, bugs, and feature requests, use the support links in the app's documentation.

For problems with a formula or cask in this tap, open a [tap issue](https://github.com/felix-lorenz/homebrew-tap/issues). Include the affected app, your operating system, Homebrew version, and relevant command output. Remove personal information before sharing logs.
