# Homebrew Tap

A collection of tools and applications distributed through Homebrew.

## Add the tap

Install [Homebrew](https://brew.sh) first, then add this tap:

```sh
brew tap felix-lorenz/tap
```

Adding the tap makes its packages available; it does not install them. Choose a tool below and use its installation command.

## Available tools

| Tool | Description | Requirements | Install |
| --- | --- | --- | --- |
| [BrewVisual](https://github.com/felix-lorenz/brewvisual-releases) | Native macOS interface for managing Homebrew packages and taps | macOS 27 or later, Apple Silicon (arm64), Homebrew | `brew install --cask felix-lorenz/tap/brewvisual` |
| [Time Tracker](https://github.com/felix-lorenz/timetracker-releases) | Native macOS time tracking with a weekly calendar and menu bar capture | macOS 27 or later, Apple Silicon (arm64), Homebrew for Cask installation | `brew install --cask felix-lorenz/tap/timetracker` |

Requirements are specific to each tool. Follow the linked product documentation for features, downloads, and setup guidance.

## Update a tool

Refresh the tap and Homebrew metadata:

```sh
brew update
```

Then upgrade the tool you want to update. For BrewVisual, quit the app when no Homebrew command is running and use:

```sh
brew upgrade --cask felix-lorenz/tap/brewvisual
```

For Time Tracker, quit the app before upgrading:

```sh
brew upgrade --cask felix-lorenz/tap/timetracker
```

Quitting Time Tracker does not stop an active timer. Stop it first if you want tracking to end. Upgrades preserve tracking records and the Tempo import journal.

## Support

For product questions, bugs, and feature requests, use the support links in the tool's documentation. For problems with a formula or cask in this tap, open a [tap issue](https://github.com/felix-lorenz/homebrew-tap/issues) and include the affected tool, your operating system, Homebrew version, and command output.
