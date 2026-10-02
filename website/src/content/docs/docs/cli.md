---
title: The terradart command
description: Synthesize, plan and apply a Stack with one command, per environment, with OpenTofu or Terraform — downloaded and checksum-verified when neither is installed — and write the define file a Flutter client builds with.
---

`terradart` runs the whole loop of a TerraDart project: it runs the entry point that synthesizes the Stack, then `init` and `plan` or `apply` in the directory it wrote, then writes the [define file](/docs/client-outputs/) the client builds with.

| Without the command | With it |
|---|---|
| `dart pub get`, `dart run bin/infra.dart`, `cd tf-out`, `terraform init`, `terraform apply`, `terraform output -json dart_defines > dart_defines.json` | `terradart apply` |

It runs the `tofu` or `terraform` already on your `PATH`. With neither, it downloads a pinned OpenTofu release, checks it against the release's SHA-256, and keeps it in your user cache.

## Install

As a dev dependency of the infrastructure package, so everyone on the project runs the same version:

```bash
dart pub add --dev terradart_cli
dart run terradart_cli:terradart apply
```

Or once per machine:

```bash
dart pub global activate terradart_cli
terradart apply
```

## Commands

| Command | Runs |
|---|---|
| `terradart synth` | the entry point (`dart run bin/infra.dart`); arguments after `--` go to it |
| `terradart plan` | synth, `init`, `plan`; arguments after `--` go to the engine (`-- -target=...`) |
| `terradart apply` | synth, `init`, `apply`, then writes the define file; `--auto-approve` skips the prompt |
| `terradart destroy` | synth, `init`, `destroy` |
| `terradart outputs` | synth, `init`, then writes the define file from the applied state — no plan, no apply |
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

Environments are a Dart enum of your own: any members, each carrying that environment's values. The Stack takes one and derives everything from it — the project, the sizes, and where its state lives, so one environment can keep a local state file while another uses a GCS bucket:

```dart
// lib/env.dart
enum Env {
  dev(projectId: 'acme-dev', stateBucket: null),
  stg(projectId: 'acme-stg', stateBucket: 'acme-stg-tfstate'),
  prod(projectId: 'acme-prod', stateBucket: 'acme-prod-tfstate');

  const Env({required this.projectId, required this.stateBucket});

  final String projectId;

  /// The GCS bucket of the state; `null` keeps a local file.
  final String? stateBucket;
}
```

```dart
// lib/app_stack.dart
import 'package:my_app/env.dart';
import 'package:terradart_google/provider.dart';

final class AppStack extends Stack {
  AppStack({required Env env})
    : super(
        providers: [GoogleProvider(project: env.projectId)],
        backend: switch (env.stateBucket) {
          final bucket? => GcsBackend(bucket: bucket, prefix: 'app'),
          null => LocalBackend(path: 'state/${env.name}.tfstate'),
        },
      ) {
    addOutput('api_url', .literal('https://api.${env.projectId}.example.com'));
    addDartDefineOutput();
  }
}
```

`runEnvironments` takes the members and builds one Stack per environment:

```dart
// bin/infra.dart
import 'package:my_app/app_stack.dart';
import 'package:my_app/env.dart';
import 'package:terradart_core/terradart_core.dart';

Future<void> main(List<String> args) =>
    runEnvironments(args, Env.values, (env) => AppStack(env: env));
```

`--env <name>` takes a member's name. Each environment gets its own Terraform directory and define file, named after it:

| Command | Terraform directory | Define file | Client build |
|---|---|---|---|
| `terradart apply --env dev` | `tf-out/dev` | `.terradart/dart_defines.dev.json` | `flutter run --dart-define-from-file=.terradart/dart_defines.dev.json` |
| `terradart apply --env stg` | `tf-out/stg` | `.terradart/dart_defines.stg.json` | `flutter build web --dart-define-from-file=.terradart/dart_defines.stg.json` |
| `terradart apply --env prod` | `tf-out/prod` | `.terradart/dart_defines.prod.json` | `flutter build ipa --dart-define-from-file=.terradart/dart_defines.prod.json` |

The names are the enum's, not a fixed set: `qa`, `sandbox`, `euWest` work the same. A name that is not a member stops before anything runs, listing the ones that are:

```text
$ terradart plan --env staging
> dart run bin/infra.dart --env staging
infra: unknown environment "staging"; known envs: dev, stg, prod.
terradart: synth failed: bin/infra.dart exited 64.
```

A project with several environments needs `--env` on `plan`, `apply`, `destroy` and `outputs`; `terradart synth` without it writes them all.

### One directory, one backend, several states

When every environment keeps its state in the same kind of backend and only its settings differ, the environments can share one directory and tell their states apart when `terradart` initializes it. `runEnvironments` says how, in Dart:

- **Partial backend configuration.** The Stack's backend leaves the settings out (`const GcsBackend()`); `backendConfig` names a `-backend-config` file (relative to the package) or `key=value` pairs per environment. `terradart` runs `init -reconfigure` with them on every command, so the directory never keeps another environment's backend.

  ```dart
  import 'package:my_app/app_stack.dart';
  import 'package:my_app/env.dart';
  import 'package:terradart_core/terradart_core.dart';

  Future<void> main(List<String> args) => runEnvironments(
    args,
    Env.values,
    (env) => AppStack(env: env),
    dir: (_) => 'tf-out',
    backendConfig: (env) => ['backend/${env.name}.gcs.tfbackend'],
  );
  ```

- **Workspaces.** `workspace` names the Terraform workspace `terradart` selects after `init`, creating it on the first `plan` or `apply`.

  ```dart
  import 'package:my_app/app_stack.dart';
  import 'package:my_app/env.dart';
  import 'package:terradart_core/terradart_core.dart';

  Future<void> main(List<String> args) => runEnvironments(
    args,
    Env.values,
    (env) => AppStack(env: env),
    dir: (_) => 'tf-out',
    workspace: (env) => env.name,
  );
  ```

Two environments may share a directory only when one of these tells them apart; `runEnvironments` throws otherwise. `--workspace` and `--backend-config` on the command line override and extend them for one run.

### Migrated environments

`terradart migrate --merge-envs` writes an `Env` enum whose members carry the directory each environment came from (`path`), and a `bin/infra.dart` that calls `runEnvironments` with `dir: (env) => 'tf-out/${env.path}'`. `terradart plan --env prodEu` reads that manifest and plans the matching environment. A single-module migration calls `runStack` instead, so `terradart plan` with no `--env` is enough. See [Migrating from HCL](/docs/migrate-from-hcl/).

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

Environments are not configured here; they are the enum `runEnvironments` takes.
