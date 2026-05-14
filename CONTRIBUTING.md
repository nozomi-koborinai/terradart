# Contributing to terradart

Thanks for taking time to look at this. terradart is a pre-alpha single-maintainer project; contributions are welcome on a best-effort basis.

## What kind of contribution?

terradart's surface splits into two layers:

- **Built-in factories** — the curated `google_*` factory wrappers that ship in [`terradart_google`](packages/terradart_google/README.md) (28 resources + 1 data source as of v0.1.0-dev). Bug fixes, test cases, doc improvements welcome. New resources are accepted as curated `wrap` overrides — open an issue first to discuss scope.
- **Generated bindings** — output of `terradart codegen` for every other `google_*` / `google-beta_*` resource. Best-effort; codegen template fixes welcome.

Both are pre-alpha (v0.x.y-dev) — emitted Dart symbol names may change between dev releases.

Bug reports / questions: see the [Bug or question](.github/ISSUE_TEMPLATE/bug-or-question.yml) template.

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

# Format check
dart format --set-exit-if-changed .
```

For a CI-equivalent local run (per-package iteration with build_runner gating):

```bash
tool/run_tests.sh
```

## PR checklist

Before opening a PR:

- [ ] `dart analyze --fatal-infos --fatal-warnings` passes.
- [ ] `dart test` passes (full suite, not just one package).
- [ ] `dart format` was run.

## Review cadence

terradart is a single-maintainer project (pre-alpha). Issue triage and PR
review are best-effort — expect a few weeks of latency, not a defined SLA.
If a PR sits untouched for 30 days, ping with a comment.

## Code of conduct

We follow the [Contributor Covenant v2.1](https://www.contributor-covenant.org/version/2/1/code_of_conduct/). Issues: open a private security advisory (see [SECURITY.md](SECURITY.md)) for serious incidents; otherwise email kobofender@gmail.com.

## License

By contributing, you agree your contributions are licensed under Apache-2.0, the project's license.
