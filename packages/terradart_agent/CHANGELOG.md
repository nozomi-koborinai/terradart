# Changelog

## 0.12.0

Initial release.

- **`terradart-mcp`** — a Model Context Protocol (MCP) server that exposes the curated `terradart_google` GCP factory catalog to AI coding agents, built on `package:genkit_mcp`.
- **4 catalog tools:** `list_resources` (filterable list of curated factories), `list_barrels` (per-service barrels), `get_resource_schema` (constructor params, nested types, and sensitive fields for one resource), and `get_quickstart` (worked end-to-end stack scenarios).
- Reads the static `terradartCatalog` from `terradart_google` (no Terraform schema parsing at runtime).
- Distributed as a self-contained binary via Homebrew + GitHub Release (`publish_to: none` — not published to pub.dev).
