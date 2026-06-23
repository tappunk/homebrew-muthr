![homebrew-muthr](https://raw.githubusercontent.com/tappunk/.github/refs/heads/main/assets/homebrew-muthr.webp)

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![X Follow](https://img.shields.io/twitter/follow/tappunk?style=social)](https://x.com/tappunk)

# homebrew-muthr

**muthr** is a Homebrew tap that installs a zero-trust orchestrator for local AI. It runs `llama.cpp` on the host and spawns isolated Lima VMs for agent execution.

## Prerequisites

macOS (Apple Silicon / ARM64). Installs **[Lima](https://github.com/lima-vm/lima)** and **[llama.cpp](https://github.com/ggml-org/llama.cpp)** automatically.

## Installation

```bash
brew install tappunk/muthr/muthr
muthr init               # Clone runtime profiles and VM definitions
```

## Usage

```bash
muthr                    # Show system status dashboard (default)
muthr engine start              # Start llama-server as a background daemon (Metal)
muthr engine start --foreground # Run in foreground
muthr engine stop        # Stop the engine
muthr engine presets               # List available preset profiles

cd ~/src/my-app
muthr sandbox start                 # Provision a sandbox for the current project
muthr sandbox stop               # Stop the sandbox VM
muthr sandbox delete             # Delete the sandbox VM
muthr sandbox ls         # List all managed VMs

muthr services start     # Launch muthr-services VM
muthr services status
muthr services stop
muthr services restart
muthr services delete    # Delete the muthr-services VM

muthr run               # Full stack startup: inference engine + muthr-services VM
muthr shutdown           # Graceful shutdown of all owned components

muthr download <source>  # Download a GGUF model from HuggingFace
muthr init               # Clone specs from tappunk/muthr-specs

muthr config init        # Create muthr.toml config file
muthr config show        # Show resolved configuration
```

See [tappunk/muthr](https://github.com/tappunk/muthr) for presets, muthr-services VM setup, and profile troubleshooting.

## Verification

```bash
brew test muthr
```
