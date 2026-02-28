# PrEvIeS Homebrew Tap

Custom Homebrew formulas for my tools.

## How to use

```bash
# Add tap
brew tap PrEvIeS/tap

# Install formula
brew install ytmv
```

## Available Formulas

| Formula | Description |
|---------|-------------|
| [ytmv](https://github.com/PrEvIeS/ytmv) | Interactive CLI wizard for downloading videos and audio |

## Creating a release

After updating `ytmv.py` in the main repo:

```bash
# Get new SHA256
curl -sL https://raw.githubusercontent.com/PrEvIeS/ytmv/main/ytmv.py | shasum -a 256

# Update formula with new hash
# Commit and push
```
