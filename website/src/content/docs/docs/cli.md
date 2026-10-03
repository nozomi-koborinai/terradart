---
title: The terradart command
description: Synthesize, plan and apply a Stack with one command, per environment, with OpenTofu or Terraform — downloaded and checksum-verified when neither is installed — and write the define file a Flutter client builds with.
---

`terradart` runs the whole loop of a TerraDart project: it runs the entry point that synthesizes the Stack, then `init` and `plan` or `apply` in the directory it wrote, then writes the [define file](/docs/client-outputs/) the client builds with.

You never install or call Terraform yourself: `terradart` downloads a pinned OpenTofu release, checks it against the release's SHA-256, and keeps it in your user cache. A `tofu` or `terraform` already on your `PATH` is used instead.

## Install

Once per machine:

```bash
dart pub global activate terradart_cli
terradart apply
```

To pin the version per project, so everyone on it runs the same one, add it as a dev dependency of the infrastructure package instead:

```bash
dart pub add --dev terradart_cli
dart run terradart_cli:terradart apply
```

## Commands

| Command | Runs |
|---|---|
| `terradart synth` | the entry point (`dart run bin/infra.dart`); arguments after `--` go to it |
| `terradart validate` | synth, `init -backend=false`, `validate`: checks the configuration without credentials, a backend or state — the step for CI; arguments after `--` go to `validate` (`-- -json`) |
| `terradart plan` | synth, `init`, `plan`; arguments after `--` go to the engine (`-- -target=...`) |
| `terradart apply` | synth, `init`, `apply`, then writes the define file; `--auto-approve` skips the prompt |
| `terradart destroy` | synth, `init`, `destroy`; `--auto-approve` skips the prompt |
| `terradart outputs` | synth, `init`, then writes the define file from the applied state — no plan, no apply |
| `terradart state migrate` | synth, then `init -migrate-state`: moves the state to the backend the Stack now configures, after asking (`--auto-approve` skips the question, and is required without a terminal) |
| `terradart engine` | prints the engine binary it would run, downloading OpenTofu if that is the one |
| `terradart migrate` | turns a Terraform tree into a Dart package. No project is required — it does not look for a `pubspec.yaml` |

`--no-synth` reuses what the last synth wrote, `--project <dir>` (`-C`) runs against another package, and `--engine tofu|terraform` or `--engine-path <file>` picks the engine for one run. The exit code is the failing step's (64 for a usage error).

## The entry point

`bin/infra.dart` builds the Stack and hands it to `runStack`, which writes `tf-out/` and tells `terradart` what it wrote:

```dart
// lib/orders_stack.dart
import 'package:terradart_google/provider.dart';

final class OrdersStack extends Stack {
  OrdersStack({required String projectId})
    : super(providers: [GoogleProvider(project: projectId)]) {
    addOutput('project', .literal(projectId));
  }
}
```

```dart
// bin/single.dart
import 'package:my_app/orders_stack.dart';
import 'package:terradart_core/terradart_core.dart';

Future<void> main(List<String> args) =>
    runStack(args, () => OrdersStack(projectId: 'acme-dev'));
```

An entry point that writes `tf-out/` itself (`await OrdersStack(...).writeTo('tf-out')`) works too; `terradart` then looks for `tf-out/main.tf.json`, or the directory `terradart.out` names.

## Environments

With an entry point that calls `runEnvironments`, `validate`, `plan`, `apply`, `destroy` and `outputs` run against one member of the project's environment enum: the one `--env <name>` (`-e`) names, else the `TERRADART_ENV` environment variable, else the `defaultEnv` the entry point gives `runEnvironments`, else the only member; with none of these the command stops and lists the names. When `TERRADART_ENV` or `defaultEnv` chose it, `apply` and `destroy` ask first unless `--auto-approve` is set. `terradart synth` without `--env` writes every environment. Each environment gets its own Terraform directory (`tf-out/<name>` unless `runEnvironments` says otherwise) and define file (`.terradart/dart_defines.<name>.json`), and a name that is not a member stops before anything runs. `--workspace` and `--backend-config` override and extend, for one run, the workspace and backend settings `runEnvironments` gives an environment.

How to declare the enum, keep each environment's state apart, and build each client with its define file: [Environments](/docs/environments/).

## Moving the state

When the Stack changes its backend — `LocalBackend()` to `GcsBackend(...)`, one bucket to another, or back to a local file — the state has to follow it once:

