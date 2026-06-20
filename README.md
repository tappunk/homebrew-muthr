[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![X Follow](https://img.shields.io/twitter/follow/tappunk?style=social)](https://x.com/tappunk)

# homebrew-muthr

**muthr** is a Homebrew tap that installs a zero-trust orchestrator for local AI. It runs `llama.cpp` on the host and spawns isolated Lima VMs for agent execution.

## Prerequisites

macOS (Apple Silicon / ARM64). Installs **[Lima](https://github.com/lima-vm/lima)**, **[llama.cpp](https://github.com/ggml-org/llama.cpp)**, and **[fd](https://github.com/sharkdp/fd)** automatically.

## Installation

```bash
brew install tappunk/muthr/muthr
muthr init               # Clone runtime profiles and VM definitions
```

## Usage

```bash
muthr serve              # Start llama-server as a background daemon (Metal)
muthr status             # Check engine status and active profile
muthr stop               # Stop the engine

cd ~/src/projects/my-awesome-app
muthr up                 # Provision a sandbox for the current project
```

See [tappunk/muthr](https://github.com/tappunk/muthr) for presets, MCP services, and profile troubleshooting.

## Verification

```bash
brew test muthr
```
