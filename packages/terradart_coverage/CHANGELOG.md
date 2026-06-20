# Changelog

## 0.15.0 - 2026-06-20

Lockstep version bump for the v0.15.0 binary release. No
`terradart_coverage` API or CLI changes.

## 0.14.0 - 2026-06-16

First release. `terradart-coverage` — a read-only CLI that reads
`terraform show -json` output and reports how much of an existing Terraform
config is covered by curated `terradart_google` factories (coverage %, supported
types, not-in-catalog types ranked by usage, per-module breakdown). Text or
`--json` output; distributed via Homebrew (no Dart SDK required). Also exposed as
the `check_coverage` MCP tool in `terradart_agent`.
