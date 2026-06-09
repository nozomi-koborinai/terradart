# Changelog

## 0.12.2

Lockstep version bump for `terradart_google` v0.12.2. MCP catalog picks up two new entries (`google_iam_workload_identity_pool_provider`, `google_iap_web_backend_service_iam_binding`) and the new `iap` barrel via the static `terradartCatalog`.

## 0.12.1

- **Fixed** — `list_resources` and `list_barrels` now return a JSON object (`{"resources": [...]}` / `{"barrels": [...]}`) instead of a bare array. MCP requires a tool result's `structuredContent` to be an object (record), so strict clients (e.g. Cursor) rejected the previous array form with "expected record, received array".
- **Added** — Intel macOS (`terradart-mcp-darwin-amd64`) binary, built on an Apple Silicon runner via Rosetta 2 (Dart has no cross-compile, and GitHub's Intel runners are scarce).

## 0.12.0

Initial release.

- **`terradart-mcp`** — a Model Context Protocol (MCP) server that exposes the curated `terradart_google` GCP factory catalog to AI coding agents, built on `package:genkit_mcp`.
- **4 catalog tools:** `list_resources` (filterable list of curated factories), `list_barrels` (per-service barrels), `get_resource_schema` (constructor params, nested types, and sensitive fields for one resource), and `get_quickstart` (worked end-to-end stack scenarios).
- Reads the static `terradartCatalog` from `terradart_google` (no Terraform schema parsing at runtime).
- Distributed as a self-contained binary via Homebrew + GitHub Release (`publish_to: none` — not published to pub.dev).
