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
| `lib/network_module.dart` | one typed `ModuleCall` wrapper per local module directory a `module` block calls (`modules/network` → `NetworkModule`), from its `variable` and `output` blocks |
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

- `terradart_leftover.tf` — resources, data sources, module calls the Stack cannot express, and `moved` blocks whose target stays here too;
- `backend.tf` — `terraform { }` settings the Stack does not own: a backend without a TerraDart type, `cloud`, and the `required_providers` entries of providers that have no factory;
- `variables.tf`, `locals.tf`, `outputs.tf` — the variables that did not become `addVariable`, the `locals` entries that stay in Terraform, and the outputs that did not become exports.

Nothing the Stack owns is repeated (its `required_providers`, its provider configurations — aliased ones included — its backend, the variables it declares), because Terraform rejects those twice. A `provider "google" { alias = "eu" }` block becomes a second `GoogleProvider(alias: 'eu', ...)` on the Stack, and a resource's `provider = google.eu` becomes `provider: 'google.eu'` on its factory (`provider = google-beta` on a GA type is translated the same way). Expressions the migrator cannot type — templates, function calls, conditionals, `local.x` — become `TfArg.expression(...)`, verbatim, on any argument. A `timeouts { ... }` block becomes `const TfTimeouts(create: '30m', ...)` on the factory, a bare `terraform.workspace` becomes `TfArg.workspace<T>()`, and a partial backend (`backend "gcs" {}`, whose values come from `terraform init -backend-config`) becomes the typed backend with those parameters left out. A `module` block becomes `addModule(...)`: a call whose `source` points at a directory in the scanned tree gets a typed wrapper generated from that module's `variable` and `output` blocks (`CloudRunModule(localName: 'cloud_run_bff', source: '../modules/cloud_run', name: TfArg.literal('app-bff'))`, and `bff.serviceName` wherever a resource attribute goes), while registry, git and out-of-tree sources become a bare `ModuleCall` with `source` / `version` verbatim and an untyped `inputs` map — either way the address keeps its `module.<name>.` prefix. A literal `count` or `for_each` is unrolled into one resource per instance — `google_pubsub_topic.t[0]` becomes `google_pubsub_topic.t_0`, `google_pubsub_topic.t["eu"]` becomes `google_pubsub_topic.t_eu` — with `count.index` / `each.key` / `each.value` substituted, every reference in the module (indexed, splat or bare) pointed at the new addresses, and a `moved` entry per instance (`Stack.addMoved`) so the plan shows moves, never a destroy and create; the module's own `moved` blocks follow their targets into the Stack. What keeps a block in Terraform today: a type outside the four curated catalogs, a `count` / `for_each` that is not a literal (its instance set cannot be known without evaluating it) or one on a `module` call (whose instances are addressed `module.x[0]`), a `module` call with a computed `source` or an input the called module does not declare, `dynamic` / `provisioner`, a `timeouts` key that is not a Terraform operation or whose value is not a duration string, a `provider = x.alias` the module does not configure (or one inside a child module, which needs `configuration_aliases`), an argument with no Dart parameter, an expression inside a typed list, a sensitive literal (never copied into Dart), and `depends_on` on a resource that stays in Terraform. `MIGRATION.md` lists every kept block with its reason and file, and every unrolled one with its new addresses.

A block's own leading comments come across with it: the `#`, `//` or `/* */` lines above a `resource`, `data` or `module` block are written as `//` lines above the `add(...)` it became, so the documentation lives where the code now does. A `count` / `for_each` block documents its unrolled instances once, above the first. The migrator's own `# terradart-migrate:` reasons are not carried — they are annotations, not prose, and `--update` reads a sidecar full of them. A merged Stack (`--merge-envs`) carries none: its bodies are lined up statement by statement across environments that may document the same block differently.

To finish a block by hand: write it in the Stack, delete it from the sidecar, synthesize and plan again — the plan tells you whether the two agree. `--allow-todo` writes a `TODO(terradart-migrate)` comment per untranslated block into the Stack instead of a sidecar; the report then says the plan differs until every TODO is ported.

## Modules and environments

The migrator infers the role of each directory:

- a directory some `module` block's `./` or `../` `source` points at is a **child**, migrated in child-module mode: providers are registered without configuration (synth emits only `required_providers`), `variable` becomes `addVariable`, `output` becomes an export, and a provider configuration or backend found there stays in the sidecar. The caller's `module` block becomes `addModule(...)`, whose `source` still points at the child's directory in the mirrored `tf-out/` tree, so plan addresses keep their `module.<name>.` prefix;
- every other directory is a **root**; roots sharing a parent directory (`envs/dev`, `envs/prod`) are **environment** siblings. Each keeps its own Stack, Terraform directory and backend; `MIGRATION.md` reports the addresses they share, the ones only some of them declare, and the arguments that differ. `--merge-envs` folds the group into one Stack instead (below);
- a directory where nothing translates — no curated resource and no known provider — gets no Stack and stays Terraform; its sidecar files are its whole output.

