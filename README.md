![muthr](https://raw.githubusercontent.com/tappunk/.github/refs/heads/main/assets/muthr.webp)

[![License: Apache 2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)
[![X Follow](https://img.shields.io/twitter/follow/tappunk?style=social)](https://x.com/tappunk)

# homebrew-muthr

Canonical documentation: **https://tappunk.com/muthr/**

Homebrew tap for [muthr](https://github.com/tappunk/muthr).

## Prerequisites

macOS (Apple Silicon / ARM64).

- Requires [Apple container CLI](https://github.com/apple/container) (`container`) and at least one inference backend:
  - [mlxcel](https://github.com/lablup/mlxcel) (`mlxcel-server`)
  - [llama.cpp](https://github.com/ggml-org/llama.cpp) (`llama-server`)
- Runtime selection (`mlxcel` or `llama`) is handled by `muthr`.

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

## Acknowledgements

- [llama.cpp](https://github.com/ggml-org/llama.cpp)
- [mlxcel](https://github.com/lablup/mlxcel)
- [Apple container](https://github.com/apple/container)
