# terradart_agent

`terradart-mcp` — a [Model Context Protocol](https://modelcontextprotocol.io) server that exposes the curated GCP factory catalog of [TerraDart](https://github.com/nozomi-koborinai/terradart) to AI agents.

It reads the static catalog published by [`terradart_google`](https://github.com/nozomi-koborinai/terradart/tree/main/packages/terradart_google) (`package:terradart_google/catalog.dart`) and surfaces it as MCP tools so agents can discover and reason about the available curated Terraform resource factories.

Built on [`genkit`](https://pub.dev/packages/genkit) + [`genkit_mcp`](https://pub.dev/packages/genkit_mcp).

## Status

Scaffold. The package shell is in place; the MCP tools and server wiring land in subsequent tasks. `buildTerradartMcpServer()` is currently a stub.

## Distribution

`terradart_agent` is `publish_to: none`. It is not published to pub.dev — it ships as a compiled `terradart-mcp` binary (planned: Homebrew).

For the runtime and curated factories, see [`terradart_core`](https://pub.dev/packages/terradart_core) and [`terradart_google`](https://pub.dev/packages/terradart_google). For project-level documentation, see the [terradart repo README](https://github.com/nozomi-koborinai/terradart#readme).
