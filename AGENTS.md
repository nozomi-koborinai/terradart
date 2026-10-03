# Agent Guide

This file is the shared source of truth for coding agents working on TerraDart. Tool-specific files such as `.cursor/rules/*` should point back here instead of duplicating policy.

## Current phase — maintenance + path to beta

The GA `hashicorp/google` catalog is **filled** (alpha). The curation push is over; the harness runs in **maintenance mode**:

| Loop | Cadence | Actor → merge path |
|------|---------|--------------------|
| Schema bump, one job + PR per lane: google (+ google-beta ride-along), aws, cloudflare | Weekly, staggered: google Sundays, aws Mondays, cloudflare Tuesdays, 22:00 UTC ([`schema-bump.yml`](.github/workflows/schema-bump.yml), crons in `tool/providers.yaml` `bump:`) | the workflow opens the PR and enables auto-merge (squash) when the drift report finds nothing for a human; cloudflare (`bump.mode: pr-only`) and any other bump wait for the maintainer |
| Wave shipping | On demand, when [`tool/curation_backlog.yaml`](tool/curation_backlog.yaml) has entries | the maintainer, or a cloud agent asked to follow [`terradart-ship-wave`](.agents/skills/terradart-ship-wave/SKILL.md) → an ordinary PR the maintainer merges |
| Ledger paydown | Every release preparation (`dart tool/release_ledger_check.dart`, run by `tool/bump_version.sh`) | the release author pays down or accepts the schema-bump ledgers in the release PR ([`RELEASE.md`](RELEASE.md)) |

Human / maintainer focus in this phase:

- **Path to beta** — three external-validation gates; the canonical list lives in [status](website/src/content/docs/docs/status.md) (not duplicated here).
- **Example-debt paydown** — the 2026-08 apply-excluded batch left a large [`tool/example_debt.yaml`](tool/example_debt.yaml); shrinking it is standing quality work via [`terradart-backfill-examples`](.agents/skills/terradart-backfill-examples/SKILL.md).
- **Cookbook and docs** — real-apply records and user-facing guides.