```bash
terradart state migrate --env prod
```

It synthesizes, names the full source and target configuration (the bucket and prefix, not only `gcs` → `gcs`), asks, and runs the engine's `init -migrate-state` in that environment's directory, with its `backendConfig`. Without a terminal it stops unless `--auto-approve` is given. Run it before the next `plan` or `apply` of that environment: those reconfigure the directory onto the new backend without copying. When several environments share the directory and pass `backendConfig`, the copy is the state of the environment that last initialized it. If that was another environment, or TerraDart has no record, it stops and tells you to run `terradart plan --env <name>` first; `--auto-approve` does not skip that.

## The define file

After `apply`, a Stack with [`addDartDefineOutput()`](/docs/client-outputs/) gets its define file written to `.terradart/dart_defines.json` — `.terradart/dart_defines.<env>.json` with `--env` — and `terradart` prints the line that builds with it:

```text
Wrote 2 dart-defines to .terradart/dart_defines.stg.json
  flutter run --dart-define-from-file=.terradart/dart_defines.stg.json
  flutter build <target> --dart-define-from-file=.terradart/dart_defines.stg.json
```

`terradart outputs --env stg` writes the same file from the applied state without planning or applying: the command for a client's build job, which can read the state but not change it. `.terradart/` gets its own `.gitignore`, so the file never reaches git. A Stack with several define outputs takes `--define-output <name>`; `--define-file <path>` writes elsewhere.

When the app starts without the defines, the generated reader says how to get them:

```text
Dart define API_URL (Terraform output "api_url") is not set. Build the app with --dart-define-from-file=.terradart/dart_defines.json, which `terradart apply` and `terradart outputs` write (with --env <name>: .terradart/dart_defines.<name>.json).
```

## The engine

`terradart` picks the first of:

1. `--engine-path`, `--engine`, or `engine_path` / `engine` in `pubspec.yaml`;
2. the engine that last applied this environment's state, as recorded in `.terradart/engines.json`;
3. `tofu` on `PATH`;
4. `terraform` on `PATH`;
5. OpenTofu downloaded from its GitHub release.

The download is the release pinned in `terradart_cli` (`opentofu_version` in `pubspec.yaml` picks another), for Linux, macOS and Windows on amd64 and arm64. Its archive is checked against the SHA-256 checksum `terradart_cli` ships for the pinned release, or against the release's `SHA256SUMS` for another; a mismatch is deleted and stops the run. The binary is kept in `~/.cache/terradart` on Linux, `~/Library/Caches/terradart` on macOS and `%LOCALAPPDATA%\terradart` on Windows (`TERRADART_CACHE_DIR` moves it; `TERRADART_OPENTOFU_MIRROR` downloads from a mirror of the release layout).

State written by one engine is not always readable by another: Terraform 1.6 and later and OpenTofu have diverged. When the engine about to run differs from the one that last applied the state, or is older, `terradart` warns before it runs.

Without that record — right after a migration, or in a fresh clone, since `.terradart/` is not committed — `plan`, `apply` and `destroy` read the state itself: the local state file before `init`, and a remote backend's state (`state pull`) after it. Its provider addresses say which engine wrote it (`registry.terraform.io` or `registry.opentofu.org`), as does a `terraform_version` older than OpenTofu. When the other engine wrote it, `terradart` warns; and when it picked the engine by itself (step 3 to 5), it asks before running on a terminal, and without one stops with the flag that decides:

```text
terradart: Stopped before running OpenTofu on a state Terraform wrote. Pass --engine terraform to keep Terraform (or set terradart.engine: terraform in pubspec.yaml), or --engine tofu to move the state to OpenTofu.
```

`terradart migrate` writes `engine: terraform` into the package it generates, so a migrated project keeps the engine its state came from.

## `pubspec.yaml`

Every key is optional.

```yaml
terradart:
  entrypoint: bin/infra.dart # the Dart file whose main synthesizes
  out: tf-out # where an entry point without runStack writes
  engine: tofu # or terraform
  engine_path: tools/tofu # a binary of your own
  opentofu_version: 1.13.1 # the release to download
  dart_defines:
    output: dart_defines # the addDartDefineOutput name
    file: ../app/dart_defines.json # instead of .terradart/<output>.json
```

Environments are not configured here; they are the enum `runEnvironments` takes ([Environments](/docs/environments/)).
