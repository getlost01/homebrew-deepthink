# homebrew-deepthink

Homebrew tap for [DeepThink](https://github.com/getlost01/deepthink) — an AI-powered thinking and knowledge workspace for macOS.

## Install

```bash
brew tap getlost01/deepthink
brew install --cask deepthink
```

## Update

```bash
brew upgrade --cask deepthink
```

## Uninstall

```bash
brew uninstall --cask deepthink
brew untap getlost01/deepthink
```

## Note

DeepThink is distributed without an Apple Developer certificate. The cask automatically removes the macOS quarantine flag on install (`disable_quarantine true`), so no manual Gatekeeper bypass is needed.

The cask in this repo is updated automatically by the [release workflow](https://github.com/getlost01/deepthink/blob/main/.github/workflows/release.yml) whenever a new version is tagged.
