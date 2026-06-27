---
name: terradart-agent-verify
description: Run TerraDart's shared agent gate (docs consistency, analyze, tests, wrap --check, pubsub smoke). Use before claiming maintainer or agent work is complete.
metadata:
  last_modified: 2026-06-09
---
# TerraDart agent verification

Policy and pitfalls live in [`AGENTS.md`](../../../AGENTS.md) at the repo root. This skill is the repeatable **done** workflow.

## Contents

- [When to use](#when-to-use)
- [Workflow](#workflow)
- [Optional flags](#optional-flags)
- [What this does not cover](#what-this-does-not-cover)

## When to use

- Before opening or updating a PR.
- After editing wrapper overrides, generated wrappers, examples, or agent docs.
- After a cloud-agent session claims work is finished.

## Workflow

**Task progress:**

- [ ] 1. From the **repository root**, run `dart pub get` if dependencies changed.
- [ ] 2. Run `tool/agent_verify.sh` and confirm it exits 0 (`agent_verify: OK`). This includes `check_example_topology` (strict quickstarts only) and `apply_smoke_test` (cost gate + **cost-comment gate** test 13).
- [ ] 3. `check_docs_consistency` (step 2) already synths all quickstarts and runs `terraform validate` per example when `terraform` is on `PATH`.
- [ ] 4. If you touched `pubsub_quickstart` or synth/export paths, run `tool/smoke_quickstart.sh`.
- [ ] 5. Report which commands ran in the PR or task summary.

## Optional flags

```bash
tool/agent_verify.sh --format       # scoped dart format (core, codegen, agent)
tool/agent_verify.sh --maintainer   # add wrap-init / wrap-promote e2e tests
```

Use `--maintainer` when changing `wrap-init`, `wrap-promote`, or their tests.

## What this does not cover

- Parallel CI `terraform_validate` matrix fan-out (local gate validates sequentially via `example_synth_gates.dart`).
- Live GCP `terraform apply`.
- Publishing to pub.dev or cutting release tags (maintainer manual steps after merge).
