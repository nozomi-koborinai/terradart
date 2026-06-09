---
name: terradart-ship-wave
description: Ship a TerraDart Wave release — curated factories, examples/docs debt, catalog counts, CHANGELOG, and agent_verify. Use when landing multiple related google_* resources as one user-visible release.
metadata:
  last_modified: 2026-06-09
---
# Ship a TerraDart Wave

Read [`CONTEXT.md`](../../../CONTEXT.md) for vocabulary. Generation policy is in [`AGENTS.md`](../../../AGENTS.md). For each new `google_*` factory, follow [`terradart-add-curated-resource`](../terradart-add-curated-resource/SKILL.md) first; this skill covers the **release boundary** around a Wave.

## Wave complete definition

A Wave PR is **not done** when wrappers and `curatedDoc` land alone. It is done when:

1. **Curated factories** — overrides linted, `terradart wrap` regenerated, API diff reviewed.
2. **Runnable example** — new `examples/<name>_quickstart` **or** extend an existing example so every new/breaking factory appears in synth output.
3. **Breaking changes** — `MIGRATING.md` entry **and** example updated to the new API.
4. **Counts & docs** — `tool/doc_expectations.dart`, `catalog_count_test.dart`, `wrap_command_test.dart`, README curated list, agent/website catalog phrases, example `pubspec.yaml` carets.
5. **CI matrix** — add the example slug to `.github/workflows/ci.yml` `terraform_validate` matrix when introducing a new quickstart.
6. **Verify** — [`terradart-agent-verify`](../terradart-agent-verify/SKILL.md) (`tool/agent_verify.sh`).

`curatedDoc` alone does **not** satisfy (2). README example bullet lists must stay in sync with `examples/`.

## Task progress

- [ ] 1. **Scope the Wave** — list Terraform types, target barrel(s), and which example will exercise them.
- [ ] 2. **Curate each resource** — `terradart-add-curated-resource` workflow per type (`mm_yaml_sources.yaml`, override, lint, wrap).
- [ ] 3. **Example / docs debt** — implement or extend quickstart; update README Examples section; website counts if the minor bumps.
- [ ] 4. **Breaking API** — `MIGRATING.md` + migrate any affected examples in the same PR.
- [ ] 5. **Counts** — bump `catalogEntryCount` / `curatedFactoryCount` and every phrase in `tool/doc_expectations.dart`; sync tests.
- [ ] 6. **Version & CHANGELOG** — lockstep `0.N.P` across four packages; root + per-package CHANGELOG entries.
- [ ] 7. **CI** — new quickstart in `terraform_validate` matrix when applicable.
- [ ] 8. **Verify** — `tool/agent_verify.sh` (add `--maintainer` when touching wrap-init / wrap-promote).

## Example patterns

| Situation | Action |
|-----------|--------|
| New service area (e.g. GKE) | Add `examples/gke_quickstart/` from `compute_quickstart` template |
| Extends existing stack (e.g. WIF provider on IAM pool) | Extend `examples/iam_quickstart/lib/main.dart` |
| Breaking constructor change | `MIGRATING.md` + fix all examples importing the factory |

## Useful commands

```bash
# Batch scaffold (maintainer)
dart tool/batch_wrap_init.dart --types google_foo,google_bar

# Docs gate
dart tool/check_docs_consistency.dart

# Full agent gate
tool/agent_verify.sh
```