`--roots <dir>` forces a directory to be a root even when a `module` block references it; `--env-dirs <dir>` names the environments explicitly. Both are relative to `--dir` and repeatable.

### One Stack for every environment

`envs/dev` and `envs/prod` are usually the same configuration with a handful of different values. Migrated one Stack each, that duplication carries straight into Dart. `--merge-envs` folds each group into one Stack instead:

```dart
final class AppStack extends Stack {
  AppStack({required this.env})
    : super(
        providers: [const GoogleProvider()],
        backend: GcsBackend(bucket: env.backendBucket, prefix: env.backendPrefix),
      ) {
    final assets = add(GoogleStorageBucket(
      localName: 'assets',
      name: TfArg.literal(env.assetsName),   // "app-dev-assets" / "app-prod-assets"
      location: TfArg.variable('region'),
    ));
    if (env.isProd) {
      add(GoogleStorageBucket(localName: 'backups', ...));
    }
  }

  final Env env;
}
```

`lib/env.dart` holds the generated enum — one member per root, carrying its `path` (`tf-out/<path>`), every value the roots disagree on, and a flag per group of blocks only some of them declare:

```dart
enum Env {
  dev(path: 'dev', assetsName: 'app-dev-assets', backendBucket: 'app-dev-tfstate', ...),
  prod(path: 'prod', assetsName: 'app-prod-assets', backendBucket: 'app-prod-tfstate', ..., isProd: true);
  ...
}
```

`dart run bin/infra.dart` writes every environment into its own `tf-out/` directory; `--env dev` writes the ones of that name. A value lifts when every root writes it as a plain scalar: a resource argument, a `module` call input, a `variable` default or description, a provider argument, a backend argument. The constant is typed as the argument takes it, so an enum-valued one is a typed member (`storageClass: TfArg.literal(env.assetsStorageClass)`, with `BucketStorageClass.nearline` on the enum). Anything else — a reference, a nested block, a list, an interpolated string, a `sensitive` variable's default (never copied into Dart), a different provider or backend, a different block order — keeps one Stack per root, with the reason in `MIGRATION.md`. What merging never changes is the plan: the fixture gate proves the merged Stack synthesizes, per environment, exactly the JSON the separate Stacks did.

### The workspace as a parameter

`--lift-workspace` turns `terraform.workspace` into a `workspace` parameter on the Stack: a bare reference becomes `TfArg.literal(workspace)`, a template around it becomes Dart interpolation (`TfArg.literal('orders-$workspace')`), and one inside a list or map becomes the value. `dart run bin/infra.dart --workspace prod` then synthesizes for that workspace by name. It is opt-in because it moves the decision: the JSON names a workspace instead of leaving `${terraform.workspace}` for `terraform workspace select`, so it is faithful for the workspace it names and only that one. A template mixing the workspace with another reference stays a Terraform expression, with a warning naming it.

### Locals as Dart finals

A `locals` block stays in the sidecar by default, and the Stack goes on reading it as the `${local.prefix}` templates Terraform resolves at plan time — which is right for a local whose value is computed. A local whose value is a plain literal has a Dart value, though, and reading it out of a sidecar file is a worse Stack than declaring it. `--inline-locals` declares those:

```hcl
locals {
  prefix      = "acme"
  bucket_name = "${local.prefix}-assets"
  suffix      = "topic-${var.env}"
  labels      = { managed_by = "terradart" }
}
```

```dart
final prefix = r'acme';
final bucketName = '$prefix-assets';
add(GoogleStorageBucket(localName: r'assets', name: TfArg.literal(bucketName), ...));
```

`prefix` and `bucket_name` become `final`s and leave `locals.tf`; `suffix` and `labels` keep their entries, each over the reason it stayed. A local is inlined when its value is a scalar literal, or a template made only of literal text and locals that are themselves inlined — so the value the Stack writes is the one Terraform resolved before. A list, an object, a reference to a variable or a resource, a `%{ ... }` directive, or a name two `locals` blocks both declare all stay.

Two rules keep the sidecar correct. A local leaves it only when nothing that stays behind still reads it — a kept block, a `terraform` setting, another local, or a `${local.x}` the Stack still emits as an expression — so a local can be a `final` in the Stack *and* an entry in `locals.tf` at the same time. And a local nothing in the Stack reads is never declared, so the generated package has no unused `final`.

The cost of the flag is that the value is copied: editing `locals.tf` afterwards no longer moves what the Stack writes. What it never changes is the plan — the fixture gate migrates a module both ways and requires `terraform plan` to report the same thing for both packages, resource for resource. `--inline-locals` cannot be combined with `--merge-envs`, which already lifts the values the environments disagree on onto the generated `Env` enum.

### The tree as the leftover

Every other mode reads `--dir` and never writes to it. `--in-place` is the exception: after the package is written, it rewrites the Terraform tree so its `.tf` files keep only the blocks that stayed in Terraform.

```sh
terradart-migrate --dir infra --out infra_dart --in-place
git -C infra diff
```

