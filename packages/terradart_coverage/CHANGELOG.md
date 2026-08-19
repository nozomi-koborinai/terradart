# Changelog

## 0.25.1 - 2026-08-19

Lockstep release with `terradart_google_beta` 0.25.1. No functional changes in this package.

## 0.25.0 - 2026-08-15

Lockstep release with `terradart_google` 0.25.0. Coverage report no longer requires a live uncurated GA type as a sentinel.

## 0.24.0 - 2026-07-03

Lockstep release with `terradart_core` / `terradart_google` 0.24.0. No functional changes in this package.

## 0.23.0 - 2026-07-02

Lockstep release for `terradart_core` / `terradart_google` 0.23.0. No API changes in `terradart_coverage`.

## 0.22.0 - 2026-06-30

Lockstep release for Waves 76–77. No API changes in `terradart_coverage`.

## 0.21.0 - 2026-06-28

Lockstep release for Wave 74. No API changes in `terradart_coverage`.

## 0.20.0 - 2026-06-21

Lockstep release for Wave 73. No API changes.

## 0.19.0 - 2026-06-21

Lockstep release. No API changes vs `0.18.0`.

## 0.18.0 - 2026-06-21

Lockstep release. No API changes vs `0.17.1`.

## 0.17.1 - 2026-06-21

Checking coverage no longer requires `terraform init`.

`--dir` (and a bare invocation) now scans `.tf` / `.tf.json` source directly —
recursively, with no terraform run, init, backend, or credentials, which is all
"how much of my config is curated?" needs. It descends into subdirectories (so
one run at a repo root covers `dev/`, `prod/`, `modules/`, …), reports a
per-directory breakdown, and calls out registry/git modules as not analyzed.

The evaluated path is now opt-in: pipe `terraform show -json` (or pass it as a
file) when you already have a plan/state and want exact instance counts and
remote modules expanded. 0.17.0 briefly made `--dir` run `terraform` itself,
which failed with "Backend initialization required" on a remote backend; that
is removed.

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
