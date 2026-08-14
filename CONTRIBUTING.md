# Contributing to terradart

Thanks for taking time to look at this. terradart is an **alpha** single-maintainer project (0.24.x today; breaking changes land only on minor bumps — beta needs external validation, see the [path to beta](https://terradart.dev/docs/status/#path-to-beta)). Contributions are welcome on a best-effort basis.

## What kind of contribution?

terradart ships one consumer surface:

- **Curated factories** — the `google_*` factory wrappers in [`terradart_google`](packages/terradart_google/README.md) (**1171 curated resource factories + 1 data source** as of 0.24.x). Bug fixes, tests, and doc improvements welcome. New resources land via `terradart wrap` overrides — open an issue first to discuss scope.

Within a **minor** line (`^0.24.x`), no breaking public API changes. Across **minors**, breaking changes are allowed with `MIGRATING.md` coverage (the alpha change policy — see [status](https://terradart.dev/docs/status/)).

Bug reports / questions / feature requests: pick a template when [opening an issue](https://github.com/nozomi-koborinai/terradart/issues/new/choose).

## Dev setup

Requirements:

- Dart SDK ≥ 3.6 (Pub Workspaces requirement).
- `terraform` CLI ≥ 1.11.0 (for end-to-end tests; write-only args require 1.11+).
- `git` ≥ 2.30.

```bash
# Clone and bootstrap (Pub Workspaces resolves all four packages)
git clone https://github.com/nozomi-koborinai/terradart.git
cd terradart
dart pub get

# Run the full test suite
dart test

# Run static analysis (must pass with zero issues)
dart analyze --fatal-infos --fatal-warnings

# Agent gate (subset of CI; no terraform matrix)
tool/agent_verify.sh

# Docs / quickstart only
dart tool/check_docs_consistency.dart
tool/smoke_quickstart.sh

# Format check
dart format --set-exit-if-changed .
```

**Agent skills (optional):** TerraDart maintainer workflows are committed under [`.agents/skills/`](.agents/skills/). Compatible agents discover them automatically. For generic Dart analyze/test workflows you may also install [dart-lang/skills](https://github.com/dart-lang/skills) with Node.js: `npx skills add dart-lang/skills --skill '*' --agent universal --yes`.

For a CI-equivalent local run (per-package iteration with build_runner gating):

```bash
tool/run_tests.sh
```

## PR checklist

Before opening a PR:

- [ ] `tool/agent_verify.sh` passes (or explain what you could not run).
- [ ] `dart tool/check_docs_consistency.dart` passes when you touch versions or catalog counts.
- [ ] `tool/smoke_quickstart.sh` passes when you touch `pubsub_quickstart` or synth/export paths.
- [ ] `dart format` was run.

**Wave / new curated factories** (see [`.agents/skills/terradart-ship-wave/`](.agents/skills/terradart-ship-wave/SKILL.md)):

- [ ] New or breaking factories have a runnable example (`examples/*_quickstart` or extended existing example).
- [ ] Breaking API changes include `MIGRATING.md` and updated examples in the same PR.
- [ ] README **Examples** list matches `examples/`; new quickstarts are in CI `terraform_validate` matrix.

## Review cadence

terradart is a single-maintainer project (alpha). Issue triage and PR
review are best-effort — expect a few weeks of latency, not a defined SLA.
If a PR sits untouched for 30 days, ping with a comment.

## Code of conduct

We follow the [Contributor Covenant v2.1](https://www.contributor-covenant.org/version/2/1/code_of_conduct/). Issues: open a private security advisory (see [SECURITY.md](SECURITY.md)) for serious incidents; otherwise email kobofender@gmail.com.

## License

By contributing, you agree your contributions are licensed under Apache-2.0, the project's license.
