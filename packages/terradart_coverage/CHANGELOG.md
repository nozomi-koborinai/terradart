# Changelog

## 0.17.0 - 2026-06-21

Point the checker at a Terraform directory instead of piping JSON.

- **`--dir <dir>`** runs `terraform show -json` for you, reading current state
  when the directory is applied and falling back to a plan otherwise. Because
  Terraform does the reading, the directory may be HCL (`.tf`) or JSON
  (`.tf.json`) — the CLI never parses HCL.
- A bare `terradart-coverage` (with nothing piped in) now defaults to the
  current directory, like `terraform` itself, instead of blocking on stdin.
- Adds the package README and an end-to-end test against a real
  `terraform show -json` document; test suite grows from 16 to 31.

## 0.16.0 - 2026-06-21

Lockstep version bump for the v0.16.0 binary release. No
`terradart_coverage` API or CLI changes.

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
