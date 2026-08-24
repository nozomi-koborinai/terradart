---
title: Documentation
description: Guides for TerraDart — type-safe infrastructure-as-code for Dart.
---

Welcome to the TerraDart docs.

Guides track the **0.26.x** line on pub.dev. The repo [README](https://github.com/nozomi-koborinai/terradart/blob/main/README.md) and [examples](https://github.com/nozomi-koborinai/terradart/tree/main/examples) stay the deepest references; this site mirrors onboarding and release expectations.

## Packages

TerraDart is organized as a multi-package monorepo:

- **[`terradart_core`](https://pub.dev/packages/terradart_core)** — Core runtime primitives (`Stack`, `Resource`, `Provider`, `Data`, `TfArg`, synth/write behavior).
- **[`terradart_google`](https://pub.dev/packages/terradart_google)** — Curated factories for Google Cloud (`hashicorp/google`).
- **[`terradart_google_beta`](https://pub.dev/packages/terradart_google_beta)** — Curated factories for beta-only Google Cloud resources (`hashicorp/google-beta`).
- **[`terradart_appwrite`](https://pub.dev/packages/terradart_appwrite)** — Curated factories for Appwrite (`appwrite/appwrite`).
- **[`terradart_cloudflare`](https://pub.dev/packages/terradart_cloudflare)** — Curated factories for Cloudflare edge infrastructure (`cloudflare/cloudflare`, filled at `5.23.0`: 257 resource factories + 446 data sources).
- **[`terradart_agent`](https://github.com/nozomi-koborinai/terradart/tree/main/packages/terradart_agent)** — MCP server (`terradart-mcp`) exposing the curated catalog to AI coding agents.
- **[`terradart_codegen`](https://pub.dev/packages/terradart_codegen)** — Maintainer generation CLI (`terradart wrap`).

## Guides

- [Getting Started](/docs/getting-started/) — install, first `*.tf.json`, boundary export
- [Why TerraDart](/docs/why-terradart/) — motivation, comparison, and curated coverage
- [Architecture](/docs/architecture/) — generate `*.tf.json`, `synth()` / `writeTo()`, AppExport
- [Coverage](/docs/coverage/) — every curated factory, its barrel, and runnable examples
- [How it's built](/docs/how-its-built/) — the generation pipeline, verification harness, and sustainability
- [Migrating](/docs/migrating/) — breaking-change guides for minor bumps
- [Status & versioning](/docs/status/) — alpha, path to beta, 1.0

## For AI assistants

- [terradart-mcp](/docs/agent/) — MCP catalog server for coding agents (alpha)
- [llms.txt](/llms.txt) — condensed site map for LLM crawlers
