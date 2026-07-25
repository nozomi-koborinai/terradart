---
title: Status & versioning
description: Alpha expectations, the path to beta, and how TerraDart versions releases.
---

TerraDart is **alpha** on the **0.24.x** line today. Alpha means the maintainer-side quality gates are all done (see [Alpha gates](#alpha-gates-complete)) and the [change policy](#change-policy-from-alpha-onward) below is in force; what still separates alpha from **beta** is external validation — see [Path to beta](#path-to-beta).

There are no SemVer guarantees until **v1.0.0**, but breaking changes land only on **minor** bumps: pin with `^0.24.x`, take patch releases freely, and read [MIGRATING.md](https://github.com/nozomi-koborinai/terradart/blob/main/MIGRATING.md) before every minor bump. Check [pub.dev](https://pub.dev/packages/terradart_core) for the latest patch.

## Release phases

| Phase | Version line | What we promise |
| --- | --- | --- |
| **Alpha** | 0.24.x (current) | Maintainer-side gates are done (docs, CI, real-apply coverage). **No breaking changes within a minor** (`^0.N.x`); breaking changes only on minor bumps, always documented in `MIGRATING.md`. Not SemVer until 1.0.0. |
| **Beta** | TBD (needs external validation) | The same change policy, proven against real external usage — see [Path to beta](#path-to-beta). |
| **1.0.0** | TBD | Stable SemVer for `terradart_core`, `terradart_google`, and `terradart_codegen`. |

## What to expect today (alpha)

- Breaking changes to the public Dart API or the emitted Terraform JSON land only on **minor** bumps, each with a [MIGRATING.md](https://github.com/nozomi-koborinai/terradart/blob/main/MIGRATING.md) section; patch releases within `^0.N.x` are safe to take.
- Use hosted `^0.24.x` carets on [pub.dev](https://pub.dev/packages/terradart_core) — not legacy `0.x.y-dev` pre-release tags.
- Only the **curated** `terradart_google` surface is supported for users; non-curated resources require a curation request.

## Change policy (from alpha onward)

- **Patch releases** (`0.N.x` → `0.N.y`): no intentional breaking changes to `terradart_core` / `terradart_google` public APIs.
- **Minor releases** (`0.N.x` → `0.M.x`): breaking changes allowed only with a `MIGRATING.md` section for the previous minor.
- **Curated factory additions** continue (additive waves); renaming or removing curated factories still counts as breaking.

## Alpha gates (complete)

Alpha required every item below; all are done. (This list was the former "beta readiness checklist" — beta is now gated on [external validation](#path-to-beta) instead.)

- [x] **Getting Started** on terradart.dev matches the [README quickstart](https://github.com/nozomi-koborinai/terradart#quickstart); no “Coming soon” placeholders on Status or Getting Started.
- [x] **`tool/check_docs_consistency`** runs in CI and passes (workspace + examples caret minor, catalog count, key meta docs). Workflow: [`.github/workflows/docs-consistency.yml`](https://github.com/nozomi-koborinai/terradart/blob/main/.github/workflows/docs-consistency.yml).
- [x] **`tool/smoke_quickstart.sh`** runs in CI and passes (`pubsub_quickstart`: pub get → synth → analyze including export consumer stub).
- [x] **Examples matrix** on `main` stays green (per-example synth + `terraform validate` on `tf-out/`).
- [x] **Boundary demo**: [pubsub_quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/pubsub_quickstart) documents `addExport` / generated `.app.dart` and includes a subscriber stub that `dart analyze` accepts.
- [x] **Meta docs aligned** with the current minor: CONTRIBUTING, SECURITY, issue templates, package READMEs, and root README agree on alpha/beta wording, `^0.N.x` pins, and **596 curated resource factories + 1 data source** (597 catalog entries).
- [x] **Full example coverage**: `tool/example_debt.yaml` is empty — all catalog entries appear in at least one quickstart synth (`check_docs_consistency.dart`).
- [x] **Change policy** published on this page (see [Change policy](#change-policy-from-alpha-onward)) and in force from alpha.

## Path to beta

Beta is the alpha change policy **proven against real external usage**. We will label the project beta when:

- [ ] **External quickstart**: someone outside the core team completes the README path once; feedback captured in an issue or discussion.
- [ ] **Real apply dogfood** via the [cookbook](https://github.com/nozomi-koborinai/terradart/tree/main/cookbook): at least one non-trivial recipe documents a successful `terraform apply`.
- [ ] **`terradart-mcp`**: [Agent install](/docs/agent/install/) verified on a clean machine (Homebrew or release binary + five tools).

Toward **1.0.0** (does not block beta):

- [x] **`MIGRATING.md` / site migration guide** — [Migrating](/docs/migrating/) mirrors the `0.12.9 → 0.12.10` breaking changes; [MIGRATING.md on GitHub](https://github.com/nozomi-koborinai/terradart/blob/main/MIGRATING.md) remains canonical for older releases. *Two-minor depth across minors remains a quality bar for current and future minor releases.*
- [ ] **1.0.0 criteria** drafted (what “stable” means for curated names and `terradart_core` API).

## What alpha does *not* mean

- **Not** a freeze on new curated factories.
- **Not** [constructs / composite frameworks](https://github.com/nozomi-koborinai/terradart#non-goals).
- **Not** SemVer until 1.0.0.
- **Not** on-demand generation of arbitrary `google_*` bindings outside the curated surface.

## Reporting issues

Use the [bug or question template](https://github.com/nozomi-koborinai/terradart/issues/new/choose) on GitHub.

## Maintainer notes

Maintainer session notes stay in the gitignored repo-root `docs/` tree locally (not published).
