# homebrew-pastiche

Homebrew tap for [Pastiche](https://pastiche.runlocal.dev/), an open-source clipboard manager for macOS.

```sh
brew tap bcollard/pastiche
brew trust --tap bcollard/pastiche   # Homebrew 6.0+ requires trusting third-party taps
brew install --cask pastiche
```

The cask is updated automatically by the release workflow in
[bcollard/pastiche](https://github.com/bcollard/pastiche). Do not edit `version` or
`sha256` by hand.
