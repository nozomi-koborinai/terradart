---
title: Status & versioning
description: Alpha expectations, the path to beta, and how TerraDart versions releases.
---

TerraDart is **alpha** on the **0.33.x** line today. Alpha means the maintainer-side quality gates are done and the [change policy](#change-policy-from-alpha-onward) below is in force; what still separates alpha from **beta** is external validation — see [Path to beta](#path-to-beta).

There are no SemVer guarantees until **v1.0.0**, but breaking changes land only on **minor** bumps: pin with `^0.33.x`, take patch releases freely, and read [MIGRATING.md](https://github.com/nozomi-koborinai/terradart/blob/main/MIGRATING.md) before every minor bump. Check [pub.dev](https://pub.dev/packages/terradart_core) for the latest patch.

## Release phases

| Phase | Version line | What we promise |
| --- | --- | --- |
| **Alpha** | 0.33.x (current) | Maintainer-side gates are done (docs, CI, example validation). **No breaking changes within a minor** (`^0.N.x`); breaking changes only on minor bumps, always documented in `MIGRATING.md`. Not SemVer until 1.0.0. |
| **Beta** | TBD (needs external validation) | The same change policy, proven against real external usage — see [Path to beta](#path-to-beta). |
| **1.0.0** | TBD | Stable SemVer for `terradart_core`, `terradart_google`, and `terradart_codegen`. |

## What to expect today (alpha)

- Breaking changes to the public Dart API or the emitted Terraform JSON land only on **minor** bumps, each with a [MIGRATING.md](https://github.com/nozomi-koborinai/terradart/blob/main/MIGRATING.md) section; patch releases within `^0.N.x` are safe to take.
- Use hosted `^0.33.x` carets on [pub.dev](https://pub.dev/packages/terradart_core) — not legacy `0.x.y-dev` pre-release tags.
- Only the **curated** surfaces are supported for users. The GA `hashicorp/google` catalog is filled in `terradart_google`; beta-only types ship in `terradart_google_beta` (112 resource factories). `terradart_appwrite` is filled at `2.0.0-beta.1` (38 resource factories + 24 data sources). `terradart_cloudflare` and `terradart_aws` are filled at their exact provider pins (every resource and data source).

## Change policy (from alpha onward)

- **Patch releases** (`0.N.x` → `0.N.y`): no intentional breaking changes to `terradart_core` / `terradart_google` public APIs.
- **Minor releases** (`0.N.x` → `0.M.x`): breaking changes allowed only with a `MIGRATING.md` section for the previous minor.
- **Curated factory additions** continue (additive waves); renaming or removing curated factories still counts as breaking.

## What alpha required

Every maintainer-side gate is in place and runs on each pull request: docs consistency, every example synthesized and checked with `terraform validate`, example coverage of every catalog entry (or a reasoned entry in the example ledger), and the change policy above.

## Path to beta

Beta is the alpha change policy **proven against real external usage**. We will label the project beta when:

- [ ] **External quickstart**: someone outside the core team completes the README path once; feedback captured in an issue or discussion.
- [ ] **Real apply dogfood** via the [cookbook](https://github.com/nozomi-koborinai/terradart/tree/main/cookbook): at least one non-trivial recipe documents a successful `terraform apply`.
- [ ] **`terradart migrate`**: [Migrating from HCL](/docs/migrate-from-hcl/) verified on a clean machine (installed with `dart pub global activate terradart_cli`), with one real Terraform tree that migrates and plans with *No changes*.

Toward **1.0.0** (does not block beta):

- [x] **`MIGRATING.md` / site migration guide** — [Upgrading](/docs/upgrading/) covers the current minor's breaking changes; [MIGRATING.md on GitHub](https://github.com/nozomi-koborinai/terradart/blob/main/MIGRATING.md) remains canonical for older releases. *Two-minor depth across minors remains a quality bar for current and future minor releases.*
- [ ] **1.0.0 criteria** drafted (what “stable” means for curated names and `terradart_core` API).

## What alpha does *not* mean

- **Not** a freeze on new curated factories.
- **Not** [constructs / composite frameworks](https://github.com/nozomi-koborinai/terradart#non-goals).
- **Not** SemVer until 1.0.0.
- **Not** on-demand generation of arbitrary `google_*` bindings outside the curated surface.

## Reporting issues

Use the [bug or question template](https://github.com/nozomi-koborinai/terradart/issues/new/choose) on GitHub.
