# Mainplane Homebrew tap

```
brew install mainplane-ai/tap/mainplane
```

The formula installs the `mainplane` CLI from the signed release binaries at dl.mainplane.ai. Each release updates it. Source: https://github.com/mainplane-ai/mainplane

A workflow checks dl.mainplane.ai/latest every hour. When a new release appears, it verifies the release signature and moves the formula to it.
