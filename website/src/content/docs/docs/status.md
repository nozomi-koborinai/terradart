---
title: Status & versioning
description: Alpha, beta, and 1.0, and how TerraDart versions releases.
---

TerraDart is **alpha** on the **0.35.x** line today. Alpha is where TerraDart gets into people's hands and their feedback shapes the API. The [change policy](#change-policy-from-alpha-onward) below stays in force through beta and up to 1.0.0.

There are no SemVer guarantees until **v1.0.0**. Breaking changes land only on **minor** bumps. Pin with `^0.35.0`, take patch releases freely, and read [MIGRATING.md](https://github.com/nozomi-koborinai/terradart/blob/main/MIGRATING.md) before every minor bump. Check [pub.dev](https://pub.dev/packages/terradart_core) for the latest patch.

## Release phases

| Phase | Version line | What we promise |
| --- | --- | --- |
| **Alpha** | 0.35.x (current) | Alpha is where TerraDart gets into people's hands and their feedback shapes the API. **No breaking changes within a minor** (`^0.N.x`). Breaking changes land only on minor bumps, each with a `MIGRATING.md` section. Not SemVer until 1.0.0. |
| **Beta** | TBD | The API shape is settled. The gates are checks the maintainer runs. See [Path to beta](#path-to-beta). The change policy stays in force. |
| **1.0.0** | TBD | After beta, two minor releases in a row ship with no breaking changes. Neither release needs a new `MIGRATING.md` section. Stable SemVer for `terradart_core`, every provider package (`terradart_google`, `terradart_google_beta`, `terradart_aws`, `terradart_cloudflare`, `terradart_appwrite`, `terradart_azure`, `terradart_time`), and `terradart_cli`. `terradart_codegen`, `terradart_migrate`, and `terradart_hcl` stay outside the promise. |

## What to expect today (alpha)

- Breaking changes to the public Dart API or the emitted Terraform JSON land only on **minor** bumps, each with a [MIGRATING.md](https://github.com/nozomi-koborinai/terradart/blob/main/MIGRATING.md) section; patch releases within `^0.N.x` are safe to take.
- Use hosted `^0.35.0` carets on [pub.dev](https://pub.dev/packages/terradart_core) — not legacy `0.x.y-dev` pre-release tags.
- Only the **curated** surfaces are supported for users. The GA `hashicorp/google` catalog is filled in `terradart_google`; beta-only types ship in `terradart_google_beta` (112 resource factories). `terradart_appwrite`, `terradart_cloudflare`, `terradart_aws` and `terradart_azure` are filled at their exact provider pins (every resource and data source).

## Change policy (from alpha onward)

- **Patch releases** (`0.N.x` → `0.N.y`): no intentional breaking changes to the public APIs of `terradart_core`, the provider packages or `terradart_cli`.
- **Minor releases** (`0.N.x` → `0.M.x`): breaking changes allowed only with a `MIGRATING.md` section for the previous minor.
- **Curated factory additions** continue (additive waves); renaming or removing curated factories still counts as breaking.

## What already runs

Every maintainer-side gate already runs on each pull request. That set includes docs consistency, every example synthesized and checked with `terraform validate`, and example coverage of every catalog entry (or a reasoned entry in the example ledger). Beta uses the checklist under [Path to beta](#path-to-beta).

## Path to beta

Beta means the API shape is settled. The gates are checks the maintainer runs. Alpha is where TerraDart gets into people's hands and their feedback shapes the API. Beta waits on the checklist below.

These are the beta gates. The boxes stay open until each one is met.

- [x] **Sealed groups have concept names.** Every exclusive group is one sealed argument, named for the concept (`deriveExactlyOne: true` on the override). `yaml_loader_test.dart` requires that flag on every Google resource override and every google-beta resource override. `tool/wrap_lanes_test.dart` requires it on every resource override of aws, cloudflare, appwrite, and azure. `terradart wrap --check` fails on a group it cannot seal, unless the override's `unsealedGroups` gives the reason, and on a derived helper no constructor reaches. A hand-written sealed argument counts when its variants cover the group. `dart tool/release_ledger_check.dart` fails while `tool/sealed_name_debt.yaml` has an entry, so an `Or` placeholder cannot ship in a release. `terradart lint-override` fails on any line in `tool/exactly_one_lint_debt.yaml`, so the file stays empty.
- [x] **References and outputs are typed.** A string input that names another resource is a `RefTo`, or `IamPrincipal` or `AppwritePermission` when `tool/reference_targets.yaml` says so. `terradart wrap` fails (E406) on a stale `exclude`, an attribute the target does not export, or an input two rules claim. It also fails (E406) on a matched input that stays a string, unless an `exclude` entry names it with a reason. Callers read computed attributes through getters (`deriveOutputGetters`). `yaml_loader_test.dart` requires that flag on every google-beta resource override. `tool/wrap_lanes_test.dart` requires it on every resource override of every lane, so `terradart_google`, `terradart_google_beta`, `terradart_aws`, `terradart_cloudflare`, `terradart_appwrite`, and `terradart_azure` are covered.
- [x] **A fixed set of values is an enum.** `dart tool/check_google_enum_gaps.dart --strict-nested` fails when a Google constructor input or nested helper field is still `TfArg<String>` although its Magic Modules `enum_values` or its schema description lists the values, unless `tool/enum_gap_debt.yaml` records a reason. That file is empty, and a stale line fails the check. Every google-beta resource override sets `deriveEnums: true` (`yaml_loader_test.dart`). On aws, cloudflare, appwrite, and azure, `tool/wrap_lanes_test.dart` requires `deriveEnums: true` on every resource and data-source override, and `tool/data_source_enum_test.dart` fails on a data-source input that is still `TfArg<String>` although its description or hint file lists the values. `terradart wrap` fails (E405) when one of those hint files has a `provider_version` that does not match the fixture.
- [x] **Type names stay short and unique.** `tool/type_name_length_test.dart` fails a generated name over 80 characters that is more than one Terraform segment past the type it is named after, unless `tool/type_name_length_debt.yaml` gives a reason. `tool/type_name_stutter_test.dart` fails a name that repeats words from its resource stem when the shorter name is free, unless `tool/type_name_stutter_debt.yaml` gives a reason. `tool/type_name_clash_test.dart` fails when two provider packages export one type name. Both debt files are empty, and a stale line in either fails its test. `wrap` fails when a `typeNames` entry names no derived enum or helper.
- [ ] **The migrator can express the public API.** `dart tool/migrate_fixture_gates.dart` migrates the checked-in trees, analyzes the generated package, synthesizes it, and runs `terraform validate`. `dart tool/migrate_roundtrip_gates.dart` checks that migrating a quickstart and synthesizing again matches the original JSON. A resource the command keeps in Terraform needs a reason in `tool/migrate_roundtrip_debt.yaml`. A shape the manifest cannot derive needs a `manual` reason in `tool/migrate_manifest_debt.yaml`, or a `migrate:` hint on the slot. `terradart lint-override` fails a stale line in that file, and it fails an underivable shape that has no reason.
- [ ] **The docs match the API.** `dart tool/check_docs_consistency.dart` fails when the docs disagree with the repo on carets, catalog counts, version lines, provider pins, or the weekly bump table. `tool/argument_rules_test.dart` fails when a copy of the argument-writing rules drifts from [Writing arguments](/docs/arguments/). `tool/doc_snippets_test.dart` compiles the `dart` fences in the docs it covers.

## Toward 1.0.0

1.0.0 comes after beta. Two minor releases in a row ship with no breaking changes. Neither release needs a new `MIGRATING.md` section. A later minor that adds a `MIGRATING.md` section starts that count again. A schema bump that removes a provider type is one of those minors. Reports of real usage inform the maintainer. The 1.0 label waits on beta, then on those two releases.

Stable SemVer then covers the packages in the table above.

[Upgrading](/docs/upgrading/) covers the current minor's breaking changes. [MIGRATING.md on GitHub](https://github.com/nozomi-koborinai/terradart/blob/main/MIGRATING.md) remains the record for older releases. Each minor's upgrading guide still covers that minor and the one before it. That rule is about the guide. The 1.0 rule is the two releases above.

## What alpha does *not* mean

- **Not** a freeze on new curated factories.
- **Not** [constructs / composite frameworks](https://github.com/nozomi-koborinai/terradart#non-goals).
- **Not** SemVer until 1.0.0.
- **Not** on-demand generation of arbitrary `google_*` bindings outside the curated surface.

## Reporting issues

Use the [bug or question template](https://github.com/nozomi-koborinai/terradart/issues/new/choose) on GitHub.
