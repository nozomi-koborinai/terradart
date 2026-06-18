---
title: Status & versioning
description: Pre-alpha expectations, beta readiness, and how TerraDart versions releases.
---

TerraDart is **pre-alpha** on the **0.12.x** line today. We remain pre-alpha until the [beta readiness](#beta-readiness-checklist) required gates are all complete; we plan to label the project **beta** starting with **v0.13.0**, not retroactively on 0.12.x.

There are no SemVer guarantees until **v1.0.0**. Pin with `^0.12.x` and read [MIGRATING.md](https://github.com/nozomi-koborinai/terradart/blob/main/MIGRATING.md) before every **minor** bump. Check [pub.dev](https://pub.dev/packages/terradart_core) for the latest patch.

## Release phases

| Phase | Version line | What we promise |
| --- | --- | --- |
| **Pre-alpha** | 0.12.x (current) | Docs and automation are catching up. Breaking changes may land in any 0.x release until beta policy applies. |
| **Beta** | from **0.13.0** (planned) | Trustworthy onboarding on terradart.dev and GitHub. **No breaking changes within a minor** (`^0.N.x`); breaking changes only on minor bumps, always documented in `MIGRATING.md`. Not SemVer-frozen until 1.0.0. |
| **1.0.0** | TBD | Stable SemVer for `terradart_core`, `terradart_google`, and `terradart_codegen`. |

## What to expect today (pre-alpha)

- Surface and emitted Terraform JSON may change between releases, especially across **minor** bumps.
- Use hosted `^0.12.x` carets on [pub.dev](https://pub.dev/packages/terradart_core) — not legacy `0.x.y-dev` pre-release tags.
- Only the **curated** `terradart_google` surface is supported for users; non-curated resources require a curation request.

## Beta change policy (applies from v0.13.0)

When we declare beta:

- **Patch releases** (`0.N.x` → `0.N.y`): no intentional breaking changes to `terradart_core` / `terradart_google` public APIs.
- **Minor releases** (`0.N.x` → `0.M.x`): breaking changes allowed only with a `MIGRATING.md` section for the previous minor.
- **Curated factory additions** continue (additive waves); renaming or removing curated factories still counts as breaking.

## Beta readiness checklist

We will label the project **beta** starting with **v0.13.0** when every **required** item below is done.

### Required (all must be ✅ before v0.13.0)

- [x] **Getting Started** on terradart.dev matches the [README quickstart](https://github.com/nozomi-koborinai/terradart#quickstart); no “Coming soon” placeholders on Status or Getting Started.
- [x] **`tool/check_docs_consistency`** runs in CI and passes (workspace + examples caret minor, catalog count, key meta docs). Workflow: [`.github/workflows/docs-consistency.yml`](https://github.com/nozomi-koborinai/terradart/blob/main/.github/workflows/docs-consistency.yml).
- [x] **`tool/smoke_quickstart.sh`** runs in CI and passes (`pubsub_quickstart`: pub get → synth → analyze including export consumer stub).
- [x] **Examples matrix** on `main` stays green (per-example synth + `terraform validate` on `tf-out/`).
- [x] **Boundary demo**: [pubsub_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/pubsub_quickstart) documents `addExport` / generated `.app.dart` and includes a subscriber stub that `dart analyze` accepts.
- [x] **Meta docs aligned** with the current minor: CONTRIBUTING, SECURITY, issue templates, package READMEs, and root README agree on pre-alpha/beta wording, `^0.N.x` pins, and **222 curated resource factories + 1 data source** (223 catalog entries).
- [x] **Full example coverage**: `tool/example_debt.yaml` is empty — all catalog entries appear in at least one quickstart synth (`check_docs_consistency.dart`).
- [x] **Beta change policy** published on this page (see [Beta change policy](#beta-change-policy-applies-from-v0130)).

### Optional (does not block beta)

- [x] **`MIGRATING.md` / site migration guide** — [Migrating](/docs/migrating/) mirrors the `0.12.9 → 0.12.10` breaking changes; [MIGRATING.md on GitHub](https://github.com/nozomi-koborinai/terradart/blob/main/MIGRATING.md) remains canonical for older releases. *Two-minor depth across minors is still a beta quality bar when `0.13.0` ships.*
- [ ] **External quickstart**: someone outside the core team completes the README path once; feedback captured in an issue or discussion.
- [ ] **Real apply dogfood** via [terradart-cookbook](https://github.com/nozomi-koborinai/terradart-cookbook): at least one non-trivial recipe documents a successful `terraform apply`.
- [ ] **`terradart-mcp`**: [Agent install](/docs/agent/install/) verified on a clean machine (Homebrew or release binary + four tools).
- [ ] **1.0.0 criteria** drafted (what “stable” means for curated names and `terradart_core` API).

## What beta does *not* mean

- **Not** a freeze on new curated factories.
- **Not** [constructs / composite frameworks](https://github.com/nozomi-koborinai/terradart#non-goals).
- **Not** SemVer until 1.0.0.
- **Not** on-demand generation of arbitrary `google_*` bindings outside the curated surface.

## Reporting issues

Use the [bug or question template](https://github.com/nozomi-koborinai/terradart/issues/new/choose) on GitHub.

## Maintainer notes

Maintainer session notes stay in the gitignored repo-root `docs/` tree locally (not published).
