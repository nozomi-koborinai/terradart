---
title: Connecting clients
description: Wire terradart-mcp into Claude Code, Claude Desktop, Cursor, or a Genkit Dart app.
---

`terradart-mcp` is a standard stdio MCP server: a client launches the `terradart-mcp` command and talks to it over stdin/stdout. Make sure the binary is installed and on your `PATH` first ([Install](/docs/agent/install/)).

The shared shape of the config across MCP clients is just:

```json
{
  "mcpServers": {
    "terradart": { "command": "terradart-mcp" }
  }
}
```

The server registers itself under the name `terradart`, and exposes the five read-only tools described in the [Tools reference](/docs/agent/tools-reference/).

## Claude Code

Add the server from the CLI:

```sh
claude mcp add terradart terradart-mcp
```

This writes the `terradart` entry into Claude Code's MCP config for you. Run `claude mcp list` to confirm it is connected.

## Claude Desktop

Edit Claude Desktop's MCP config file and add the `terradart` server, then restart the app. On macOS the file is:

```text
~/Library/Application Support/Claude/claude_desktop_config.json
```

```json
{
  "mcpServers": {
    "terradart": { "command": "terradart-mcp" }
  }
}
```

(On Windows the equivalent file lives under `%APPDATA%\Claude\`.)

## Cursor

Cursor reads MCP servers from an `mcp.json` file — either project-scoped at `.cursor/mcp.json` or global at `~/.cursor/mcp.json`. Use the same entry:

```json
{
  "mcpServers": {
    "terradart": { "command": "terradart-mcp" }
  }
}
```

## Genkit Dart

Because `terradart-mcp` is built with [genkit_mcp](https://pub.dev/packages/genkit_mcp), a Genkit Dart app is a first-class client too. Use the genkit_mcp **host** to launch the binary and make its tools discoverable to `ai.generate(...)`:

```dart
import 'package:genkit/genkit.dart';
import 'package:genkit_mcp/genkit_mcp.dart';

final ai = Genkit();

final host = defineMcpHost(
  ai,
  McpHostOptionsWithCache(
    name: 'terradart-host',
    mcpServers: {
      // `command` launches the stdio binary; use `url` instead for an HTTP server.
      'terradart': McpServerConfig(command: 'terradart-mcp'),
    },
  ),
);

// Wait until the server finishes initialization.
await host.getClient('terradart')?.ready();

// terradart's tools are now discoverable via the host's wildcard syntax.
final response = await ai.generate(
  prompt: 'What does TerraDart support for Pub/Sub? Use the catalog tools.',
  toolNames: ['terradart-host:tool/terradart/*'],
);
```

A few notes on the API used above:

- `defineMcpHost(Genkit ai, McpHostOptionsWithCache options)` registers a dynamic action provider on `ai`, so the connected server's tools show up in `ai`'s registry automatically.
- `McpServerConfig({String? command, List<String> args, Uri? url, ...})` — pass `command` for a stdio server (our binary) or `url` for an HTTP server.
- The wildcard `'terradart-host:tool/terradart/*'` reads as `'<host-name>:tool/<server-name>/*'` and matches every tool from the `terradart` server. Tool actions are namespaced as `<server-name>/<tool>` (for example `terradart/list_barrels`).

To talk to a single server without the host's registry integration, you can use `createMcpClient(McpClientOptions(...))` and call `client.getActiveTools(ai)` directly — see the [genkit_mcp example](https://pub.dev/packages/genkit_mcp/example).
