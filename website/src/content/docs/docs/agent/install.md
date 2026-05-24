---
title: Install
description: Install the terradart-mcp binary via Homebrew or a direct download.
---

`terradart-mcp` is distributed as a single self-contained binary. Install it with Homebrew (recommended) or download a release tarball directly. Both are available from the **v0.12.0** release onward.

## Homebrew

```sh
brew tap nozomi-koborinai/terradart
brew install terradart-mcp
```

This puts `terradart-mcp` on your `PATH`, which is what MCP clients expect — see [Connecting clients](/docs/agent/clients/).

## Direct binary download

Grab the tarball for your platform from the [GitHub releases page](https://github.com/nozomi-koborinai/terradart/releases), extract it, and put the `terradart-mcp` binary somewhere on your `PATH`.

| Platform              | Target         | Release asset                          |
| --------------------- | -------------- | -------------------------------------- |
| macOS (Apple Silicon) | `macos-arm64`  | `terradart-mcp-macos-arm64.tar.gz`     |
| macOS (Intel)         | `macos-x86_64` | `terradart-mcp-macos-x86_64.tar.gz`    |
| Linux (x86-64)        | `linux-x86_64` | `terradart-mcp-linux-x86_64.tar.gz`    |

Each tarball ships with a matching `terradart-mcp-<target>.sha256` checksum file so you can verify the download before extracting it.

```sh
# Example: macOS Apple Silicon
shasum -a 256 -c terradart-mcp-macos-arm64.sha256
tar -xzf terradart-mcp-macos-arm64.tar.gz
```

## Verify

```sh
terradart-mcp --version
# terradart-mcp 0.12.0
```

If you see the version printed, the binary is ready. Next, point an MCP client at it: [Connecting clients](/docs/agent/clients/).
