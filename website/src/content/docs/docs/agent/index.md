---
title: terradart-mcp
description: An MCP server that exposes TerraDart's curated Google Cloud catalog to coding agents.
---

`terradart-mcp` is a [Model Context Protocol](https://modelcontextprotocol.io) (MCP) server that exposes TerraDart's curated Google Cloud factory **catalog** to coding agents. The catalog covers **120 resources and data sources across 26 service barrels** (`compute`, `pubsub`, `cloud_run`, `firestore`, and more). With the server connected, an agent can look up the exact constructor signatures, nested types, and ready-made `Stack` templates it needs to author correct TerraDart Dart code — instead of guessing factory names from memory.

It is built with [genkit_mcp](https://pub.dev/packages/genkit_mcp) (Genkit's MCP server library) and ships as a single compiled binary. The same binary works with any MCP-capable client: Claude Code, Claude Desktop, Cursor, or a Genkit Dart app.

## How it fits together

```text
┌──────────────────────────────────────────────┐
│  coding agent                                  │
│  (Claude Code / Cursor / Claude Desktop /      │
│   a Genkit Dart app)                           │
└───────────────────────┬────────────────────────┘
                        │  stdio  (JSON-RPC, MCP)
                        ▼
┌──────────────────────────────────────────────┐
│  terradart-mcp  (compiled binary)              │
│  4 read-only tools:                            │
│   list_barrels · list_resources                │
│   get_resource_schema · get_quickstart         │
└───────────────────────┬────────────────────────┘
                        │  reads (in-process)
                        ▼
┌──────────────────────────────────────────────┐
│  static catalog                                │
│  (compiled into terradart_google)              │
│  120 resources · 26 service barrels            │
└──────────────────────────────────────────────┘
```

The agent speaks JSON-RPC over stdio. `terradart-mcp` answers each tool call by reading the catalog that is compiled into `terradart_google` — no separate data files, no network round-trips.

## What it does NOT do

`terradart-mcp` is **read-only catalog metadata**. It only answers questions about TerraDart's curated factories. It does **not**:

- run `terraform` (no `plan`, no `apply`);
- touch Google Cloud, your project, or any credentials;
- write, synthesize, or apply infrastructure;
- need network access to do its job.

If an agent wants to actually synthesize and apply a stack, that still happens the normal way — see [How it works](/docs/how-it-works/). `terradart-mcp` exists purely so the agent writes the right Dart in the first place.

## Next steps

- [Install](/docs/agent/install/) — Homebrew or a direct binary download.
- [Connecting clients](/docs/agent/clients/) — Claude Code, Claude Desktop, Cursor, and Genkit Dart.
- [Tools reference](/docs/agent/tools-reference/) — the 4 tools, with request/response examples.
- [Recipes](/docs/agent/recipes/) — prompt patterns for discovery, schema lookup, scaffolding, and plan review.
