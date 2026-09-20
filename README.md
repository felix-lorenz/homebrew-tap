# Homebrew Tap for BrewVisual

Private staging tap for the `brewvisual` cask.

The cask will be added at `Casks/brewvisual.rb` after a signed and notarized `BrewVisual-<version>.zip` exists in `felix-lorenz/brewvisual-releases`. Its URL and SHA-256 must match that exact artifact. This repository remains private until product acceptance is complete.

The eventual public installation flow is:

```sh
brew tap felix-lorenz/tap
brew install --cask brewvisual
```
