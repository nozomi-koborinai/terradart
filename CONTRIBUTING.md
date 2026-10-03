# Contributing to terradart

Thanks for taking time to look at this. terradart is an **alpha** single-maintainer project (0.33.x today; breaking changes land only on minor bumps — beta needs external validation, see the [path to beta](https://terradart.dev/docs/status/#path-to-beta)). Contributions are welcome on a best-effort basis.

## What kind of contribution?

terradart ships two consumer surfaces:

- **Curated factories** — the `google_*` factory wrappers in [`terradart_google`](packages/terradart_google/README.md) (**1366 curated resource factories + 468 data sources** as of 0.33.x) and the beta-only catalog in [`terradart_google_beta`](packages/terradart_google_beta/README.md) (**112 resource factories**), plus the filled catalogs of [`terradart_appwrite`](packages/terradart_appwrite/README.md), [`terradart_cloudflare`](packages/terradart_cloudflare/README.md), and [`terradart_aws`](packages/terradart_aws/README.md). Bug fixes, tests, and doc improvements welcome. The GA catalog is filled; new beta-only types that appear after the current provider pin still land via `terradart-codegen wrap` overrides — open an issue first to discuss scope.
- **The `terradart` command and the migrator** — [`terradart_cli`](packages/terradart_cli/README.md) (`terradart synth`, `validate`, `plan`, `apply`, `destroy`, `outputs`, `migrate`), [`terradart_migrate`](packages/terradart_migrate/README.md) and [`terradart_hcl`](packages/terradart_hcl/README.md). Bug fixes, tests, and migration fixtures from real Terraform trees welcome.

Within a **minor** line (`^0.33.0`), no breaking public API changes. Across **minors**, breaking changes are allowed with `MIGRATING.md` coverage (the alpha change policy — see [status](https://terradart.dev/docs/status/)).

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

## Review cadence

terradart is a single-maintainer project (alpha). Issue triage and PR
review are best-effort — expect a few weeks of latency, not a defined SLA.
If a PR sits untouched for 30 days, ping with a comment.

## Code of conduct

We follow the [Contributor Covenant v2.1](https://www.contributor-covenant.org/version/2/1/code_of_conduct/). Issues: open a private security advisory (see [SECURITY.md](SECURITY.md)) for serious incidents; otherwise email kobofender@gmail.com.

## License

By contributing, you agree your contributions are licensed under Apache-2.0, the project's license.
