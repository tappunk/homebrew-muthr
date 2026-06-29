![muthr](https://raw.githubusercontent.com/tappunk/.github/refs/heads/main/assets/muthr.webp)

[![License: Apache 2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)
[![X Follow](https://img.shields.io/twitter/follow/tappunk?style=social)](https://x.com/tappunk)

# homebrew-muthr

Homebrew tap for muthr — zero-trust orchestrator for MLX inference and container-based sandboxes on Apple Silicon.

muthr uses:

- **Apple container** for sandbox and services containers: https://github.com/apple/container
- **mlxcel** for local inference and OpenAI-compatible server mode: https://github.com/lablup/mlxcel

## Prerequisites

macOS (Apple Silicon / ARM64).

- Installs **[mlxcel](https://github.com/lablup/mlxcel)** via `lablup/tap` Homebrew dependency.
- Requires `container` CLI on host (system runtime prerequisite).

## Installation

```bash
brew install tappunk/muthr/muthr
muthr init               # Clone runtime profiles and container definitions
```

## Usage

```bash
muthr                    # Show system status dashboard (default)
muthr engine start       # Start mlxcel-server as a background daemon (Metal)
muthr engine start --profile mlxcel/quality-qwen3.6-35b-a3b-4bit.ini
muthr engine start --foreground # Run in foreground
muthr engine stop        # Stop the engine
muthr engine presets     # List preset IDs (one per line)

cd ~/src/my-app
muthr sandbox start      # Provision a sandbox for the current project
muthr sandbox stop       # Stop the sandbox container
muthr sandbox delete     # Delete the sandbox container
muthr sandbox ls         # List all managed sandbox containers

muthr services start     # Launch muthr-services containers
muthr services status
muthr services stop
muthr services restart
muthr services delete    # Delete the muthr-services containers

muthr run                # Full stack startup: inference engine + muthr-services containers
muthr shutdown           # Graceful shutdown of all owned components

muthr download <source>  # Download mlx model files from HuggingFace
muthr init               # Clone specs from tappunk/muthr-specs

muthr config init        # Create muthr.toml config file
muthr config show        # Show resolved configuration
```

See [tappunk/muthr](https://github.com/tappunk/muthr) for presets, muthr-services container setup, and profile troubleshooting.

## Verification

```bash
brew test muthr
```
