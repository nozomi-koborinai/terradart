---
name: terradart-ship-wave
description: Ship a TerraDart Wave release — curated factories, examples/docs debt, catalog counts, CHANGELOG, and agent_verify. Use when landing multiple related google_* resources as one user-visible release.
metadata:
  last_modified: 2026-06-22
---
# Ship a TerraDart Wave

Read [`CONTEXT.md`](../../../CONTEXT.md) for vocabulary. Generation policy is in [`AGENTS.md`](../../../AGENTS.md). For each new `google_*` factory, follow [`terradart-add-curated-resource`](../terradart-add-curated-resource/SKILL.md) first; this skill covers the **release boundary** around a Wave.

## PR scope

Ship **one Wave per PR** when possible. Do not bundle:

- unrelated example `pubspec.yaml` / workspace version-debt sweeps
- release version bumps for a different Wave
- agent-guide-only edits with factory work

If example debt must land with a Wave, limit changes to the quickstart that exercises the new factories. See **PR granularity** in [`AGENTS.md`](../../../AGENTS.md).

## Wave complete definition

A Wave PR is **not done** when wrappers and `curatedDoc` land alone. It is done when:

1. **Curated factories** — overrides linted, `terradart wrap` regenerated, API diff reviewed.
2. **Runnable example** — new `examples/<name>_quickstart` **or** extend an existing example so every new/breaking factory appears in synth output. Machine-checked by `tool/check_docs_consistency.dart` (synth `tfType` coverage, API-enablement deps, **`terraform validate` on every quickstart**); a factory may instead get a reasoned `tool/example_debt.yaml` entry, but that is an explicit reviewed decision. For pre-existing debt backfill, see [`terradart-backfill-examples`](../terradart-backfill-examples/SKILL.md). Label `apply-smoke` on the PR when apply-time verification is needed. If the quickstart provisions a high-cost resource (see [`tool/apply_cost_denylist.yaml`](../../../tool/apply_cost_denylist.yaml)), it must be in `apply_smoke_skip.yaml` (existence-billed: licenses/reservations) or `apply_smoke_pr_skip.yaml` (hourly-billed) — the cost gate in `tool/apply_smoke_test.sh` fails the build otherwise.
   - New resource types are cost-classified in `tool/apply_cost_denylist.yaml` (`safe`/`sweep_only`/`never_apply`); unclassified types fail apply-smoke test9 (default-deny). Confirm cost on two axes — price via the gcp-cost MCP (SKU lookup) and billing behavior via terraform MCP + docs (existence-billed vs hourly) — then classify, recording the basis in the ledger comment. License/SPLA-style services absent from the Cloud Billing Catalog fall back to docs/pattern. When unsure, leave unclassified (the example stays skipped).
3. **Breaking changes** — `MIGRATING.md` entry **and** example updated to the new API.
4. **Counts & docs** — `tool/doc_expectations.dart`, `catalog_count_test.dart`, `wrap_command_test.dart`, README curated list, agent/website catalog phrases, example `pubspec.yaml` carets.
5. **CI matrix** — add the example slug to `.github/workflows/ci.yml` `terraform_validate` matrix when introducing a new quickstart.
6. **Verify** — [`terradart-agent-verify`](../terradart-agent-verify/SKILL.md) (`tool/agent_verify.sh`).

`curatedDoc` alone does **not** satisfy (2). README example bullet lists must stay in sync with `examples/`.

## Task progress

