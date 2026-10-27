# Contributing to terradart

Thanks for taking time to look at this. terradart is an **alpha** single-maintainer project (0.35.x today; breaking changes land only on minor bumps — beta needs external validation, see the [path to beta](https://terradart.dev/docs/status/#path-to-beta)). Contributions are welcome on a best-effort basis.

## What kind of contribution?

terradart ships two consumer surfaces:

- **Curated factories** — the `google_*` factory wrappers in [`terradart_google`](packages/terradart_google/README.md) (**1380 curated resource factories + 472 data sources** as of 0.35.x) and the beta-only catalog in [`terradart_google_beta`](packages/terradart_google_beta/README.md) (**112 resource factories**), plus the filled catalogs of [`terradart_appwrite`](packages/terradart_appwrite/README.md), [`terradart_cloudflare`](packages/terradart_cloudflare/README.md), and [`terradart_aws`](packages/terradart_aws/README.md). Bug fixes, tests, and doc improvements welcome. The GA catalog is filled; new beta-only types that appear after the current provider pin still land via `terradart-codegen wrap` overrides — open an issue first to discuss scope.
- **The `terradart` command and the migrator** — [`terradart_cli`](packages/terradart_cli/README.md) (`terradart synth`, `validate`, `plan`, `apply`, `destroy`, `outputs`, `migrate`), [`terradart_migrate`](packages/terradart_migrate/README.md) and [`terradart_hcl`](packages/terradart_hcl/README.md). Bug fixes, tests, and migration fixtures from real Terraform trees welcome.

Within a **minor** line (`^0.35.0`), no breaking public API changes. Across **minors**, breaking changes are allowed with `MIGRATING.md` coverage (the alpha change policy — see [status](https://terradart.dev/docs/status/)).

Bug reports / questions / feature requests: pick a template when [opening an issue](https://github.com/nozomi-koborinai/terradart/issues/new/choose).

## Dev setup

Requirements:

- Dart SDK ≥ 3.10 (every package declares `sdk: ^3.10.0`).
- `terraform` CLI ≥ 1.11.0 (for end-to-end tests; write-only args require 1.11+).
- `git` ≥ 2.30.

```bash
# Clone and bootstrap (Pub Workspaces resolves every package)
git clone https://github.com/nozomi-koborinai/terradart.git
cd terradart
dart pub get

# Run the full test suite
dart test

# Run static analysis (must pass with zero issues)
dart analyze --fatal-infos --fatal-warnings

# Agent gate (subset of CI; no terraform matrix)
tool/agent_verify.sh

# Docs only
dart tool/check_docs_consistency.dart

# Format check — scoped to the hand-written files, same as CI
tool/format_check.sh
```

**Do not run `dart format` over the whole repo.** Generated provider
wrappers are formatted by `terradart-codegen wrap`'s pinned `dart_style`,
which can drift from the SDK-bundled CLI, so `dart format .` rewrites many of
them into a shape `terradart-codegen wrap --check` then rejects. Regenerate
wrappers with `terradart-codegen wrap`; that is the authoritative format for
generated code. `tool/format_check.sh --fix` formats exactly the hand-written
files CI checks.

`examples/` is outside the format check too, so nothing verifies it either
way — leave it to `dart analyze`, which does cover it.

**Agent skills (optional):** TerraDart maintainer workflows are committed under [`.agents/skills/`](.agents/skills/). Compatible agents discover them automatically. For generic Dart analyze/test workflows you may also install [dart-lang/skills](https://github.com/dart-lang/skills) with Node.js: `npx skills add dart-lang/skills --skill '*' --agent universal --yes`.

## PR checklist

Before opening a PR:

- [ ] `tool/agent_verify.sh` passes (or explain what you could not run).
- [ ] `dart tool/check_docs_consistency.dart` passes when you touch versions or catalog counts.
- [ ] `dart tool/migrate_roundtrip_gates.dart --reuse-tf-out`, `dart tool/migrate_fixture_gates.dart` and `dart tool/migrate_moved_gates.dart` pass when you touch `terradart_hcl` or `terradart_migrate` (all three run in `tool/agent_verify.sh` full mode; `UPDATE_GOLDENS=1 dart test test/golden_test.dart` in `packages/terradart_migrate` regenerates the fixture goldens when the output changes on purpose).
- [ ] `tool/format_check.sh` passes (`--fix` formats the scoped files) — not `dart format .`.

**Wave / new curated factories** (see [`.agents/skills/terradart-ship-wave/`](.agents/skills/terradart-ship-wave/SKILL.md)):

- [ ] New or breaking factories have a runnable example (`examples/*_quickstart` or extended existing example).
- [ ] Breaking API changes include `MIGRATING.md` and updated examples in the same PR.
- [ ] README **Examples** list matches `examples/` (the CI `terraform_validate` matrix derives from `examples/` automatically via `tool/select_changed_examples.dart`; nothing to wire).

## Adding a provider lane

A lane starts as one entry in [`tool/providers.yaml`](tool/providers.yaml). `dart test tool/lane_surface_test.dart` registers a fake lane and checks the steps that follow that entry alone. `dart test tool/lane_agreement_test.dart` fails when a real lane is missing from a list that is still edited by hand.

These follow the entry, with no second list.

- `terradart wrap` and `lint-override`, through `tool/wrap_lanes.dart`.
- The weekly schema bump's lane plan. The workflow file still needs one `cron` line per `bump.cron`, and the `workflow_dispatch` choice has to name the bump lanes. `tool/bump_plan_test.dart` and the agreement test keep those two in step.
- Example-synth catalog paths.
- The exact-pin doc check, once the provider class aliases the generated pin (`const String kSomeProviderVersionConstraint = terradartProviderVersion`). `kProviderVersionConstraint` and `kBetaProviderVersionConstraint` stay hand-written `~> 8.0`, so google and google-beta are not in that check.
- Coverage pages, from `siteTitle` plus the generated catalog. Regenerate with `dart tool/render_coverage_page.dart` after a synth.
- The CI `test` and `pub publish --dry-run` matrices. They list every workspace member under `packages/` in the root `pubspec.yaml`.
- The format hook's provider packages and generated-file globs, from `outputPackage` and `typePrefix`.
- Doc-snippet sandbox packages, from that same workspace list, except `terradart_codegen` and `terradart_cli`. A fence with no imports also receives each lane's umbrella library.
- Argument-rule copies in each lane's barrels manifest (`tool/sync_argument_rules.dart`). The fixed copies (README, getting started, the skill, `TfArg`, `RefTo`) stay listed there.
- Migrator-gate path overrides (`tool/migrate_fixture_gates.dart`, `tool/migrate_moved_gates.dart`, `tool/migrate_roundtrip_gates.dart`). The set is `terradart_core`, every lane package, and `terradart_time`.

A resource class whose name is the PascalCase Terraform type may be longer than 80 characters. A helper more than one Terraform segment past the type it is named after may not. The gate is `tool/type_name_length_test.dart`, and it already reads every lane.

These stay hand-edited. The agreement test fails if the lane is missing from the ones it can see.

- The package itself, its provider class, and a `ProviderRules` class registered in `provider_registry.dart`. `shortResourcePascal` strips `terraformTypePrefix`. Set `typePrefix` to that same string. The agreement test fails when the two differ.
- The package's hand-written `catalog_entry.dart`. The generated catalog imports it. Cloudflare's ship commit omitted it and the next commit added it (`86493be80`).
- The import list in `packages/terradart_migrate/lib/src/manifests.dart` (google before google-beta, because both use `google_`), the dependency in that package's `pubspec.yaml`, the provider recipe in `stack_emitter.dart`, and the catalog imports in `emit/context.dart`. `packages/terradart_migrate/test/manifest_test.dart` locks the lookup order. Dropped credential arguments belong in `provider_secrets.dart` when the provider class leaves them out.
- A publish phase in `.github/workflows/publish.yml`, and the version loop plus the per-package caret lines in `tool/bump_version.sh`. Publish order follows pub.dev dependencies, so it is not a flat copy of the yaml. Appwrite's release wiring is `0f03f16b6` (#611). Cloudflare's is `1209bf90e` (#621). Those landed after the ship commits.
- A block in `.github/labeler.yml` for the package, the override directory, and the schema fixture.
- The `cron` and the `workflow_dispatch` choice in `.github/workflows/schema-bump.yml`, when the lane has `bump:`.
- A coverage-stack generator when `bump.exampleGenerator` is set. `tool/coverage_stack_test.dart` already requires that path to be a key of `kCoverageStacks`.
- A provider guide under `website/src/content/docs/docs/providers/`, the sidebar in `website/astro.config.mjs`, and `website/src/components/landing/providers.ts` when the lane has a guide. The coverage sidebar entry is required for every lane.
- The package name in `README.md`, this file's catalog paragraph, `AGENTS.md`, and `skills/terradart/SKILL.md`.
- `kNotOnOpenTofuRegistry` in `tool/validate_engine.dart` and `kTerraformOnlyProviders` in `packages/terradart_cli/lib/src/engine.dart`, when the OpenTofu registry does not host the provider. Today both sets are `appwrite/appwrite`.
- `providerPins` in `tool/plugin_cache_key.dart`, plus the path dev dependency in the root `pubspec.yaml`. The constraints are Dart constants on the provider classes, so the list cannot come from `tool/providers.yaml`. `hashicorp/time` is an extra pin because it is not a wrap lane. `tool/plugin_cache_key_test.dart` fails when a yaml `source` has no pin. The cache-key job does not name lanes.
- `InitProvider` in `packages/terradart_cli/lib/src/init_templates.dart`, when `terradart init` should scaffold that provider. google-beta and time are not in that enum.

Debt files such as `tool/type_name_length_debt.yaml` and `tool/example_debt.yaml` are shared. A new lane does not edit them until a generated name or a missing example trips a gate.

Google-only checks stay Google-only. `tool/check_google_enum_gaps.dart` and `tool/check_google_mm_fingerprint.dart` exist because the GA lane hand-promotes enums and records Magic Modules paths. `tool/provider_hints_aws.dart` resolves aws-sdk-go-v2 enums. The hint extractor selects it by the shape of the provider tree, not by the lane name.

## Review cadence

terradart is a single-maintainer project (alpha). Issue triage and PR
review are best-effort — expect a few weeks of latency, not a defined SLA.
If a PR sits untouched for 30 days, ping with a comment.

## Code of conduct

We follow the [Contributor Covenant v2.1](https://www.contributor-covenant.org/version/2/1/code_of_conduct/). Issues: open a private security advisory (see [SECURITY.md](SECURITY.md)) for serious incidents; otherwise email kobofender@gmail.com.

## License

By contributing, you agree your contributions are licensed under Apache-2.0, the project's license.
