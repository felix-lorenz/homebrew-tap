# Homebrew Tap for BrewVisual

This tap distributes the Developer ID-signed and notarized BrewVisual app. The first release supports Apple Silicon on macOS 27 or later and requires an existing Homebrew installation.

Install from the public tap with:

```sh
brew install --cask felix-lorenz/tap/brewvisual
```

The Cask downloads an immutable, versioned release archive from [BrewVisual Releases](https://github.com/felix-lorenz/brewvisual-releases) and checks its SHA-256. Keep the Cask version and checksum in sync with the published archive.