- [ ] 1. **Scope the Wave** — list Terraform types, target barrel(s), and which example will exercise them.
- [ ] 2. **Curate each resource** — `terradart-add-curated-resource` workflow per type (`mm_yaml_sources.yaml`, override, lint, wrap).
- [ ] 3. **Example / docs debt** — implement or extend quickstart; update README Examples section; website counts if the minor bumps; sync `tool/example_debt.yaml` (remove covered entries, add reasoned ones only when deferring an example on purpose); if the quickstart provisions a high-cost resource, skip-list it so the cost gate (`tool/apply_smoke_test.sh` test 9) stays green.
- [ ] 4. **Breaking API** — `MIGRATING.md` + migrate any affected examples in the same PR.
- [ ] 5. **Counts** — bump `catalogEntryCount` / `curatedFactoryCount` and every phrase in `tool/doc_expectations.dart`; sync tests.
- [ ] 5b. **Coverage page** — regenerate the site coverage page: `dart tool/render_coverage_page.dart` (CI's freshness check fails otherwise).
- [ ] 6. **Version & CHANGELOG** — lockstep `0.N.P` across four packages; root + per-package CHANGELOG entries.
- [ ] 7. **CI** — new quickstart in `terraform_validate` matrix when applicable.
- [ ] 8. **Verify** — `tool/agent_verify.sh` (add `--maintainer` when touching wrap-init / wrap-promote).
- [ ] 9. **Tag & GitHub release** — after merge and green CI: push `v0.N.P`, publish via `.github/workflows/publish.yml`, create the GitHub release using the template below (title is **`v0.N.P` only** — no Wave subtitle in the release name).

## Example patterns

| Situation | Action |
|-----------|--------|
| New service area (e.g. GKE) | Add `examples/gke_quickstart/` from `compute_quickstart` template |
| Extends existing stack (e.g. WIF provider on IAM pool) | Extend `examples/iam_quickstart/lib/main.dart` |
| Breaking constructor change | `MIGRATING.md` + fix all examples importing the factory |

## GitHub release notes

Release tags and GitHub releases are **maintainer manual** (see [`AGENTS.md`](../../../AGENTS.md)). After `v0.N.P` is pushed and pub.dev publish succeeds, create the GitHub release body to match recent releases (canonical examples: [`v0.19.0`](https://github.com/nozomi-koborinai/terradart/releases/tag/v0.19.0), [`v0.20.0`](https://github.com/nozomi-koborinai/terradart/releases/tag/v0.20.0)). Do **not** use a bare CHANGELOG paste or a one-paragraph summary.

### Required sections (in order)

1. **Opening** — lockstep packages list + **No breaking changes** vs the previous published semver (or call out breaking changes + link `MIGRATING.md`).
2. **Bundled Waves (optional)** — when one semver ships multiple Waves (e.g. `0.19.0` = Wave 71 + 72), explain merge/publish ordering if any intermediate tag was skipped.
3. **`## Highlights`** — catalog counts (`N curated + 1 data source`, entries, barrels), number of new factories, new/extended examples (linked).
4. **`## Wave …`** — one subsection per Wave: `## Wave N — Title (\`barrel\` barrel)`; table of Terraform type → Dart factory; 1–2 sentences on sealed types / IAM-member-only policy when relevant.
5. **`## Tooling` (optional)** — only when the release includes CI/apply-smoke/agent-guide changes worth calling out.
6. **`## Upgrade`** — `pubspec.yaml` snippet with `terradart_core` + `terradart_google` carets at the new version.
7. **Docs links** — `Waves guide` · `Getting started` (terradart.dev URLs).
8. **`## What's Changed`** — bullet per merged PR: `* Wave N: … by @author in <PR URL>`.
9. **`**Full Changelog**`** — compare link `v0.(N-1).0...v0.N.P` (adjust when the previous tag is not the immediate predecessor).

### Template (single Wave)

Replace placeholders; duplicate the Wave section when shipping multiple Waves in one semver.

```markdown
Lockstep release across `terradart_core`, `terradart_codegen`, `terradart_google`, `terradart_agent`, and `terradart_coverage`. **No breaking changes** vs `0.PREV`.

## Highlights

- **`terradart_google` catalog:** **NNN curated resource factories + 1 data source** (**NNN entries**; **NN service barrels**)
- **K new curated factories** for <service area>
- **New example:** [`foo_quickstart`](examples/foo_quickstart/)
- **Extended example:** [`bar_quickstart`](examples/bar_quickstart/) — <one line on what was added> *(omit when N/A)*

## Wave N — <Title> (`<barrel>` barrel)

<K> curated factories:

| Terraform type | Dart factory |
| --- | --- |
| `google_foo` | `GoogleFoo` |
| … | … |

<Optional: sealed dispatch, typed nested blocks, IAM-member-only note.>

## Tooling

- **<Area>:** <one line> *(omit section when nothing user-visible)*

## Upgrade

    dependencies:
      terradart_core: ^0.N.P
      terradart_google: ^0.N.P

Docs: [Waves guide](https://terradart.dev/docs/waves/) · [Getting started](https://terradart.dev/docs/getting-started/)

## What's Changed

* Wave N: <title> by @author in https://github.com/nozomi-koborinai/terradart/pull/NNN

**Full Changelog**: https://github.com/nozomi-koborinai/terradart/compare/v0.PREV...v0.N.P
```

```bash
# Tag triggers pub.dev publish (.github/workflows/publish.yml)
git tag -a v0.N.P -m "Release v0.N.P — Wave N <Title>"
git push origin v0.N.P

# GitHub release (after publish workflow is green)
gh release create v0.N.P --title "v0.N.P" --notes-file /path/to/notes.md
```

## Useful commands

```bash
# Batch scaffold (maintainer)
dart tool/batch_wrap_init.dart --types google_foo,google_bar

# Docs gate
dart tool/check_docs_consistency.dart

# Full agent gate
tool/agent_verify.sh
```
