![homebrew-muthr](https://raw.githubusercontent.com/tappunk/.github/refs/heads/main/assets/homebrew-muthr.webp)

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![X Follow](https://img.shields.io/twitter/follow/tappunk?style=social)](https://x.com/tappunk)

# homebrew-muthr

Homebrew tap for muthr - a zero-trust orchestrator for local ai inference and sandbox containers.

## Prerequisites

macOS (Apple Silicon / ARM64).

- Installs **[llama.cpp](https://github.com/ggml-org/llama.cpp)** automatically.
- Install **[mlxcel](https://github.com/lablup/mlxcel)** for the MLX runtime (`muthr engine start --runtime mlxcel`).
- Requires Apple `container` CLI on host (system runtime prerequisite).

```bash
brew tap lablup/tap
brew install mlxcel
```

## Installation

```bash
brew install tappunk/muthr/muthr
muthr init               # Clone runtime profiles and container definitions
```

## Usage

```bash
muthr                    # Show system status dashboard (default)
muthr engine start              # Start llama-server as a background daemon (Metal)
muthr engine start --runtime mlxcel --profile qwen3.6-35b-a3b-4bit
muthr engine start --foreground # Run in foreground
muthr engine stop        # Stop the engine
muthr engine presets               # List available preset profiles

cd ~/src/my-app
muthr sandbox start                 # Provision a sandbox for the current project
muthr sandbox stop               # Stop the sandbox container
muthr sandbox delete             # Delete the sandbox container
muthr sandbox ls         # List all managed sandbox containers

muthr services start     # Launch muthr-services containers
muthr services status
muthr services stop
muthr services restart
muthr services delete    # Delete the muthr-services containers

muthr run               # Full stack startup: inference engine + muthr-services containers
muthr shutdown           # Graceful shutdown of all owned components

muthr download <source>  # Download a GGUF model from HuggingFace
muthr init               # Clone specs from tappunk/muthr-specs

muthr config init        # Create muthr.toml config file
muthr config show        # Show resolved configuration
```

See [tappunk/muthr](https://github.com/tappunk/muthr) for presets, muthr-services container setup, and profile troubleshooting.

## Verification

```bash
brew test muthr
```