That diff is the point. Every block that became Dart shows as a deletion, in the file it lived in, and nothing else changes: the rewrite cuts source ranges rather than re-rendering, so every line that stays keeps its own formatting, comments and blank lines byte for byte. A file whose every block became Dart is deleted; a `terraform { }` block loses the settings the Stack owns — `required_version`, the `required_providers` entries of the providers it registers — and keeps the rest.

It refuses to run unless `--dir` is inside a **git working tree with nothing uncommitted in it**, untracked files included, and it checks that before writing anything, `--out` included. The rewrite deletes your Terraform; `git checkout` is the undo, and it only works if the tree started clean.

Three things it never touches. A `*.tf.json` file, whose nodes carry no source ranges to cut — re-rendering it would rewrite the whole file, so it is left alone and listed in the report. `moved` blocks: the report does not say which of them became `Stack.addMoved`, and a state move is not worth a guess. And anything reached through a **symbolic link** — a `*.tf` link, or a file under a linked directory. The scan reads through links and a write would follow one, so such a path sits inside `--dir` and resolves anywhere; its git state is the link's rather than the target's, which is exactly the case the clean-tree guard cannot cover. The report names what each skipped path resolved to. A `--dir` that is itself a link is fine — only a link *inside* the tree is an escape.

## Picking the migration back up

The catalog grows. A block that had no factory when you migrated may have one today — but the Dart is yours now, so re-migrating over it is not an option. `--update` re-runs on the package instead of the tree:

```sh
terradart-migrate --update infra_dart
```

It reads only what is still Terraform — each directory's sidecar, never the `main.tf.json` a Stack writes — and writes three kinds of file, and nothing else:

- `lib/<stack>.snippets.dart` — an `extension <Stack>Rerun on Stack` whose method body is exactly the statements to paste into the constructor. It is an extension so the file compiles where it sits: the body is valid in the constructor because it is valid here. Resources, data sources, module calls and their `moved` entries are pasted; a provider configuration, a variable, an output and the `terraform` settings are the Stack's own structure, and stay in the sidecar.
- `tf-out/<dir>/terradart_leftover.next.tf` — the sidecar as it looks once they are pasted.
- `RERUN.md` — what translates now, and the swap steps per directory.

Your Dart is never overwritten: the writer owns those three paths and refuses every other one. Paste the body, add the imports the snippets file opens with, swap the `.next.tf` in, delete the snippets file and re-synthesize — `terraform plan` must still report *No changes*.

Two things a re-run cannot know, because it reads the sidecar and not your Dart: a reference to a block your Stack already owns stays a Terraform expression rather than becoming `TfArg.ref(...)`, and a block whose only obstacle is a `depends_on` on one of them stays in Terraform, since a Dart dependency needs the Dart object. A local your Stack already declares *is* known — the re-run reads the names and never shadows one.

## Options

| Flag | Meaning |
| :--- | :--- |
| `--dir <tree>` | The Terraform source tree to migrate. Never written, unless `--in-place` is given. |
| `--out <package>` | Where the Dart package goes. Must not exist or be empty unless `--force` is given; nothing is written outside it, unless `--in-place` rewrites the tree under `--dir`. |
| `--name <name>` | The package name and the root Stack class. Defaults to the base name of `--dir`. |
| `--roots <dir>` | Treat `<dir>` as a root module even when a `module` block references it. |
| `--env-dirs <dir>` | Root directories that are environments of one deployment. |
| `--merge-envs` | Fold each group of environment siblings into one Stack taking a generated `Env` enum. |
| `--lift-workspace` | Turn `terraform.workspace` into a `workspace` parameter on the Stack. |
| `--inline-locals` | Declare the `locals` entries whose value is a literal as Dart `final`s. Cannot be combined with `--merge-envs`. |
| `--in-place` | Rewrite the tree under `--dir` to keep only what stays in Terraform. Destructive; refuses unless that tree is a clean git working tree. |
| `--update <package>` | Re-run over a package already generated: snippets for what the catalog covers today. Takes neither `--dir` nor `--out`. |
| `--allow-todo` | TODO comments in the Stack instead of a sidecar; the plan differs until they are ported. |
| `--json` | Print the report as JSON instead of the summary. |
| `--force` | Write into a non-empty `--out`, overwriting only the files the migrator generates. |

Exit codes follow sysexits: `0` success, `64` usage, `65` unreadable input or no Terraform files, `70` internal error, `73` output directory not empty or not writable, or `--in-place` refusing a tree it cannot undo.

## Library

The same pipeline is a Dart library: `scanModuleTree` reads the tree, `migrateTree` produces every file, `migrateModule` migrates one module. See the [package README](https://github.com/nozomi-koborinai/terradart/tree/main/packages/terradart_migrate) for the API and the conversion rules, and the [migrator design](https://github.com/nozomi-koborinai/terradart/issues/655) for how the migration manifests tie the recipe to the generated factories.

## What comes next

The blockers above shrink as the runtime grows. Progress is tracked on the [migrator epic](https://github.com/nozomi-koborinai/terradart/issues/80).
