# Agent Guide

This file is the shared source of truth for coding agents working on TerraDart. Tool-specific files such as `CLAUDE.md` or `.cursor/rules/*` should point back here instead of duplicating policy.

## Current phase — maintenance + path to beta

The GA `hashicorp/google` catalog is **filled** (alpha). The curation push is over; the harness runs in **maintenance mode**:

| Loop | Cadence | Actor → merge path |
|------|---------|--------------------|
| Schema bump (GA + google-beta ride-along) | Sundays 22:00 UTC ([`schema-bump.yml`](.github/workflows/schema-bump.yml)) | Monday-morning agent ([runbook](.cursor/agents/schema-bump-postprocess.md)) → [`bump-merge.yml`](.github/workflows/bump-merge.yml) executor, gated by `BUMP_MERGE_ENABLED` |
| Wave shipping | Weekly, Tuesday mornings (Cursor schedule); no-op while [`tool/curation_backlog.yaml`](tool/curation_backlog.yaml) is empty | agent ([runbook](.cursor/agents/wave-shipper.md)) → [`wave-open.yml`](.github/workflows/wave-open.yml) + [`wave-merge.yml`](.github/workflows/wave-merge.yml) executor, gated by `WAVE_MERGE_ENABLED` |
| Loop health | Mondays 03:00 UTC ([`loop-health.yml`](.github/workflows/loop-health.yml)) | report appended to the `loop-health` issue |

Human / maintainer focus in this phase:

- **Path to beta** — three external-validation gates; the canonical list lives in [status](website/src/content/docs/docs/status.md) (not duplicated here).
- **Example-debt paydown** — the 2026-08 apply-excluded batch left a large [`tool/example_debt.yaml`](tool/example_debt.yaml); shrinking it is standing quality work via [`terradart-backfill-examples`](.agents/skills/terradart-backfill-examples/SKILL.md).
- **Cookbook and docs** — real-apply records and user-facing guides.

`google-beta` support is a **filled beta-only catalog** (128 resource factories at the current provider pin): [`packages/terradart_google_beta`](packages/terradart_google_beta). Types that also exist in GA stay in `terradart_google`. There is still no backlog sweep or wave lane for new names — a later provider pin that adds a beta-only type lands on request via [`terradart-add-beta-resource`](.agents/skills/terradart-add-beta-resource/SKILL.md). Generated against a **filtered** schema fixture (`source_beta/`, re-extracted automatically by the weekly schema bump at the GA bump version via `extract_schema_subset.dart --resources-from`, and by hand only when the curated set changes — never hand-edited; `schema.json` keys are the single source of truth for the set). Universal QA Gate 9 fails the build if a beta-only type appears in the GA schema — promotion means demoting the factory from beta (breaking, maintainer work) while GA curation goes through the backlog. Per-provider pipeline coordinates live in [`tool/providers.yaml`](tool/providers.yaml); beta wrappers pin the `provider` meta-argument (`wrap --resource-provider`) because beta shares the GA `google_*` type prefix. Beta examples are synth + `terraform validate` only (the apply-smoke skip ledger records why). The package releases in lockstep and publishes as `publish.yml` Phase 4 — its FIRST pub.dev release must be a manual maintainer `dart pub publish` (OIDC automated publishing only covers packages that already exist there).

