---
title: Install
description: Install the terradart-mcp binary via Homebrew or a direct download.
---

`terradart-mcp` is distributed as a single self-contained binary. Install it with Homebrew (recommended) or download a release binary directly. Both are available from the **v0.12.0** release onward.

## Homebrew

```sh
brew install nozomi-koborinai/tap/terradart-mcp
```

This puts `terradart-mcp` on your `PATH`, which is what MCP clients expect — see [Connecting clients](/docs/agent/clients/). Homebrew covers macOS and Linux.

## Direct binary download

Grab the binary for your platform from the [GitHub releases page](https://github.com/nozomi-koborinai/terradart/releases) and place it on your `PATH`.

| Platform              | Asset                              |
| --------------------- | ---------------------------------- |
| macOS (Apple Silicon) | `terradart-mcp-darwin-arm64`       |
| macOS (Intel)         | `terradart-mcp-darwin-amd64`       |
| Linux (x86_64)        | `terradart-mcp-linux-amd64`        |
| Windows (x86_64)      | `terradart-mcp-windows-amd64.exe`  |

**macOS / Linux:** mark the binary executable, then move it onto your `PATH`:

```sh
# Example: macOS Apple Silicon
chmod +x terradart-mcp-darwin-arm64
sudo mv terradart-mcp-darwin-arm64 /usr/local/bin/terradart-mcp
```

**Windows:** rename the downloaded file to `terradart-mcp.exe` and add its directory to your `PATH`.

## Verify

```sh
terradart-mcp --version
# terradart-mcp 0.12.1
```

If you see the version printed, the binary is ready. Next, point an MCP client at it: [Connecting clients](/docs/agent/clients/).