`google-beta` support is a **filled beta-only catalog** (112 resource factories at the current provider pin): [`packages/terradart_google_beta`](packages/terradart_google_beta). Types that also exist in GA stay in `terradart_google`. There is still no backlog sweep or wave lane for new names — a later provider pin that adds a beta-only type lands on request via [`terradart-add-beta-resource`](.agents/skills/terradart-add-beta-resource/SKILL.md). Generated against a **filtered** schema fixture (`source_beta/`, re-extracted automatically by the weekly schema bump at the GA bump version via `extract_schema_subset.dart --resources-from`, and by hand only when the curated set changes — never hand-edited; `schema.json` keys are the single source of truth for the set). Types derive from Magic Modules YAML like GA, with nothing hand-listed: `tool/sync_lane_mm_yaml.dart` resolves every `schema.json` resource to its `mmv1` file through the header of its generated Go source in `hashicorp/terraform-provider-google-beta` at the pinned tag (hand-written resources and IAM adjuncts have none) and writes `source_beta/mm/` plus the `mm_sources.yaml` record; `wrap_lanes.dart` re-syncs on regen whenever that record no longer matches the fixture (so the weekly ride-along refreshes it) and fails the wrap gate on a stale one. The lane wraps with `--mm-hints` (MM `enum_values` → enums, MM `exactly_one_of` → sealed arguments, MM `conflicts` → nullable sealed arguments), and every beta override sets `deriveNestedTypes`, `deriveOutputGetters`, `deriveEnums` and `deriveExactlyOne` (`yaml_loader_test.dart` enforces it; `wrap-init --provider hashicorp/google-beta` fills them). Universal QA Gate 9 fails the build if a beta-only type appears in the GA schema — promotion means demoting the factory from beta (breaking, maintainer work) while GA curation goes through the backlog. Per-provider pipeline coordinates live in [`tool/providers.yaml`](tool/providers.yaml); beta wrappers pin the `provider` meta-argument (`wrap --resource-provider`) because beta shares the GA `google_*` type prefix. Beta inputs that name a GA resource take the `terradart_google` `RefTo` type (the ledger's `hashicorp/google-beta` section inherits the GA rules; `referencesFrom: google`), so the package depends on `terradart_google`. Beta examples are synth + `terraform validate` only. The package releases in lockstep and publishes as `publish.yml` Phase 4.

The same lane pattern now also carries **appwrite** (issue #76): [`packages/terradart_appwrite`](packages/terradart_appwrite) wraps the official `appwrite/appwrite` provider (exact-pinned at `2.0.0-beta.1` — bumps are deliberate, together with a fixture re-extraction). The catalog at that pin is **filled** (38 resource factories + 24 data sources); a later pin that adds names lands on request. `mm: false`, no `--resource-provider` pin (the `appwrite_` prefix collides with nothing). Inputs with a fixed value set are enums: the lane sets `providerEnums: true` and every resource override `deriveEnums: true`; the value sets come from the checked-in `source_appwrite/hints/` (the provider's `stringvalidator.OneOf`, extracted by `tool/extract_provider_hints.dart`, never hand-edited) plus two hand-written prelude enums for sets the provider enforces in code (`appwrite_messaging_provider.type`, `appwrite_tablesdb_column.type`) — re-extract the hints and re-check those two when the pin moves. Every resource override also sets `deriveExactlyOne: true`, as on cloudflare, but the provider declares no `ExactlyOneOf` / `ConflictsWith` / `AtLeastOneOf` at `2.0.0-beta.1` (its one `ConfigValidators` rule is a `RequiredTogether`), so the hints carry no groups and nothing is sealed until a later pin adds some. **Credentials never enter synth output by design**: `AppwriteProvider` has no API-key parameters; apply authenticates via `APPWRITE_*` environment variables. Appwrite examples are synth + `terraform validate` only. The package releases in lockstep and publishes as `publish.yml` Phase 5. The lane's newest member is **cloudflare**: [`packages/terradart_cloudflare`](packages/terradart_cloudflare) wraps the official `cloudflare/cloudflare` provider (exact-pinned; the weekly schema bump re-extracts the fixture at the latest 5.x release and opens a PR that never auto-merges). The catalog at that pin is **filled** (every resource and data source); a type a later pin adds gets a scaffolded override and factory in that bump PR. `mm: false`, no `--resource-provider` pin (the `cloudflare_` prefix collides with nothing). Its positioning is the **infrastructure edge around a Dart app** (DNS toward Cloud Run / Firebase Hosting; not Dart on Workers). It is also the first **plugin-framework** provider: v5 schemas express object attributes as `nested_type`, which the parser normalizes into the nested-block IR (`skipNestedBlock` keeps computed-only objects such as `meta` out of constructors). Inputs with a fixed value set are enums: the lane sets `providerEnums: true` and every resource override `deriveEnums: true`, and the value sets come from `Available values:` descriptions plus the checked-in `source_cloudflare/hints/` — extracted from the provider's Go validators at the pinned tag by `tool/extract_provider_hints.dart`, never hand-edited; the bump's `wrap_lanes.dart --gate regen` re-extracts them when the pin moves, and a stale set fails `wrap` (E405). The same hints carry `exactly_one_of_groups` — every framework `ExactlyOneOf` set, plus each `AtLeastOneOf` set whose members all pairwise `ConflictsWith` — and every cloudflare resource override sets `deriveExactlyOne: true`, so `wrap` seals them as on aws. They also carry `at_most_one_of_groups` — the `ConflictsWith` / `Conflicting` sets no exactly-one group covers, whose members all pairwise conflict (`cloudflare_dns_record` `content` / `data`) — which the same gate seals into a nullable sealed argument; `exclusiveGroups` (`packages/terradart_codegen/lib/src/codegen/exclusive_groups.dart`) is the shared rule, and the extractor lists any conflict it cannot express. **Secrets never enter synth output by design**: `CloudflareProvider` has no token parameters; apply authenticates via `CLOUDFLARE_*` environment variables. Cloudflare examples are synth + `terraform validate` only. The package releases in lockstep and publishes as `publish.yml` Phase 6.

The lane also carries **aws**: [`packages/terradart_aws`](packages/terradart_aws) wraps `hashicorp/aws` (exact-pinned; the weekly schema bump re-dumps the fixture at the latest 6.x release). The fixture `source_aws/` is the **full** provider schema (`schemaMode: full`), and the catalog at that pin is **filled** (every resource and data source); `wrap` emits only types with an override, so the schema bump scaffolds one (`scaffold_lane_overrides.dart`) for every type a later pin adds. The six depth-14 wafv2 / quicksight resources (`aws_wafv2_web_acl`, `aws_wafv2_web_acl_rule`, `aws_wafv2_rule_group`, `aws_quicksight_analysis`, `aws_quicksight_dashboard`, `aws_quicksight_template`) take typed nested helpers with one helper per repeated block shape (`dedupeNestedTypes: true`, sharing within each resource only); the inline `rule` blocks on `aws_wafv2_web_acl` stay a `TfArg<Map<String, dynamic>>` map because `aws_wafv2_web_acl_rule` owns those helper names. `examples/aws_leftover_quickstart` covers every factory outside `aws_lambda_quickstart` and the two gated examples `aws_static_site_quickstart` / `aws_ecs_express_quickstart`; `tool/generate_aws_leftover_example.dart` regenerates it after a wrap. `mm: false`, no `--resource-provider` pin (the `aws_` prefix collides with nothing). Inputs with a fixed value set are enums, as on cloudflare (`providerEnums: true`, every resource override `deriveEnums: true`): the checked-in `source_aws/hints/` come from the provider's validators at the pinned tag via `tool/extract_provider_hints.dart` (`tool/provider_hints_aws.dart` resolves aws-sdk-go-v2 `types` enums at the provider's `go.mod` versions, downloaded at extraction time only), and the bump's regen gate re-extracts them when the pin moves. The same hints carry the provider's `ExactlyOneOf` groups (`exactly_one_of_groups`); every aws resource override sets `deriveExactlyOne: true`, so `wrap` seals each group into one required sealed-type argument (or helper field, inside a nested block) whose variants each set one member, and prints any group it cannot seal. They also carry `at_most_one_of_groups` from SDKv2 `ConflictsWith` and framework `ConflictsWith` / `Conflicting` (combined with the exactly-one rules by the shared `exclusiveGroups`, as on cloudflare), which the same gate seals into a nullable sealed argument — `name` / `name_prefix` becomes `name: .namePrefix('app-')`. **Credentials never enter synth output by design**: the AWS provider schema does not mark its credential arguments sensitive, so `AwsProvider` leaves `access_key` / `secret_key` / `token` / `assume_role_with_web_identity` out by name and `packages/terradart_aws/test/synth_test.dart` fails on any of them; apply authenticates through the AWS SDK credential chain. The migrator translates the nested provider settings (`default_tags`, `assume_role`, `ignore_tags`, `endpoints`) into `AwsProvider`. AWS examples are synth + `terraform validate` only. The package releases in lockstep and publishes as `publish.yml` Phase 7.

The exact pins of aws and cloudflare have one source: the fixture's `provider_version.txt`, which `wrap` emits as `lib/src/_provider_version.g.dart` (`kAwsProviderVersionConstraint` / `kCloudflareProviderVersionConstraint` read it). Each package's `synth_test.dart` checks the pin and the filled catalog against the fixture, and `check_docs_consistency.dart` fails on a doc that hard-codes either pin or catalog count.

## Project Shape

TerraDart is a Dart-first infrastructure-as-code project that synthesizes Terraform JSON. Users normally depend on:

- `terradart_core` for `Stack`, `Resource`, `Data`, `TfArg`, and synth/write behavior.
- `terradart_google` for committed curated Google Cloud factories.
- `terradart_google_beta` for beta-only curated factories (`hashicorp/google-beta`).
- `terradart_appwrite` for curated Appwrite factories (`appwrite/appwrite`, filled at the current pin).
- `terradart_cloudflare` for curated Cloudflare factories (`cloudflare/cloudflare`, filled at the current pin).
- `terradart_aws` for curated AWS factories (`hashicorp/aws`, filled at the current pin).
- `terradart_time` for `TimeProvider` / `TimeSleep` (`hashicorp/time`), the propagation wait any provider package's stack can use.
- `terradart_cli` for the user command `terradart` (`synth`, `validate`, `plan`, `apply`, `destroy`, `outputs`, `migrate`): it runs the project's entry point, then `init` and the engine in the directory it wrote — the `tofu` or `terraform` on `PATH`, else the OpenTofu release it pins (`kOpenTofuVersion`, with a SHA-256 per platform in `lib/src/opentofu.dart`; moving the pin means updating both) — and writes the `addDartDefineOutput()` define file to `.terradart/`. Environments are declared in Dart, never in `pubspec.yaml`: `runEnvironments` of `terradart_core` takes an enum of the project's own and tells the command what it wrote through the entry point manifest (`TERRADART_MANIFEST`). `terradart migrate` is that same executable calling `terradart_migrate` (`scanModuleTree`, `migrateTree`, `migrateModule`); it does not look for a `pubspec.yaml`, because a migration runs before a Dart project exists (`dart pub global activate terradart_cli`). Its tests run with fake processes; the opt-in `e2e` tag (`dart test -t e2e --run-skipped`, the CI `cli_e2e` job on Linux, macOS and Windows) downloads the real pin and applies a local-state Stack. Publishes in `publish.yml` Phase 9, after `terradart_migrate`.
- `terradart_codegen` for maintainer generation commands such as `wrap`, `wrap-init`, and `wrap-promote`. Its executable is `terradart-codegen` (`terradart` is the user command); the tools in this repository run it as `dart run terradart_codegen:terradart`.
- `terradart_hcl` for the HCL / `*.tf.json` front-end (`parseHcl`, `decodeTfJson`, `TfModule`) that `terradart migrate` reads existing Terraform through (#80).
- `terradart_migrate` for the HCL → Dart migrator library: the five generated migration manifests, and `migrateModule` — a `TfModule` in, a Dart package (Stack + `bin/infra.dart` + `pubspec.yaml`) and a report out, resource-atomic (#660). `scanModuleTree` infers roots, children and environment siblings; `migrateTree` writes one Stack per directory into one package with a `tf-out/` tree mirroring the source, the leftover sidecar beside each `main.tf.json`, and `MIGRATION.md`. `--merge-envs` folds sibling environment roots into one Stack and a generated `Env` enum, and `bin/infra.dart` calls `runEnvironments`, so `terradart plan --env <member>` runs one of them. `tool/migrate_fixture_gates.dart` terraform-validates the migrated tree fixtures (#661). The user command is `terradart migrate` (`terradart_cli`). `terradart migrate --report` sizes a tree without writing anything — it replaced the retired `terradart-coverage` CLI. The `terradart-migrate` executable remains as a deprecated alias that prints a notice and runs the same library; there is no Homebrew formula (the old `brew install nozomi-koborinai/tap/terradart-migrate` line was already gone). Ships on pub.dev as a library with `terradart_hcl` beside it: `publish.yml` publishes `terradart_hcl` in its own Phase 1 job and `terradart_migrate` in Phase 8, after every provider package; the website guide is *Migrating from HCL* (#664).

Read `CONTEXT.md` before design work. It defines project-specific terms such as Curated factory, Beta-only factory, Maintainer generation pipeline, Merged IR, Wrapper override, Agent guide, Local notes, and the migrator's Migration manifest, Resource-atomic translation, Leftover sidecar, Child-module mode, Environment root, Round-trip gate, and Zero-diff plan.

## Generation Policy

The supported maintainer generation path is `terradart wrap`.

- Users should import curated factories from `terradart_google`; `terradart codegen` was removed — do not reintroduce user-facing codegen guidance.
- The target architecture is `schema.json + MM YAML -> merged IR -> wrap`.
- `wrapper_overrides/yaml/*.yaml` should become thin: keep human API decisions there, not facts derivable from provider schema or Magic Modules metadata.
- The GA lane wraps with `--mm-groups` (`mmGroups: true` in `tool/providers.yaml`): MM `exactly_one_of` → required sealed arguments and MM `conflicts` / `at_least_one_of` → nullable sealed arguments, for every resource override (`deriveExactlyOne: true`, which `wrap-init` fills and `yaml_loader_test.dart` enforces), refreshed with the MM YAML the weekly bump re-syncs; enum typing stays the merged IR's. Do not hand-write a sealed slot for an MM group — a hand-written virtual slot (a named, reshaped API) stays, and a member held by a hand helper slot (`Helper? x`) becomes a variant of the derived one. Every lane names a sealed argument like a protobuf `oneof`: a concept name (`code`, `scope`, `content`, `name`) whose variants are factory constructors named after the members, so a caller writes `code: .filename('f.zip')`. The name comes from the override's `sealedNames` axis (a human API decision: `"filename, image_uri, s3_bucket": code`), else is derived (the members' shared prefix or suffix, or the enclosing block when the group is all of it), else falls back to the members joined with `Or` and is recorded in [`tool/sealed_name_debt.yaml`](tool/sealed_name_debt.yaml) as `awaiting-name:` — so a schema bump that brings a new unnamed group still merges, and `wrap --check` fails on a missing or stale entry. Name a ledgered group by adding a `sealedNames` entry and re-running `wrap`, which drops the entry; `wrap` fails (E406) on an entry that clashes, repeats the derived name, or matches no group.
- Derived helper, enum and nested sealed types are named `<ResourceStem><Leaf>` (`packages/terradart_codegen/lib/src/codegen/nested_types/nested_type_names.dart`): the nearest parent joins only to tell two differently shaped blocks apart, and blocks (enum inputs) of the same name and shape share one type. `tool/type_name_length_test.dart` fails on a generated type name over 80 characters that is more than one Terraform segment past the type it is named after (a helper or enum past its resource stem, a sealed type past the stem or its holding helper, a variant past its sealed type or that type's owner), unless [`tool/type_name_length_debt.yaml`](tool/type_name_length_debt.yaml) gives a reason; a stale entry fails too. No generated or `prelude` type name repeats the words its resource stem ends with (`ComputeSnapshotType`, not `ComputeSnapshotSnapshotType`): the join drops them unless the shorter name is reserved for another input of the resource or of the lane type the dropped words leave. `tool/type_name_stutter_test.dart` fails on a doubled name whose shorter form the package does not declare, unless [`tool/type_name_stutter_debt.yaml`](tool/type_name_stutter_debt.yaml) gives a reason — name a `prelude` type without the repeat.
- Which string inputs name another resource is one checked-in ledger, [`tool/reference_targets.yaml`](tool/reference_targets.yaml): per referenced type, a name pattern over input paths, the attribute a matched input emits, and reviewed `attributes` / `exclude` exceptions. It is patterns on purpose, so a type a later pin adds is matched with no edit. On google and google-beta a `- mm: resource-refs` entry also types every Magic Modules `ResourceRef` input as the same-product resource it imports (explicit rules win; its own `attributes` / `exclude` cover the rest), so the weekly MM re-sync types new references too. A `- parents: iam-adjuncts` entry types the parent of every `*_iam_member` / `*_iam_binding` / `*_iam_policy` adjunct: one `RefTo<Parent>` argument named after the parent (`service: api.ref`) replaces the identity input, and the positional keys the parent also exports (`location`, `project`, `region`, `zone`) stay optional overrides that default to the parent's attribute (`RefTo.alsoAs`); a rule's `with: [location, project]` absorbs keys the same way on an ordinary reference. A `- principals: IamPrincipal` entry types every IAM grant input its `slots` / `types` patterns match (`member`, `members`, `exempted_members`, ...) as the hand-written `IamPrincipal` of `terradart_google` (`member: runtime.principal`, `member: .user('a@example.com')`), and every block with a computed-only `member` attribute gets an `IamPrincipal get principal`. On appwrite the same entry names `AppwritePermission` of `terradart_appwrite` (`permissions: .literal([.read(.any), .write(.team(editors.ref))])`); the hand-written types an entry may name are `principalTypes` in `packages/terradart_codegen/lib/src/codegen/references/reference_targets.dart`. Lanes with `references:` in `tool/providers.yaml` validate it on every wrap (E406: a stale exception, a missing attribute, an input two rules claim), so a bump that makes an entry stale fails `wrap --check` — fix the ledger, never the generated file. An input the pattern matches but that names something else (a CIDR range, an S3 bucket on a GCP resource) goes in `exclude` with a comment.
- When an override opts into a derivation gate, delete the hand-written axis it replaces. The `classDocComment` axis is fully retired — the loader rejects it with a migration hint (set `deriveClassDoc: true`, move artisanal prose to `curatedDoc`). `curatedDoc` is only valid under `deriveClassDoc: true`; `terradart lint-override` (run by `tool/agent_verify.sh`) fails CI on that dead config.
- Generated wrappers under `packages/terradart_google/lib/src/` — and the per-service barrels + `terradart_google.dart` umbrella under `packages/terradart_google/lib/` — must be regenerated by `terradart wrap`; do not hand-edit generated files. A generated file no override emits any more (a deleted override's wrapper or barrel) is an orphan: a full `wrap` deletes it and `wrap --check` fails on it, so removing a factory is an override deletion plus a regenerate. Barrel structure derives from the catalog; the authored axes (barrel `doc`, file-name override, hand-written `extraExports`) live in `packages/terradart_codegen/lib/src/codegen/barrels/barrels.yaml`, and `wrap` fails closed when a new catalog barrel has no manifest entry.
- Curated IAM adjuncts include `*_iam_member`, `*_iam_binding`, and `*_iam_policy`. Binding/policy are authoritative (they overwrite grants made outside Terraform) — the same footgun as upstream Terraform. Every curated binding/policy override must set `curatedDoc` that states the authoritative / replace semantics (enforced by `yaml_loader_test.dart`). Prefer `*_iam_member` in examples when an additive grant is enough; still ship binding/policy factories so callers who need authoritative updates are not blocked.
- `terradart_core` is provider-neutral: it must not host wrappers or providers for any specific Terraform provider. A utility provider that stacks on more than one provider package can use gets its own small hand-written package, never a provider package: `hashicorp/time` → `TimeProvider` / `TimeSleep` lives in `terradart_time`, which `terradart_google` depends on for `enableApis`. Its migration manifest is hand-written (`terradart_migrate/lib/src/manifest/time.dart`); promote it to a `tool/providers.yaml` lane only when the wrapped surface outgrows one resource.

## Wave shipping policy

A **Wave** is a user-visible release batch of related curated factories — now originating from new resources the weekly schema bump appends to [`tool/curation_backlog.yaml`](tool/curation_backlog.yaml). A Wave PR is complete only when every new or breaking factory has a **runnable example** or a reasoned [`tool/example_debt.yaml`](tool/example_debt.yaml) entry (a reviewed decision, not a default — stale entries fail CI, and apply-time reasons are not acceptable: see **Example verification**). The one unreviewed reason is `awaiting-example:`, which only the schema bump writes for the factories it generated; a Wave that polishes such a factory replaces that line with an example or a reasoned entry. Example coverage, the API-enablement dependency graph, and the IAM `iam-adjunct-debt:` path (binding/policy factories whose sibling `*IamMember` is already in some quickstart synth may take a ledger entry instead of an example) are machine-checked by `dart tool/example_synth_gates.dart`. Breaking API changes include **`MIGRATING.md`** and updated examples in the same PR; catalog counts, README Examples, and the CI `terraform_validate` matrix move in lockstep. `curatedDoc` alone is never sufficient. Full checklist: [`terradart-ship-wave`](.agents/skills/terradart-ship-wave/SKILL.md).

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
- `schema-bump.yml` is the only scheduled producer of PRs (`chore/schema-bump-*`), and the only one that enables auto-merge. Every other change, Waves included, comes from an ad-hoc session on a descriptive branch; the platform opens the PR and it is never auto-merged.
- Emergency publish fixes still get a PR (can merge immediately after CI green); do not bypass review habit.
- Release tags and GitHub release bodies follow [`terradart-ship-wave`](.agents/skills/terradart-ship-wave/SKILL.md).
- **Release preparation pays down the ledgers the schema bump fills.** No scheduled agent pays them down. `dart tool/release_ledger_check.dart`, which `tool/bump_version.sh` runs first, fails while [`tool/sealed_name_debt.yaml`](tool/sealed_name_debt.yaml) has an entry, because a temporary `Or` name must not ship. It also reports the `awaiting-example:` lines and [`tool/curation_backlog.yaml`](tool/curation_backlog.yaml) entries, marking the ones new since the last tag. The release author pays those down or accepts them explicitly by putting the report in the release PR body ([`RELEASE.md`](RELEASE.md)). Normal PR CI never fails on a non-empty ledger.

## Override lint coverage (`exactly_one_of`)

`terradart lint-override` enforces MM YAML `exactly_one_of` groups via:

- `exactly-one-optional-fanout` — multiple optional member `customSlots` without a sealed virtual slot.
- `exactly-one-paramorder-fanout` — two or more group members listed in `paramOrder` without a sealed virtual slot (the path used when an override skips `customSlots`).

`lint-override` clean does **not** guarantee every optional nested block is type-enforced: resources without MM `exactly_one_of` metadata (e.g. large schema-only surfaces) may still fan out at the Dart API until sealed. Prefer sealed virtual slots + `wrap-promote` when curating new `exactly_one_of` groups. Pre-existing optional-fanout overrides may be listed in [`tool/exactly_one_lint_debt.yaml`](tool/exactly_one_lint_debt.yaml) with a reason until sealed (#107). Both lint ledgers (this one and `tool/migrate_manifest_debt.yaml`) are shared by every `tool/providers.yaml` lane: each lane's `lint-override` validates only the entries naming its own overrides, and `tool/wrap_lanes.dart` fails on an entry that names an override in no lane.

### Migration manifest (`migrate-shape-*`)

`terradart wrap --migrate-manifest <file>` also emits the registry's migration manifest — one `MigrateEntry` per curated factory describing how every constructor slot, helper-class field, enum and output getter maps back to Terraform (the recipe `terradart migrate` follows, #80/#659). The five manifests live in `packages/terradart_migrate/lib/src/manifest/<registry>.g.dart` (coordinates in `tool/providers.yaml`) and every `wrap --check` lane verifies its manifest alongside the wrappers (#658). The manifest is derived from the same IR + override + emitted-source inputs as the wrappers; nothing is hand-listed. Shapes it cannot derive are recorded as `manual`, and `lint-override` makes that visible from the YAML alone:

- `migrate-shape-underivable` — a `prelude` helper whose `encode()` is not a field-per-key map literal, a helper field or custom slot with a type the manifest cannot express, or a custom slot whose argMap entry has no static key. Reshape it, declare `customSlots.<slot>.migrate: {kind: manual, reason: ...}` when the slot is manual by design, or add a reasoned entry to [`tool/migrate_manifest_debt.yaml`](tool/migrate_manifest_debt.yaml) (stale entries fail the lint).
- `migrate-hint-stale` — a `migrate:` hint on a slot the manifest derives fine; remove the hint.

The runtime types (`MigrateManifest`, `MigrateSlot`, ...) are hand-written in `packages/terradart_migrate/lib/src/migrate_manifest.dart`; the generated values are regenerated by the wrap lanes, never edited. A Wave or schema-bump PR therefore carries the regenerated manifest next to its wrappers. A manual shape (`tool/migrate_manifest_debt.yaml`), or a resource the round-trip gate lets the migrator keep in Terraform (`tool/migrate_roundtrip_debt.yaml`), is a maintainer decision; a bump that needs one fails CI (`lint-override`, the round-trip gate), so it never auto-merges.

### Round-trip gate (`tool/migrate_roundtrip_gates.dart`)

The migrator's correctness oracle: every quickstart's `tf-out/main.tf.json` is migrated back to Dart with `migrateModule`, every generated Stack goes into one temporary package that is analyzed once, and each Stack is re-synthesized and deep-compared with the original — `synth(migrate(synth(S))) == synth(S)`. It runs in `agent_verify.sh` full mode (after the synth gates, reusing `tf-out`) and as the CI `migrate round-trip gate` job. Strict examples must round-trip completely; a resource the migrator keeps in Terraform needs a reasoned entry in [`tool/migrate_roundtrip_debt.yaml`](tool/migrate_roundtrip_debt.yaml) (slug → address → reason), and an entry whose resource round-trips again is stale and fails the gate. A new blocker usually means a manifest shape the extractor got wrong — fix the generator or ledger it, never the generated file.

### Example verification (no live GCP apply)

Live `terraform apply` / `destroy` against `terradart-validate` is **retired**, and so are the cost and skip ledgers that partitioned examples for it. CI and agents must not apply or destroy examples on a real GCP project. Example quality is synth + `terraform validate` (`dart tool/example_synth_gates.dart` and the CI `terraform_validate` matrix).

**A reason that only matters at apply time is not a reason to skip an example.** Hourly or existence billing, entitlements, an organization or second project, resources that cannot be deleted, real secrets or certificates — none of these affect synth or `terraform validate`, so such factories get example coverage like any other. What changes is *where* they go:

- A **gated example** carries a `## Before you apply` section in its README that says what a human needs (or pays) to apply it. Put apply-gated factories only in gated examples: extend the product's existing gated example (`GoogleApigeeInstance` → `apigee_quickstart`), or add a new example with that section. A dummy-value coverage stack follows the `<name>_leftover_quickstart` naming and says **Never apply**.
- An example without that section is one a reader can apply on a plain standalone project. Never add an apply-gated factory to it, and do not add the section to an existing example just to make room for a factory — add a new example instead.

`tool/example_debt.yaml` entries whose reason cites `never_apply`, a `gcp-cost` SKU, apply-smoke, or `terradart-validate` predate this rule and are payable ([`terradart-backfill-examples`](.agents/skills/terradart-backfill-examples/SKILL.md)).

### Schema bump (weekly)

[`schema-bump.yml`](.github/workflows/schema-bump.yml) runs one job per `tool/providers.yaml` lane with a `bump:` entry ([`tool/bump_plan.dart`](tool/bump_plan.dart)): google Sundays (the GA schema, MM YAML read at the magic-modules commit the release was generated from — `tool/mm_yaml_sources.yaml` `upstream_ref`, recorded in the fixture's `mm_upstream_ref.txt` — and the google-beta ride-along), aws Mondays, cloudflare Tuesdays, all 22:00 UTC — staggered so one lane's PR can merge before the next opens. appwrite has no `bump:` entry and stays pinned by hand. Each job detects the latest release in the lane's tracked major (`tool/fetch_schema.dart --lane`; other majors and prereleases are ignored, so cloudflare 4.x releases never count), refreshes the fixture, regenerates, and opens a `chore/schema-bump-<lane>-*` PR whose body is the drift report ([`tool/generate_drift_report.dart`](tool/generate_drift_report.dart)). It enables auto-merge (squash) only when `autoMergeBlockers` is empty and the lane's `bump.mode` is `auto` (google, aws; cloudflare is `pr-only` and always waits): clean `wrap --check` on the lane (and the ride-along), green lane QA gates ([`tool/bump_lane_gates.dart`](tool/bump_lane_gates.dart)), no MM sync failure, no failed new-type scaffold, no removed resource, no new provider major, and no breaking change to the generated Dart API ([`tool/bump_api_surface.dart`](tool/bump_api_surface.dart) diffs the migration manifests before and after the regenerate). The required `ci gate` check still decides the merge, so a bump that needs a repair (a golden, a count, an example) stays open with a red check. A new upstream type — resource or data source — does **not** block auto-merge, on any lane: the bump scaffolds a default override for it ([`tool/bump_new_factories.dart`](tool/bump_new_factories.dart) — on google, `wrap-init` for a resource, with a `tool/mm_yaml_sources.yaml` row and the MM fixture when a guessed mmv1 path resolves, and for a data source the leftover-thin `data_<type>.yaml` of `tool/batch_data_source_overrides.dart` plus its `data_<type>` row; `scaffold_lane_overrides.dart` on aws / cloudflare), wraps it into a factory (a type in a service with no barrel yet also gets a placeholder barrel entry in the lane's barrels manifest), appends it to [`tool/curation_backlog.yaml`](tool/curation_backlog.yaml) with a note asking for API polish, and — unless the lane's leftover example generator covers its kind (`bump.exampleCovers`: aws / cloudflare cover every new factory, google's `generate_data_source_leftover_example.dart` new data sources only) — records it in [`tool/example_debt.yaml`](tool/example_debt.yaml) as `ClassName: awaiting-example: ...` (the synth gate accepts that line only while the backlog entry exists). Every lane with a `bump:` entry diffs data sources (`bump.dataSources`), and each lane's catalog test fails on a fixture data source without a factory. The google-beta ride-along re-extracts only its curated set, so a new beta-only type of either kind still lands on request. A removed type and a breaking diff still block. Everything else — a breaking diff needing `MIGRATING.md`, a new `exactly_one_of` sealed design, a real doc for a placeholder barrel, polishing the generated factories — is maintainer work, on the same branch or as a later Wave.

### Wave shipping (on demand)

No scheduled agent ships Waves. The weekly schema bump ships every new type as a default-override factory and appends it to [`tool/curation_backlog.yaml`](tool/curation_backlog.yaml); that file is the queue of factories awaiting API polish and an example. To ship, the maintainer works it by hand or asks a cloud agent to follow [`terradart-ship-wave`](.agents/skills/terradart-ship-wave/SKILL.md) for named backlog entries. The Wave lands as an ordinary PR — CI green and Bugbot review clean — and the maintainer merges it. An entry that needs a design decision first (a sealed `exactly_one_of` slot, a breaking change) keeps a `note:` saying so and stays in the backlog until that decision is made.

## Documentation Policy

- `AGENTS.md` is the committed operational guide for agents.
- `docs/` is Gitignored local working memory: historical design notes, ADR drafts, raw transcripts, and private planning.
- Root `CONTEXT.md` is a glossary only. Do not put implementation plans, chat transcripts, or ADR content there.
- Public website docs live under `website/src/content/docs/docs/`.
- The argument-writing rules (which form a factory argument takes: literal, `ref`, enum member, variant, helper, variable, secret, expression) have one source, the marked block of `website/src/content/docs/docs/arguments.md`. The README, getting-started, `skills/terradart/SKILL.md`, the `TfArg` / `RefTo` dartdoc and every lane's `umbrellaDoc` carry copies between the same markers. Edit the source, run `dart tool/sync_argument_rules.dart --fix` and the wrap lanes; `tool/argument_rules_test.dart` fails on a stale copy.
- Every ```` ```dart ```` fence in `README.md`, `skills/terradart/SKILL.md`, the package and cookbook READMEs, the website docs and the `///` doc comments of the published packages compiles against the workspace packages: `tool/doc_snippets_test.dart` (run by `dart test tool/`) puts each document's fences in a sandbox package `my_app`. Start a fence with a path comment (`// lib/orders_stack.dart`) to place it there — the site shows it as the file name — so fences can import each other (`package:my_app/...`, `generated/<stack>.app.dart`); a `bin/*.dart` fence with `main` runs first, so its synth writes the generated file. A fence without imports gets every provider barrel, and one that starts with a statement is a `Stack` constructor body. A doc-comment fence may read a lowerCamel value it does not build (`primary.name`), and needs a language (```` ```text ```` for a diagram); fix a generated one in its override YAML and re-run `wrap`. A README or website fence that needs a package outside the workspace (a cookbook recipe's Genkit server, a Flutter app's `lib/main.dart`) is the one exception, behind `<!-- doc-snippets: skip: <reason> -->`. Never show code that does not compile; spell a before / after as a table.

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
| [`terradart-promo-video`](.agents/skills/terradart-promo-video/SKILL.md) | Recording a release demo clip and drafting its X / LinkedIn copy; `tool/promo_video.sh` |

Optional generic Dart skills from [dart-lang/skills](https://github.com/dart-lang/skills) (`npx skills add dart-lang/skills --skill '*' --agent universal --yes`) are not committed here. [flutter/skills](https://github.com/flutter/skills) targets Flutter apps and is not applicable to TerraDart.

## Agent verification

Before claiming work is done, run from the repository root:

```bash
tool/agent_verify.sh
```

This is the shared agent gate (docs consistency, analyze incl. `tool/`, the CI format check, every package's tests, every `tool/*_test.dart`, `terradart wrap --check`, `lint-override`, the google-lane gates, example synth gates, the freshness check of the website coverage pages (one per provider package)). The example synth gates synth every quickstart and enforce catalog coverage plus the API-enablement dependency graph: an example that enables any API must enable **every** API its resources need (`tool/example_api_debt.yaml` is the audited escape hatch). The gate does **not** run the full `terraform_validate` example matrix; GitHub Actions still enforces that on merge. The override gates also run per PR in CI — `lint-override` for every lane (`override_lint` job) and the two google-lane gates, `check_google_enum_gaps` and `check_google_mm_fingerprint` (`google_lane_gates` job; the other lanes derive enums from MM YAML or provider hints and keep no MM upstream manifest) — they used to live only in this script, which let them rot silently when nobody ran it.

**Ad-hoc verification pitfall:** when you compose your own check instead of `agent_verify.sh`, never rely on `&&` after piping a test/build command into `tail` / `grep` / `head` — the pipeline's exit status is the LAST command's, so the pipe swallows a failure and the chain keeps going (this hid a red `dart test` behind a green-looking `| tail -1` once). Run the command bare and check its exit code directly, or use `agent_verify.sh`, which sets `pipefail`.

Optional flags:

```bash
tool/agent_verify.sh --quick        # iteration loop: static + unit gates only
                                    # (skips example synth, package suites,
                                    # cookbook) — run the FULL gate
                                    # before opening or updating a PR
tool/agent_verify.sh --maintainer   # add wrap-init / wrap-promote e2e tests
```

### Agent guardrails (Cursor)

Cursor sessions (including Cursor Cloud Agent) get hooks from `.cursor/hooks.json`:

- `afterFileEdit` — `dart format` on the paths the CI format step (`tool/format_check.sh`) checks, plus `tool/` and `examples/`. In the provider packages that means only hand-written files: a file whose first line is wrap's `// GENERATED FILE - DO NOT EDIT` header keeps `terradart wrap`'s format, which `wrap --check` guards byte-for-byte. The scope derives from that header (`tool/hook_lib.sh`), never a hand-kept file list.
- `preToolUse` (`Write|Edit`) — blocks direct edits to generated wrappers, the migration manifests, wrap goldens, and `.github/workflows/`.

Regenerate via `terradart wrap`; refresh goldens through the maintainer flow, not in-place edits.

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
dart tool/wrap_lanes.dart --lane aws --gate wrap  # wrap --check for one tool/providers.yaml lane
```

## Cloud Agent Runbooks

Cloud agents such as Devin and Cursor Cloud Agent should prefer checked-in scripts, provided inputs, and CI gates over local notes, hidden prompts, ad hoc downloads, or machine-local Terraform/GCP state.

### Add Or Update A Curated Google Resource

Inputs: a checked-in or task-provided `schema.json` (plus Magic Modules YAML when semantic hints are needed). Do not assume `terraform` is installed or fetch schemas ad hoc; if the schema is missing or stale, stop and report it. Follow [`terradart-add-curated-resource`](.agents/skills/terradart-add-curated-resource/SKILL.md) for the step-by-step workflow and override checklist; binding rules live in **Generation Policy** and **Project Pitfalls**.

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

When a resource can't be applied on a plain standalone project — org-only (Shared VPC host/service), physical-circuit-dependent (Interconnect), entitlement- or cost-gated — keep it covered: move it to a gated example (see **Example verification**) instead of dropping it. Record a factory in [`tool/example_debt.yaml`](tool/example_debt.yaml) only when synth or `terraform validate` itself cannot be satisfied with placeholder values; removal drops the factory from synth coverage, which the synth gate fails otherwise, so update the ledger and the example's doc comment together.

## Project Pitfalls

- When adding curated resources, verify Terraform resource names against the provider schema key. Do not infer names from Magic Modules product/file names.
- The wrap fixture is the GA `hashicorp/google` provider schema. Beta-only resources are absent unless a separate fixture strategy is added.
- Example stacks do not declare Terraform variables. Use Dart interpolation for constructor values such as `projectId`, not Terraform literals like `${var.project_id}`.
- When adding resources in batches, update hard-coded curated-count assertions in the same PR or batch.
- When bumping versions, check inter-package caret constraints with per-package CI in mind; workspace resolution can hide stale constraints locally.
- Release tags and GitHub releases are created manually by the maintainer. Use the **GitHub release notes** checklist in [`terradart-ship-wave`](.agents/skills/terradart-ship-wave/SKILL.md) (match [`v0.19.0`](https://github.com/nozomi-koborinai/terradart/releases/tag/v0.19.0) / [`v0.20.0`](https://github.com/nozomi-koborinai/terradart/releases/tag/v0.20.0) format — not a CHANGELOG paste).

## Cursor Cloud specific instructions

Cloud Agent VMs provision their toolchain from [`.cursor/environment.json`](.cursor/environment.json), whose `install` step runs the idempotent [`.cursor/install.sh`](.cursor/install.sh): it installs **Dart SDK stable** (≥ 3.10; every package requires ^3.10) from the official apt repo and **Terraform** (≥ 1.11) from HashiCorp apt, runs `dart pub get`, then pre-downloads the managed OpenTofu that `terradart engine --engine tofu` resolves (the engine example validation runs; Terraform stays for the migrator gates, the cookbook and `appwrite/appwrite`, which the OpenTofu registry lacks). Cursor caches the result as a snapshot, so later agent boots are fast. Edit `install.sh` when the toolchain changes — do not rely on a hand-built snapshot. After changing `install.sh`, rebuild / refresh the Cloud Agent environment snapshot.

There is no long-running dev server for core work. Primary flows:

| Goal | Command (repo root) |
|------|---------------------|
| Agent gate (lint, tests, wrap check, example synth) | `tool/agent_verify.sh` |
| Suspected mislabeled `upstream: null` (google lane) | `dart tool/check_google_mm_fingerprint.dart` |
| Example coverage + API-enablement ratchet | `dart tool/example_synth_gates.dart` |
| Migrator round-trip (synth → migrate → synth) | `dart tool/migrate_roundtrip_gates.dart --reuse-tf-out` |
| Migrator fixture gate (migrate the coverage fixtures, synth, terraform validate) | `dart tool/migrate_fixture_gates.dart` |
| Migrator moved gate (unroll count / for_each, synth, plan against the indexed state: moves only) | `dart tool/migrate_moved_gates.dart` |
| Publish readiness (per package) | `cd packages/<pkg> && dart pub publish --dry-run` |
| Synth example stack | `cd examples/pubsub_quickstart && GCP_PROJECT_ID=ci-test-project-id dart run bin/infra.dart` |
| Validate synth output (managed OpenTofu) | `tofu="$(dart run terradart_cli:terradart engine --engine tofu)" && cd examples/pubsub_quickstart/tf-out && "$tofu" init -backend=false && "$tofu" validate` |
| Release demo clip (cut a `RecordScreen` take) | `tool/promo_video.sh --in RAW.mp4 --out EDIT.mp4 --deliver DELIVERY.mp4` |
| Docs site (optional) | `cd website && bun install && bun run dev` (needs Bun + Node ≥ 22) |

`dart tool/example_synth_gates.dart` (inside `tool/agent_verify.sh`) synths every quickstart and runs `init -backend=false` + `validate` on each `tf-out/` with OpenTofu — the engine `terradart` gives users: `tofu` on `PATH`, else the release `terradart_cli` pins, resolved by `terradart engine --engine tofu`, picked by `tool/validate_engine.dart`. A Stack that needs a provider the OpenTofu registry lacks (`kNotOnOpenTofuRegistry`: `appwrite/appwrite`) validates with `terraform` instead, as does everything when OpenTofu cannot be resolved (offline); `dart tool/check_docs_consistency.dart` is the text-only docs check. Neither replaces the parallel `terraform_validate` CI matrix on merge, which validates with the same managed OpenTofu. Examples use `GCP_PROJECT_ID` (`tool/example_synth_env.dart` sets the placeholder `ci-test-project-id`) — no live GCP credentials are required for synth or `terraform validate`.

## Working Rules

- Prefer small, reviewable changes. Keep unrelated cleanup out of feature work.
- Do not rely on Gitignored `docs/` as authoritative context for cloud-agent work.
- If a cloud agent needs durable guidance, prefer checked-in tooling/CI; otherwise add concise guidance to `AGENTS.md` or vocabulary to `CONTEXT.md`.
- When human review finds an agent deviation, close it with a machine gate (lint rule, `tool/` check, or an explicit allowlist) rather than prose-only guidance — prose rules drift; gates converge.
- Keep long-form design notes in `docs/` unless they are intentionally being promoted into public docs or committed agent guidance.
- After substantive edits, run `tool/agent_verify.sh` when feasible and report what did or did not run.