The same lane pattern now also carries **appwrite** (issue #76): [`packages/terradart_appwrite`](packages/terradart_appwrite) wraps the official `appwrite/appwrite` provider (exact-pinned at `2.0.0-beta.1` — bumps are deliberate, together with a fixture re-extraction). The catalog at that pin is **filled** (38 resource factories + 24 data sources); a later pin that adds names lands on request. `mm: false`, no `--resource-provider` pin (the `appwrite_` prefix collides with nothing). **Credentials never enter synth output by design**: `AppwriteProvider` has no API-key parameters; apply authenticates via `APPWRITE_*` environment variables. Appwrite examples are synth + `terraform validate` only (the apply-smoke harness is GCP-only — see the skip ledger's appwrite section). The package releases in lockstep and publishes as `publish.yml` Phase 5 (same first-release-manual caveat as beta). The lane's newest member is **cloudflare**: [`packages/terradart_cloudflare`](packages/terradart_cloudflare) wraps the official `cloudflare/cloudflare` provider (exact-pinned at `5.23.0` — bumps are deliberate, together with a fixture re-extraction). The catalog at that pin is **filled** (257 resource factories + 446 data sources); a later pin that adds names lands on request. `mm: false`, no `--resource-provider` pin (the `cloudflare_` prefix collides with nothing). Its positioning is the **infrastructure edge around a Dart app** (DNS toward Cloud Run / Firebase Hosting; not Dart on Workers). It is also the first **plugin-framework** provider: v5 schemas express object attributes as `nested_type`, which the parser normalizes into the nested-block IR (`skipNestedBlock` keeps computed-only objects such as `meta` out of constructors). **Secrets never enter synth output by design**: `CloudflareProvider` has no token parameters; apply authenticates via `CLOUDFLARE_*` environment variables. Cloudflare examples are synth + `terraform validate` only (see the skip ledger's cloudflare section). The package releases in lockstep and publishes as `publish.yml` Phase 6 (same first-release-manual caveat as beta/appwrite).

## Project Shape

TerraDart is a Dart-first infrastructure-as-code project that synthesizes Terraform JSON. Users normally depend on:

- `terradart_core` for `Stack`, `Resource`, `Data`, `TfArg`, and synth/write behavior.
- `terradart_google` for committed curated Google Cloud factories.
- `terradart_google_beta` for beta-only curated factories (`hashicorp/google-beta`).
- `terradart_appwrite` for curated Appwrite factories (`appwrite/appwrite`, filled at the current pin).
- `terradart_cloudflare` for curated Cloudflare factories (`cloudflare/cloudflare`, filled at the current pin).
- `terradart_agent` for the MCP catalog server.
- `terradart_codegen` for maintainer generation commands such as `wrap`, `wrap-init`, and `wrap-promote`.
- `terradart_hcl` for the HCL / `*.tf.json` front-end (`parseHcl`, `decodeTfJson`, `TfModule`) that `terradart-migrate` reads existing Terraform through (#80).
- `terradart_migrate` for the HCL → Dart migrator itself: the four generated migration manifests, and `migrateModule` — a `TfModule` in, a Dart package (Stack + `bin/infra.dart` + `pubspec.yaml`) and a report out, resource-atomic (#660). The sidecar writer and the `terradart-migrate` CLI follow (#661).

Read `CONTEXT.md` before design work. It defines project-specific terms such as Curated factory, Beta-only factory, Maintainer generation pipeline, Merged IR, Wrapper override, Agent guide, and Local notes.

## Generation Policy

The supported maintainer generation path is `terradart wrap`.

- Users should import curated factories from `terradart_google`; `terradart codegen` was removed — do not reintroduce user-facing codegen guidance.
- The target architecture is `schema.json + MM YAML -> merged IR -> wrap`.
- `wrapper_overrides/yaml/*.yaml` should become thin: keep human API decisions there, not facts derivable from provider schema or Magic Modules metadata.
- When an override opts into a derivation gate, delete the hand-written axis it replaces. The `classDocComment` axis is fully retired — the loader rejects it with a migration hint (set `deriveClassDoc: true`, move artisanal prose to `curatedDoc`). `curatedDoc` is only valid under `deriveClassDoc: true`; `terradart lint-override` (run by `tool/agent_verify.sh`) fails CI on that dead config.
- Generated wrappers under `packages/terradart_google/lib/src/` — and the per-service barrels + `terradart_google.dart` umbrella under `packages/terradart_google/lib/` — must be regenerated by `terradart wrap`; do not hand-edit generated files. Barrel structure derives from the catalog; the authored axes (barrel `doc`, file-name override, hand-written `extraExports`) live in `packages/terradart_codegen/lib/src/codegen/barrels/barrels.yaml`, and `wrap` fails closed when a new catalog barrel has no manifest entry.
- Curated IAM adjuncts include `*_iam_member`, `*_iam_binding`, and `*_iam_policy`. Binding/policy are authoritative (they overwrite grants made outside Terraform) — the same footgun as upstream Terraform. Every curated binding/policy override must set `curatedDoc` that states the authoritative / replace semantics (enforced by `yaml_loader_test.dart`). Prefer `*_iam_member` in examples when an additive grant is enough; still ship binding/policy factories so callers who need authoritative updates are not blocked.
- `terradart_core` is provider-neutral: it must not host wrappers or providers for any specific Terraform provider. Utility providers (e.g. `hashicorp/time` → `TimeProvider` / `TimeSleep` under `lib/time.dart`) live in `terradart_google` next to their only consumer until a second provider package exists.

## Wave shipping policy

A **Wave** is a user-visible release batch of related curated factories — now originating from new resources the weekly schema bump appends to [`tool/curation_backlog.yaml`](tool/curation_backlog.yaml). A Wave PR is complete only when every new or breaking factory has a **runnable example** or a reasoned [`tool/example_debt.yaml`](tool/example_debt.yaml) entry (a reviewed decision, not a default — stale entries fail CI). Example coverage, the API-enablement dependency graph, and the IAM `iam-adjunct-debt:` path (binding/policy factories whose sibling `*IamMember` is already in some quickstart synth may take a ledger entry instead of an example) are machine-checked by `dart tool/example_synth_gates.dart`. Breaking API changes include **`MIGRATING.md`** and updated examples in the same PR; catalog counts, README Examples, and the CI `terraform_validate` matrix move in lockstep. `curatedDoc` alone is never sufficient. Full checklist: [`terradart-ship-wave`](.agents/skills/terradart-ship-wave/SKILL.md).

## PR granularity

Keep pull requests **single-purpose** so humans and agents can review them. Do not bundle unrelated work into one PR.

| Concern | Keep separate from |
|---------|-------------------|
| New curated Wave (factories + example for that Wave) | Example version-debt sweep, workspace lockstep version bumps, unrelated docs |
| Release version bump + CHANGELOG | Unrelated factory curation |
| CI / publish hotfix | Feature work (open a PR even when urgent) |
| Agent-guide / policy-only edits | Runtime or API changes |

When a Wave also pays down example `pubspec.yaml` carets or docs debt, **prefer a follow-up PR** unless the debt is required for that Wave's example to build. If you must combine concerns, state each in the PR title/body and keep the diff reviewable (target well under ~50 hand-written files outside generated wrappers).

## Branch and merge policy

- **Never push directly to `main`.** All changes land through a pull request, including CI/publish hotfixes. Branch protection should enforce this for maintainers and automation alike.
- Scheduled loop agents deliver by push only: the bump agent pushes to its existing `chore/schema-bump-*` branch and the wave-shipper to a `wave/*` branch. They never open PRs themselves — `schema-bump.yml` and `wave-open.yml` own those PRs — and the executors accept only those two branch patterns. Ad-hoc cloud sessions use any descriptive branch and let the platform open the PR; such PRs are never auto-merged.
- Emergency publish fixes still get a PR (can merge immediately after CI green); do not bypass review habit.
- Release tags and GitHub release bodies follow [`terradart-ship-wave`](.agents/skills/terradart-ship-wave/SKILL.md).

## Override lint coverage (`exactly_one_of`)

`terradart lint-override` enforces MM YAML `exactly_one_of` groups via:

- `exactly-one-optional-fanout` — multiple optional member `customSlots` without a sealed virtual slot.
- `exactly-one-paramorder-fanout` — two or more group members listed in `paramOrder` without a sealed virtual slot (the path used when an override skips `customSlots`).

`lint-override` clean does **not** guarantee every optional nested block is type-enforced: resources without MM `exactly_one_of` metadata (e.g. large schema-only surfaces) may still fan out at the Dart API until sealed. Prefer sealed virtual slots + `wrap-promote` when curating new `exactly_one_of` groups. Pre-existing optional-fanout overrides may be listed in [`tool/exactly_one_lint_debt.yaml`](tool/exactly_one_lint_debt.yaml) with a reason until sealed (#107).

### Migration manifest (`migrate-shape-*`)

`terradart wrap --migrate-manifest <file>` also emits the registry's migration manifest — one `MigrateEntry` per curated factory describing how every constructor slot, helper-class field, enum and output getter maps back to Terraform (the recipe `terradart migrate` follows, #80/#659). The four manifests live in `packages/terradart_migrate/lib/src/manifest/<registry>.g.dart` (coordinates in `tool/providers.yaml`) and every `wrap --check` lane verifies its manifest alongside the wrappers (#658). The manifest is derived from the same IR + override + emitted-source inputs as the wrappers; nothing is hand-listed. Shapes it cannot derive are recorded as `manual`, and `lint-override` makes that visible from the YAML alone:

- `migrate-shape-underivable` — a `prelude` helper whose `encode()` is not a field-per-key map literal, a helper field or custom slot with a type the manifest cannot express, or a custom slot whose argMap entry has no static key. Reshape it, declare `customSlots.<slot>.migrate: {kind: manual, reason: ...}` when the slot is manual by design, or add a reasoned entry to [`tool/migrate_manifest_debt.yaml`](tool/migrate_manifest_debt.yaml) (stale entries fail the lint).
- `migrate-hint-stale` — a `migrate:` hint on a slot the manifest derives fine; remove the hint.

The runtime types (`MigrateManifest`, `MigrateSlot`, ...) are hand-written in `packages/terradart_migrate/lib/src/migrate_manifest.dart`; the generated values are regenerated by the wrap lanes, never edited.

### Round-trip gate (`tool/migrate_roundtrip_gates.dart`)

The migrator's correctness oracle: every quickstart's `tf-out/main.tf.json` is migrated back to Dart with `migrateModule`, every generated Stack goes into one temporary package that is analyzed once, and each Stack is re-synthesized and deep-compared with the original — `synth(migrate(synth(S))) == synth(S)`. It runs in `agent_verify.sh` full mode (after the synth gates, reusing `tf-out`) and as the CI `migrate round-trip gate` job. Strict examples must round-trip completely; a resource the migrator keeps in Terraform needs a reasoned entry in [`tool/migrate_roundtrip_debt.yaml`](tool/migrate_roundtrip_debt.yaml) (slug → address → reason), and an entry whose resource round-trips again is stale and fails the gate. A new blocker usually means a manifest shape the extractor got wrong — fix the generator or ledger it, never the generated file.

### Example verification (no live GCP apply)

Live `terraform apply` / `destroy` against `terradart-validate` is **retired**. CI and agents must not apply or destroy examples on a real GCP project. Example quality is synth + `terraform validate` (`dart tool/example_synth_gates.dart` and the CI `terraform_validate` matrix).

Cost and skip ledgers remain as policy, not as a live-apply harness:

- [`tool/apply_smoke_skip.yaml`](tool/apply_smoke_skip.yaml) — examples that cannot stand alone (org-only, external deps, other-provider lanes)
- [`tool/apply_smoke_pr_skip.yaml`](tool/apply_smoke_pr_skip.yaml) — high-cost examples (historical PR-deferral list; still part of the cost-gate partition)
- [`tool/apply_cost_denylist.yaml`](tool/apply_cost_denylist.yaml) — per-type cost tiers (`safe` / `sweep_only` / `never_apply`)

**The cost gate is default-deny:** a type not classified in the denylist fails [`tool/apply_smoke_test.sh`](tool/apply_smoke_test.sh) test 9. Classification requires gcp-cost MCP evidence recorded in the ledger comment (see **Cloud Agent Runbooks**). `tool/apply_smoke.sh` accepts `--dry-run` only; a live apply or destroy exits non-zero.

### Schema-bump post-processing (weekly)

The weekly bump PR (`chore/schema-bump-*`, opened Sunday 22:00 UTC by [`schema-bump.yml`](.github/workflows/schema-bump.yml)) is classified and mechanically repaired by a Monday-morning agent — the Tier 1/2/3 rubric, allowed repairs, and the downstream [`bump-merge.yml`](.github/workflows/bump-merge.yml) executor's re-verification live in [`.cursor/agents/schema-bump-postprocess.md`](.cursor/agents/schema-bump-postprocess.md). The agent never merges; merging stays disarmed unless the `BUMP_MERGE_ENABLED` repository variable is `true`. A `bump-escalated` PR is maintainer work (typically a new `exactly_one_of` sealed design or a breaking diff needing `MIGRATING.md`).

### Wave shipping (weekly)

Waves are implemented by a scheduled agent on Tuesday mornings — instructions AND the delivery pipeline (marker pushes, `wave-open.yml`, the `wave-merge.yml` executor's independent re-verification — including a block on unresolved Bugbot review threads, since CI green is not review clean — WIP-1, repair rounds) live in [`.cursor/agents/wave-shipper.md`](.cursor/agents/wave-shipper.md). The agent never merges; merging stays disarmed unless the `WAVE_MERGE_ENABLED` repository variable is `true`. An empty backlog is a normal no-op — the loop idles until the weekly schema bump detects new resources. Escalations (`exactly_one_of` sealed designs, uncertain cost classification, out-of-scope files) stay maintainer work.

### Loop health (weekly)

Every Monday noon JST, [`loop-health.yml`](.github/workflows/loop-health.yml) appends a metrics + stall report to the open issue labeled `loop-health`: per-loop throughput and verdict counts (bump / wave), backlog depth, executor arm state, and stalls — open `wave/*` PRs quiet too long (WIP-1 halts silently behind them), bump PRs the Monday agent missed, verdict-labeled bump PRs missing their mandated report comment (a contentless maintainer handoff), and an actionable backlog with no wave PR opened and none in flight (a run that left no trace). Runs are attributed to the model each schedule was on via [`tool/loop_models.yaml`](tool/loop_models.yaml) — the maintainer appends an entry whenever a loop's model is flipped in the Cursor UI — so per-loop precision (first-pass green rate, `fix(repair):` commit counts, comment-marked escalations, Bugbot findings per merged wave) stays comparable across models. The two loops run with different token capabilities: the wave-shipper's token is push-only (probed in #597), so its escalation comments arrive via [`escalation-relay.yml`](.github/workflows/escalation-relay.yml), which turns an empty-commit `[agent-relay]` push on an `escalation/*` branch into a verbatim comment on the loop-health issue; the Monday bump agent's token can comment and label, so the bump loop delivers verdicts as PR comments plus the `bump-approved` / `bump-escalated` labels. The report also carries a credential probe — whether `SCHEMA_BUMP_PAT` is valid and how soon it expires, and whether the executor labels exist — because that one PAT authenticates schema-bump, bump-merge, wave-open, and wave-merge. Stall thresholds live as constants in [`tool/loop_health_report.dart`](tool/loop_health_report.dart). This is the input to the outer loop: a human reads it and improves instructions or ledgers, not the code under them.

## Documentation Policy

- `AGENTS.md` is the committed operational guide for agents.
- `docs/` is Gitignored local working memory: historical design notes, ADR drafts, raw transcripts, and private planning.
- Root `CONTEXT.md` is a glossary only. Do not put implementation plans, chat transcripts, or ADR content there.
- Public website docs live under `website/src/content/docs/docs/`.

## Agent Skills

Committed maintainer skills live under [`.agents/skills/`](.agents/skills/) (Agent Skills format: `name` / `description` frontmatter + task checklists). They complement this file with **progressive disclosure** for specific jobs — they do not replace `AGENTS.md` policy.

| Skill | Use when |
|-------|----------|
| [`terradart-agent-verify`](.agents/skills/terradart-agent-verify/SKILL.md) | Finishing any agent or maintainer change |
| [`terradart-add-curated-resource`](.agents/skills/terradart-add-curated-resource/SKILL.md) | Adding or updating a curated `google_*` factory |
| [`terradart-add-beta-resource`](.agents/skills/terradart-add-beta-resource/SKILL.md) | Adding a later-pin beta-only factory to `terradart_google_beta` |
| [`terradart-ship-wave`](.agents/skills/terradart-ship-wave/SKILL.md) | Landing a Wave release (curated + example/docs + counts + CHANGELOG + GitHub release notes) |
| [`terradart-backfill-examples`](.agents/skills/terradart-backfill-examples/SKILL.md) | Shrinking `tool/example_debt.yaml` (the maintenance-phase work queue) in existing quickstarts |
| [`terradart-tighten-example-topology`](.agents/skills/terradart-tighten-example-topology/SKILL.md) | Wiring backfilled factories into sibling refs; `tool/check_example_topology.dart` |

Optional generic Dart skills from [dart-lang/skills](https://github.com/dart-lang/skills) (`npx skills add dart-lang/skills --skill '*' --agent universal --yes`) are not committed here. [flutter/skills](https://github.com/flutter/skills) targets Flutter apps and is not applicable to TerraDart.

## Agent verification

Before claiming work is done, run from the repository root:

```bash
tool/agent_verify.sh
```

This is the shared agent gate (docs consistency, analyze incl. `tool/`, every package's tests, `terradart wrap --check`, `lint-override`, enum gaps, example synth gates, pubsub smoke). The example synth gates synth every quickstart and enforce catalog coverage plus the API-enablement dependency graph: an example that enables any API must enable **every** API its resources need (`tool/example_api_debt.yaml` is the audited escape hatch). The gate does **not** run the full `terraform_validate` example matrix; GitHub Actions still enforces that on merge. The three override gates (`lint-override`, `check_override_enum_gaps`, `check_mm_upstream_fingerprint`) also run per PR in CI (`override_gates` job) — they used to live only in this script, which let them rot silently when nobody ran it.

**Ad-hoc verification pitfall:** when you compose your own check instead of `agent_verify.sh`, never rely on `&&` after piping a test/build command into `tail` / `grep` / `head` — the pipeline's exit status is the LAST command's, so the pipe swallows a failure and the chain keeps going (this hid a red `dart test` behind a green-looking `| tail -1` once). Run the command bare and check its exit code directly, or use `agent_verify.sh`, which sets `pipefail`.

Optional flags:

```bash
tool/agent_verify.sh --quick        # iteration loop: static + unit gates only
                                    # (skips example synth, package suites,
                                    # cookbook, smoke) — run the FULL gate
                                    # before opening or updating a PR
tool/agent_verify.sh --format       # scoped dart format (hand-written packages)
tool/agent_verify.sh --maintainer   # add wrap-init / wrap-promote e2e tests
```

### Agent guardrails (Cursor + Claude Code)

Cursor sessions (including Cursor Cloud Agent) get hooks from `.cursor/hooks.json`:

- `afterFileEdit` — `dart format` on hand-written Dart only (not `terradart_google/lib/src`).
- `preToolUse` (`Write|Edit`) — blocks direct edits to generated wrappers, wrap goldens, and `.github/workflows/`.

Claude Code sessions get the symmetric guardrails from the committed `.claude/settings.json`: `Edit`/`Write` are **denied** on generated wrappers (`terradart_google/lib/src`) and wrap goldens (`fixtures/wrap/expected_output`), and require **explicit confirmation** on `.github/workflows/`. Regenerate via `terradart wrap`; refresh goldens through the maintainer flow, not in-place edits.

Run `tool/agent_verify.sh` explicitly before claiming work is done (all agents, cloud and local).

## Commits

Use [Conventional Commits](https://www.conventionalcommits.org/) for subject lines. This is documented policy only — the repo does not run commitlint or other commit-message tooling.

Format: `type(scope?): subject` (imperative, concise, no trailing period).

| Type | Use for |
|------|---------|
| `feat` | User-visible capability or public API |
| `fix` | Bug fix |
| `docs` | Documentation and agent guides only |
| `chore` | Tooling, CI, hooks, refactors without API change |
| `test` | Tests only |
| `ci` | GitHub Actions workflow changes |

Optional scope examples: `hooks`, `codegen`, `google`, `website`, `agent`.

Maintainer automation sometimes uses `regen:` or `chore(schema):` — match that style for wrap/schema bot commits.

Avoid vague subjects (`update`, `fix stuff`, `WIP`). Prefer one logical change per commit when you create multiple commits on a branch.

## Useful Commands

Targeted checks when `agent_verify.sh` is too broad:

```bash
dart tool/batch_wrap_init.dart --resources=google_foo,google_bar  # maintainer: batch wrap-init
dart tool/check_docs_consistency.dart
tool/smoke_quickstart.sh
cd packages/terradart_codegen && dart run bin/terradart.dart wrap \
  --provider hashicorp/google \
  --source test/fixtures/wrap/source \
  --output ../terradart_google/lib/src \
  --migrate-manifest ../terradart_migrate/lib/src/manifest/google.g.dart \
  --check
```

## Cloud Agent Runbooks

Cloud agents such as Devin, Cursor Cloud Agent, and Claude Code on the Web should prefer checked-in scripts, provided inputs, and CI gates over local notes, hidden prompts, ad hoc downloads, or machine-local Terraform/GCP state.

### Add Or Update A Curated Google Resource

Inputs: a checked-in or task-provided `schema.json` (plus Magic Modules YAML when semantic hints are needed). Do not assume `terraform` is installed or fetch schemas ad hoc; if the schema is missing or stale, stop and report it. Follow [`terradart-add-curated-resource`](.agents/skills/terradart-add-curated-resource/SKILL.md) for the step-by-step workflow and override checklist; binding rules live in **Generation Policy** and **Project Pitfalls**.

**Cost-classify every new resource type (policy):** call the gcp-cost tools (`list_services` → `list_skus` → `get_sku_price`) BEFORE editing [`tool/apply_cost_denylist.yaml`](tool/apply_cost_denylist.yaml) — via Cursor MCP locally, or `dart tool/gcp_cost_call.dart <tool> '<json>'` in Cloud Agent sessions — and confirm billing behavior (existence-billed vs hourly; does destroy stop the charge) via terraform MCP + docs. Record the evidence in the ledger comment (format: the ledger header). Hourly-billed types → `sweep_only`, never `safe`; existence-billed (licenses, reservations) → `never_apply`; **when unsure, leave it unclassified** (the example stays skipped — safe). Never mark a billable type `safe`. Services absent from the Cloud Billing Catalog (e.g. License Manager / SPLA) fall back to docs/pattern.

### Handle Provider Schema Or MM YAML Drift

1. Read the schema-bump or drift report before editing.
2. Use provided artifacts or existing tools such as `tool/fetch_schema.dart`, `tool/sync_mm_yaml.dart`, and `tool/generate_drift_report.dart`; do not perform ad hoc network downloads.
3. If the environment lacks network access, Terraform, or required credentials, stop and report the missing capability instead of inventing inputs.
4. Regenerate wrappers with `terradart wrap` only after the source inputs are present.
5. Treat public Dart API changes as intentional only after reviewing the generated diff.
6. Update wrapper overrides only when the curated API decision changes.

### Advance Generation Pipeline Cleanup

1. Keep the maintainer path centered on `terradart wrap`.
2. Do not reintroduce `terradart codegen` docs, tests, or user workflows.
3. Move machine-derived facts toward merged IR and keep wrapper overrides for human API decisions.
4. Prefer adding repeatable `tool/agent_*.dart` or `tool/agent_*.sh` scripts before adding long prose instructions.

### Fix An Example That Fails Synth Or Validate

Example failures are synth or `terraform validate` regressions. Fix the example, then re-run `dart tool/example_synth_gates.dart` (or `tool/agent_verify.sh`) and confirm the slug is green. Do **not** `terraform apply` against `terradart-validate` or any other live project from CI or an agent session.

Recurring constraints that pass synth + `terraform validate` but fail at a human's real apply (real identities for IAM members, project *number* vs id, restricted resource-level roles, full-name data assets, extra required args, async-operation races) are cataloged with their fixes in the [`terradart-backfill-examples`](.agents/skills/terradart-backfill-examples/SKILL.md) pitfall table.

When a resource can't stand alone in an example — org-only (Shared VPC host/service), physical-circuit-dependent (Interconnect), or needing scaffolding out of the example's scope (VPN gateways/tunnels) — drop it from the example and record each dropped factory in [`tool/example_debt.yaml`](tool/example_debt.yaml) with a reason. Removal drops the factory from synth coverage, which `check_docs_consistency` fails otherwise; also update the example's doc comment to match the reduced surface.

## Project Pitfalls

- When adding curated resources, verify Terraform resource names against the provider schema key. Do not infer names from Magic Modules product/file names.
- The wrap fixture is the GA `hashicorp/google` provider schema. Beta-only resources are absent unless a separate fixture strategy is added.
- Example stacks do not declare Terraform variables. Use Dart interpolation for constructor values such as `projectId`, not Terraform literals like `${var.project_id}`.
- When adding resources in batches, update hard-coded curated-count assertions in the same PR or batch.
- When bumping versions, check inter-package caret constraints with per-package CI in mind; workspace resolution can hide stale constraints locally.
- Release tags and GitHub releases are created manually by the maintainer. Use the **GitHub release notes** checklist in [`terradart-ship-wave`](.agents/skills/terradart-ship-wave/SKILL.md) (match [`v0.19.0`](https://github.com/nozomi-koborinai/terradart/releases/tag/v0.19.0) / [`v0.20.0`](https://github.com/nozomi-koborinai/terradart/releases/tag/v0.20.0) format — not a CHANGELOG paste).

## Cursor Cloud specific instructions

Cloud Agent VMs provision their toolchain from [`.cursor/environment.json`](.cursor/environment.json), whose `install` step runs the idempotent [`.cursor/install.sh`](.cursor/install.sh): it installs **Dart SDK stable** (≥ 3.10; most packages require ^3.6, `terradart_agent` and `terradart_coverage` require ^3.10) from the official apt repo, **Terraform** (≥ 1.11) from HashiCorp apt, the **Google Cloud CLI** (`gcloud`) from Google's apt repo, and the `gcp-cost-mcp-server` binary behind `tool/gcp_cost_call.dart`, then runs `dart pub get`. Cursor caches the result as a snapshot, so later agent boots are fast. Edit `install.sh` when the toolchain changes — do not rely on a hand-built snapshot. After changing `install.sh`, rebuild / refresh the Cloud Agent environment snapshot so new boots pick up `gcloud`.

**gcloud + terradart-validate (read-only).** CLI alone is not enough — register a **separate** Cursor Secret `GCP_VALIDATE_SA_JSON` (inline service-account JSON) for a **read-only** SA on `terradart-validate` (list/get style roles such as `roles/viewer` / Browser; no create/delete). Do **not** reuse the gcp-cost `GOOGLE_APPLICATION_CREDENTIALS` secret (Billing Catalog only). Auth helper: `eval "$(tool/gcloud_validate_auth.sh)"`. High-cost orphan probe (never mutates): `tool/apply_smoke_orphan_check.sh`. Agents must not `gcloud … delete` / create, and must not run `tool/apply_smoke.sh` without `--dry-run`.

**gcp-cost MCP.** `.cursor/mcp.json` launches [`tool/gcp-cost-mcp-wrapper.sh`](tool/gcp-cost-mcp-wrapper.sh), which materializes the Cursor Secret `GOOGLE_APPLICATION_CREDENTIALS` (inline JSON) to `~/.config/gcp-cost/service-account.json` (`chmod 600`) before exec'ing `gcp-cost-mcp-server`. Register the service-account JSON as a Cursor Secret; do not commit credentials. Public Cloud Billing Catalog pricing needs no project API enablement; prefer a dedicated low-privilege SA over a production key. Cursor's MCP integration reaches this server from the local IDE only; Cloud Agent sessions never launch command-type MCP servers, so they call the same tools through [`tool/gcp_cost_call.dart`](tool/gcp_cost_call.dart) (maintainer ops, not part of any shipped package) — a judgment-free genkit_mcp-client transport that launches the server via the wrapper above. Wrappers that decide *for* the agent (pre-picked SKUs, canned classifications) remain forbidden; CI verifies only the resulting denylist comments (test 13).

There is no long-running dev server for core work. Primary flows:

| Goal | Command (repo root) |
|------|---------------------|
| Agent gate (lint, tests, wrap check, smoke) | `tool/agent_verify.sh` |
| Suspected mislabeled `upstream: null` | `dart tool/check_mm_upstream_fingerprint.dart` |
| Apply-smoke selection (dry-run only) | `tool/apply_smoke.sh --all --dry-run` |
| Auth gcloud for validate project (read-only) | `eval "$(tool/gcloud_validate_auth.sh)"` |
| High-cost orphan probe (read-only) | `tool/apply_smoke_orphan_check.sh` |
| Example coverage + API-enablement ratchet | `dart tool/example_synth_gates.dart` |
| Migrator round-trip (synth → migrate → synth) | `dart tool/migrate_roundtrip_gates.dart --reuse-tf-out` |
| Publish readiness (per package) | `cd packages/<pkg> && dart pub publish --dry-run` |
| Synth example stack | `cd examples/pubsub_quickstart && GCP_PROJECT_ID=ci-test-project-id dart run bin/infra.dart` |
| Validate synth output | `cd examples/pubsub_quickstart/tf-out && terraform init -backend=false && terraform validate` |
| MCP catalog server (stdio) | `cd packages/terradart_agent && dart run terradart-mcp` |
| Docs site (optional) | `cd website && bun install && bun run dev` (needs Bun + Node ≥ 22) |

`dart tool/example_synth_gates.dart` (inside `tool/agent_verify.sh`) synths every quickstart and runs `terraform validate` on each `tf-out/` when `terraform` is on `PATH`; `dart tool/check_docs_consistency.dart` is the text-only docs check. Neither replaces the parallel `terraform_validate` CI matrix on merge. Examples use `GCP_PROJECT_ID` (or `ci-test-project-id` for local smoke) — no live GCP credentials are required for synth or `terraform validate`.

## Working Rules

- Prefer small, reviewable changes. Keep unrelated cleanup out of feature work.
- Do not rely on Gitignored `docs/` as authoritative context for cloud-agent work.
- If a cloud agent needs durable guidance, prefer checked-in tooling/CI; otherwise add concise guidance to `AGENTS.md` or vocabulary to `CONTEXT.md`.
- When human review finds an agent deviation, close it with a machine gate (lint rule, `tool/` check, or an explicit allowlist) rather than prose-only guidance — prose rules drift; gates converge.
- Keep long-form design notes in `docs/` unless they are intentionally being promoted into public docs or committed agent guidance.
- After substantive edits, run `tool/agent_verify.sh` when feasible and report what did or did not run.
