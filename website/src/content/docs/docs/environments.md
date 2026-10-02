---
title: Environments
description: Declare dev, staging and prod as a Dart enum, give each its own project and state, and build each client with that environment's define file.
---

A TerraDart project declares its environments in Dart: an enum of your own, one member per environment, each carrying that environment's values. `runEnvironments` builds one Stack per member, and `terradart apply --env <name>` runs one of them and writes that environment's [define file](/docs/client-outputs/) for the client. Nothing is configured in `pubspec.yaml`.

## Declare the environments

Any members, any fields. The Stack takes one member and derives everything from it — the project, the sizes, and where its state lives, so one environment can keep a local state file while another uses a GCS bucket:

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

`runEnvironments` takes the members and builds the Stack for the one the command names:

```dart
// bin/infra.dart
import 'package:my_app/app_stack.dart';
import 'package:my_app/env.dart';
import 'package:terradart_core/terradart_core.dart';

Future<void> main(List<String> args) =>
    runEnvironments(args, Env.values, (env) => AppStack(env: env));
```

## Run one environment

`--env <name>` takes a member's name. `plan`, `apply`, `destroy` and `outputs` need it; `terradart synth` without it writes every environment.

```bash
terradart plan --env stg
terradart apply --env stg
```

The names are the enum's, not a fixed set: `qa`, `sandbox`, `euWest` work the same. A name that is not a member stops before anything runs, listing the ones that are:

```text
$ terradart plan --env staging
> dart run bin/infra.dart --env staging
infra: unknown environment "staging"; known envs: dev, stg, prod.
terradart: synth failed: bin/infra.dart exited 64.
```

## Build each client with its environment

Each environment gets its own Terraform directory and its own define file, named after it. After `apply`, `terradart` writes the define file and prints the line that builds the client with it:

| Command | Terraform directory | Define file | Client build |
|---|---|---|---|
| `terradart apply --env dev` | `tf-out/dev` | `.terradart/dart_defines.dev.json` | `flutter run --dart-define-from-file=.terradart/dart_defines.dev.json` |
| `terradart apply --env stg` | `tf-out/stg` | `.terradart/dart_defines.stg.json` | `flutter build web --dart-define-from-file=.terradart/dart_defines.stg.json` |
| `terradart apply --env prod` | `tf-out/prod` | `.terradart/dart_defines.prod.json` | `flutter build ipa --dart-define-from-file=.terradart/dart_defines.prod.json` |

A client's build job does not apply anything: `terradart outputs --env prod` writes the same file from the applied state, and the build compiles it in.

```bash
terradart outputs --env prod
flutter build web --dart-define-from-file=.terradart/dart_defines.prod.json
```

The app reads every value with its type through the generated `<Stack>Outputs` reader, whichever environment it was built for. [Outputs in client apps](/docs/client-outputs/) covers the reader, the values a define file may carry, and why a secret never goes in one.

## One directory, one backend, several states

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

## Migrated environments

`terradart migrate --merge-envs` writes an `Env` enum whose members carry the directory each environment came from (`path`), and a `bin/infra.dart` that calls `runEnvironments` with `dir: (env) => 'tf-out/${env.path}'`. `terradart plan --env prodEu` plans the matching environment. A single-module migration calls `runStack` instead, so `terradart plan` with no `--env` is enough. See [Migrating from HCL](/docs/migrate-from-hcl/).
