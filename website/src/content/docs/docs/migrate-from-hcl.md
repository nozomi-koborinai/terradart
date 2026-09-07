---
title: Migrating from HCL
description: Bring an existing Terraform tree into TerraDart with terradart-migrate — one Stack per module directory, a leftover sidecar for the rest, and a plan that reports No changes.
---

`terradart-migrate` turns a Terraform source tree (`*.tf` and `*.tf.json`) into a TerraDart package: one `Stack` class per module directory, a `tf-out/` tree that mirrors the source, and a **leftover sidecar** beside every synthesized `main.tf.json` holding, verbatim, each block the curated factories do not cover yet. Resource addresses are preserved, so `terraform plan` against your existing state reports **No changes** — you migrate one resource at a time, at your own pace, with no big-bang rewrite.

It reads files only. It never runs Terraform, never reads or writes state, never writes into the source tree, and never writes outside the output directory.

## Install

**Homebrew (macOS / Linux):**

```sh
brew install nozomi-koborinai/tap/terradart-migrate
```

**Direct binary:** grab the asset for your platform from the [GitHub releases page](https://github.com/nozomi-koborinai/terradart/releases) and place it on your `PATH`.

| Platform              | Asset                                  |
| --------------------- | -------------------------------------- |
| macOS (Apple Silicon) | `terradart-migrate-darwin-arm64`       |
| macOS (Intel)         | `terradart-migrate-darwin-amd64`       |
| Linux (x86_64)        | `terradart-migrate-linux-amd64`        |
| Windows (x86_64)      | `terradart-migrate-windows-amd64.exe`  |

**From a checkout:** `cd packages/terradart_migrate && dart run bin/terradart_migrate.dart --help`.

```sh
terradart-migrate --version
```

The generated package needs the Dart SDK (`dart pub get`, `dart run`) and `terraform` for the plan; the migrator itself needs neither.

## Migrate a tree

```sh
terradart-migrate --dir infra --out infra_dart
```

Every directory under `--dir` that holds `.tf` / `.tf.json` files is a module (hidden directories such as `.terraform` are skipped). Given a tree like

```text
infra/
├── envs/
│   ├── dev/      main.tf  backend.tf  terraform.tfvars
│   └── prod/     main.tf  backend.tf  terraform.tfvars
└── modules/
    └── network/  main.tf  variables.tf  outputs.tf
```

`infra_dart/` holds:

| Path | Content |
| :--- | :--- |
| `pubspec.yaml` | lockstep pins on `terradart_core` and the provider packages the Stacks use |
| `bin/infra.dart` | synthesizes every Stack into its Terraform directory |
| `lib/dev_stack.dart`, `lib/prod_stack.dart`, `lib/network_stack.dart` | one Stack per module directory (`dev` → `DevStack`) |
| `tf-out/envs/dev/`, `tf-out/envs/prod/`, `tf-out/modules/network/` | each module's Terraform directory, mirroring the source so `source = "../../modules/network"` keeps resolving: `main.tf.json` (written by synth) next to the sidecar files, plus `terraform.tfvars`, `*.auto.tfvars` and `.terraform.lock.hcl` copied from the source |
| `MIGRATION.md` | the report: every module, every block that stays in Terraform with its reason and file, warnings, and how `dev` and `prod` differ |

A single-module `--dir` synthesizes into `tf-out/` directly. The summary on stdout says what happened per directory; `--json` prints the same report as JSON.

```text
terradart-migrate 0.x.y: infra → infra_dart (infra)
  modules: 3 (2 roots, 1 child); migrated 41 blocks, kept 5
  envs/dev: DevStack — 17 migrated, 2 kept → tf-out/envs/dev
  envs/prod: ProdStack — 19 migrated, 3 kept → tf-out/envs/prod
  modules/network: NetworkStack — 5 migrated, 0 kept → tf-out/modules/network
Report: infra_dart/MIGRATION.md
Next: cd infra_dart && dart pub get && dart run bin/infra.dart
```

## Plan with no changes

```sh
cd infra_dart
dart pub get
dart run bin/infra.dart      # writes tf-out/**/main.tf.json next to the sidecar files
cd tf-out/envs/dev
terraform init
terraform plan               # No changes. Your infrastructure matches the configuration.
```

Terraform merges every file in a directory, so the synthesized `main.tf.json` and the sidecar files form the same module the source was. The Stack carries the backend (`GcsBackend`, `S3Backend`, `LocalBackend`; any other backend stays in `backend.tf` as written), so `terraform init` in the new directory connects to the same remote state. With a **local backend**, copy `terraform.tfstate` into the new directory first — the migrator never copies state. `terraform.tfvars` and `*.auto.tfvars` are copied; other `*.tfvars` files are listed in `MIGRATION.md` for `-var-file`.

A plan that is not empty means a block was translated differently from how it was written. Nothing has been applied: compare that resource in `main.tf.json` with the original and [open an issue](https://github.com/nozomi-koborinai/terradart/issues/new/choose) with both.

## What stays in Terraform

Translation is **resource-atomic**: a resource becomes a factory call only when every one of its arguments translates. One untranslatable argument keeps the whole block in Terraform, verbatim, preceded by the reason:

```hcl
# terradart-migrate: count = var.workers is not a literal number; only a literal count is unrolled into resources with fixed addresses
resource "google_pubsub_subscription" "workers" {
  count = var.workers
  name  = "workers-${count.index}"
  topic = google_pubsub_topic.events.name
}
```

The sidecar is split the way Terraform code usually is:

- `terradart_leftover.tf` — resources, data sources, module calls, and `moved` blocks whose target stays here too;
- `backend.tf` — `terraform { }` settings the Stack does not own: a backend without a TerraDart type, `cloud`, and the `required_providers` entries of providers that have no factory;
- `variables.tf`, `locals.tf`, `outputs.tf` — the variables that did not become `addVariable`, every `locals` block, and the outputs that did not become exports.

Nothing the Stack owns is repeated (its `required_providers`, its provider configurations — aliased ones included — its backend, the variables it declares), because Terraform rejects those twice. A `provider "google" { alias = "eu" }` block becomes a second `GoogleProvider(alias: 'eu', ...)` on the Stack, and a resource's `provider = google.eu` becomes `provider: 'google.eu'` on its factory (`provider = google-beta` on a GA type is translated the same way). Expressions the migrator cannot type — templates, function calls, conditionals, `local.x`, `module.x.y` — become `TfArg.expression(...)`, verbatim, on any argument. A literal `count` or `for_each` is unrolled into one resource per instance — `google_pubsub_topic.t[0]` becomes `google_pubsub_topic.t_0`, `google_pubsub_topic.t["eu"]` becomes `google_pubsub_topic.t_eu` — with `count.index` / `each.key` / `each.value` substituted, every reference in the module (indexed, splat or bare) pointed at the new addresses, and a `moved` entry per instance (`Stack.addMoved`) so the plan shows moves, never a destroy and create; the module's own `moved` blocks follow their targets into the Stack. What keeps a block in Terraform today: a type outside the four curated catalogs, a `count` / `for_each` that is not a literal (its instance set cannot be known without evaluating it), `dynamic` / `provisioner` / `timeouts`, a `provider = x.alias` the module does not configure (or one inside a child module, which needs `configuration_aliases`), an argument with no Dart parameter, an expression inside a typed list, a sensitive literal (never copied into Dart), and `depends_on` on a resource that stays in Terraform. `MIGRATION.md` lists every kept block with its reason and file, and every unrolled one with its new addresses.

To finish a block by hand: write it in the Stack, delete it from the sidecar, synthesize and plan again — the plan tells you whether the two agree. `--allow-todo` writes a `TODO(terradart-migrate)` comment per untranslated block into the Stack instead of a sidecar; the report then says the plan differs until every TODO is ported.

## Modules and environments

The migrator infers the role of each directory:

- a directory some `module` block's `./` or `../` `source` points at is a **child**, migrated in child-module mode: providers are registered without configuration (synth emits only `required_providers`), `variable` becomes `addVariable`, `output` becomes an export, and a provider configuration or backend found there stays in the sidecar. The caller's `module` block stays in the caller's sidecar, so plan addresses keep their `module.<name>.` prefix;
- every other directory is a **root**; roots sharing a parent directory (`envs/dev`, `envs/prod`) are **environment** siblings. Each keeps its own Stack, Terraform directory and backend; `MIGRATION.md` reports the addresses they share, the ones only some of them declare, and the arguments that differ. Folding them into one Stack is a later step (`--merge-envs`, [#668](https://github.com/nozomi-koborinai/terradart/issues/668));
- a directory where nothing translates — no curated resource and no known provider — gets no Stack and stays Terraform; its sidecar files are its whole output.

`--roots <dir>` forces a directory to be a root even when a `module` block references it; `--env-dirs <dir>` names the environments explicitly. Both are relative to `--dir` and repeatable.

## Options

| Flag | Meaning |
| :--- | :--- |
| `--dir <tree>` | The Terraform source tree to migrate. Never written. |
| `--out <package>` | Where the Dart package goes. Must not exist or be empty unless `--force` is given; nothing is ever written outside it. |
| `--name <name>` | The package name and the root Stack class. Defaults to the base name of `--dir`. |
| `--roots <dir>` | Treat `<dir>` as a root module even when a `module` block references it. |
| `--env-dirs <dir>` | Root directories that are environments of one deployment. |
| `--allow-todo` | TODO comments in the Stack instead of a sidecar; the plan differs until they are ported. |
| `--json` | Print the report as JSON instead of the summary. |
| `--force` | Write into a non-empty `--out`, overwriting only the files the migrator generates. |

Exit codes follow sysexits: `0` success, `64` usage, `65` unreadable input or no Terraform files, `70` internal error, `73` output directory not empty or not writable.

## Library

The same pipeline is a Dart library: `scanModuleTree` reads the tree, `migrateTree` produces every file, `migrateModule` migrates one module. See the [package README](https://github.com/nozomi-koborinai/terradart/tree/main/packages/terradart_migrate) for the API and the conversion rules, and the [migrator design](https://github.com/nozomi-koborinai/terradart/issues/655) for how the migration manifests tie the recipe to the generated factories.

## What comes next

The blockers above shrink as the runtime grows — module calls ([#665](https://github.com/nozomi-koborinai/terradart/issues/665)) — followed by `--merge-envs` ([#668](https://github.com/nozomi-koborinai/terradart/issues/668)) and incremental re-runs ([#669](https://github.com/nozomi-koborinai/terradart/issues/669)). Progress is tracked on the [migrator epic](https://github.com/nozomi-koborinai/terradart/issues/80).
