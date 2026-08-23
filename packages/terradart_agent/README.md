# terradart_agent

[![Dart SDK](https://img.shields.io/badge/Dart-%E2%89%A53.10-blue.svg)](https://dart.dev)
[![License: Apache-2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://github.com/nozomi-koborinai/terradart/blob/main/LICENSE)

`terradart-mcp` — a [Model Context Protocol](https://modelcontextprotocol.io) server that exposes the curated factory catalog of [TerraDart](https://terradart.dev) to AI coding agents.

It reads the static catalog compiled into [`terradart_google`](https://pub.dev/packages/terradart_google) (`package:terradart_google/catalog.dart`) and surfaces it as five read-only MCP tools so agents can discover constructor signatures, nested types, quickstart snippets, and coverage gaps without guessing factory names.

Built on [`genkit`](https://pub.dev/packages/genkit) + [`genkit_mcp`](https://pub.dev/packages/genkit_mcp). Ships as a single `terradart-mcp` binary (not published to pub.dev).

## Status

**Alpha** — same expectations as the rest of TerraDart (pin versions, read release notes). The server is read-only catalog metadata; it does not run `terraform`, touch GCP, or apply infrastructure.

## Install

**Homebrew (macOS / Linux):**

```sh
brew install nozomi-koborinai/tap/terradart-mcp
```

**Direct binary:** see [GitHub releases](https://github.com/nozomi-koborinai/terradart/releases) (`terradart-mcp-darwin-arm64`, `linux-amd64`, etc.).

```sh
terradart-mcp --version
```

## Connect a client

Add to your MCP client config (Claude Code, Claude Desktop, Cursor, or a Genkit Dart host):

```json
{
  "mcpServers": {
    "terradart": { "command": "terradart-mcp" }
  }
}
```

Claude Code: `claude mcp add terradart terradart-mcp`

Full walkthroughs: [terradart.dev — terradart-mcp](https://terradart.dev/docs/agent/)

## Tools

| Tool | Purpose |
| :--- | :--- |
| `list_barrels` | Service barrels in the catalog (`compute`, `pubsub`, …) |
| `list_resources` | Resources / data sources (optional `barrel` filter) |
| `get_resource_schema` | Constructor params and nested types for one factory |
| `get_quickstart` | Ready-made `Stack` template for a resource |
| `check_coverage` | Coverage report for `terraform show -json` input |

The catalog currently holds 1793 entries (1332 curated resource factories + 461 data sources) across 131 service barrels.

## Development

This package is `publish_to: none`. Source lives under `packages/terradart_agent/`; release binaries are built by `.github/workflows/release-binary.yml`.

For the Dart authoring runtime, see [`terradart_core`](https://pub.dev/packages/terradart_core) and [`terradart_google`](https://pub.dev/packages/terradart_google).
