![muthr](https://raw.githubusercontent.com/tappunk/.github/refs/heads/main/assets/muthr.webp)

[![License: Apache 2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)
[![X Follow](https://img.shields.io/twitter/follow/tappunk?style=social)](https://x.com/tappunk)

# homebrew-muthr
> \[!NOTE]
> Tap for the current `muthr` release stream on Apple Silicon.

Homebrew tap for [muthr](https://github.com/tappunk/muthr).

## Prerequisites

macOS (Apple Silicon / ARM64).

- Requires [mlxcel](https://github.com/lablup/mlxcel) and `container` CLI.
- Supports `mlxcel-server` and `llama-server` runtimes (runtime selection is handled by `muthr`).

## Installation

```bash
brew install tappunk/muthr/muthr
```

See [muthr](https://github.com/tappunk/muthr) for installation, usage, and architecture.

## Verification

```bash
brew test muthr
muthr doctor
```
