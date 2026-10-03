---
title: Start from an existing Flutter app
description: Add an infra/ package to a Flutter app with terradart init, apply it with the terradart command, and build the app with the outputs, typed, through dart-define.
---

Your Flutter app needs values that exist only after an apply: a topic ID, an API URL, a bucket. Here they reach the app typed, through a reader class TerraDart generates and the `--dart-define-from-file` flag Flutter already has. Dart and Flutter are all you install; the `terradart` command downloads a checksum-verified OpenTofu the first time it needs an engine.

The steps use Google Cloud, with two projects: one for `dev`, one for `prd`.

## The layout

The infrastructure is a Dart package of its own, `infra/`, inside the app:

```text
my_app/
├── pubspec.yaml               the Flutter app
├── lib/
│   ├── main.dart
│   └── generated/infra.g.dart  written by terradart synth: the typed reader
└── infra/
    ├── pubspec.yaml           terradart_core and the provider packages
    ├── lib/env.dart           dev and prd, and their values
    ├── lib/stack.dart         the Stack
    ├── bin/infra.dart         the entry point the terradart command runs
    └── .terradart/            dart_defines.<env>.json, written by terradart apply
```

It is a package of its own because it runs on the Dart VM (`dart run`, through the `terradart` command), where the app needs the Flutter SDK, and so the TerraDart packages never enter the app's dependencies or its binary. The two meet at one generated file: the Stack writes `lib/generated/infra.g.dart` into the app, and the app imports it.

## 1. Install the command

```bash
dart pub global activate terradart_cli
terradart --help
```

`terradart` lands in `~/.pub-cache/bin`. If the second line is not found, add that directory to your `PATH`, as `dart pub global activate` says.

## 2. Create `infra/`

From the app's directory, the one with its `pubspec.yaml`:

```bash
terradart init --provider google --env dev,prd --gcp-project dev=my-app-dev,prd=my-app-prd --backend local
```

Use your own project IDs. `terradart init` sees the Flutter app (a `pubspec.yaml` that depends on `flutter`) and wires `infra/` to it:

```text
Created my_app_infra in infra (google; environments dev, prd; local state; wired to the Flutter app):
  pubspec.yaml
  lib/env.dart
  lib/stack.dart
  bin/infra.dart
  .gitignore
  README.md
  AGENTS.md
Defaults: --flutter.
Synth writes lib/generated/infra.g.dart for the app to read the Stack's outputs.
> dart pub get
...

Next:
  cd infra
  terradart apply --env dev
  cd ..
  flutter run --dart-define-from-file=infra/.terradart/dart_defines.dev.json
```

In a terminal, `terradart init` without flags asks for each of them instead, and asks before it wires the app. `--no-flutter` leaves the app alone. Every flag is in [The terradart command](/docs/cli/#creating-a-project).

## 3. Read the Stack

```dart
// infra/lib/env.dart
/// The environments of the Stack: `terradart plan --env <name>`
/// picks one. Replace each placeholder marked TODO.
enum Env {
  dev(projectId: 'my-app-dev', region: 'us-central1'),
  prd(projectId: 'my-app-prd', region: 'us-central1');

  const Env({required this.projectId, required this.region});

  /// The Google Cloud project the Stack deploys to.
  final String projectId;

  /// The default Google Cloud region.
  final String region;
}
```

Two lines connect the Stack to the app. `appExports` writes the reader into the app's `lib/generated/`, and `addDartDefineOutput()` declares the define file — every non-sensitive output, as the strings `--dart-define-from-file` reads:

```dart
// infra/lib/stack.dart
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/pubsub.dart';
import 'package:terradart_time/terradart_time.dart';

import 'env.dart';

/// The infrastructure of one environment. Replace the example resources
/// with your own.
final class MyAppInfraStack extends Stack {
  MyAppInfraStack({required Env env})
    : super(
        providers: [
          GoogleProvider(project: env.projectId, region: env.region),
          const TimeProvider(),
        ],
        backend: const LocalBackend(),
        appExports: AppExports('../lib/generated/infra.g.dart'),
      ) {
    // Enables the Pub/Sub API on the project and waits for it to propagate.
    final apis = enableApis([.pubsub]);
    final topic = add(
      GooglePubsubTopic(
        'events',
        name: .literal('${env.name}-events'),
        dependsOn: apis,
      ),
    );
    addOutput('events_topic_id', topic.id);

    // The outputs above, as the file `terradart apply --env <name>` writes
    // for `flutter run --dart-define-from-file`.
    addDartDefineOutput();
  }
}
```

Each `addOutput` becomes a typed getter of `MyAppInfraStackOutputs`; the `events_topic_id` output is `eventsTopicId`. Add the resources your app uses — a Cloud Run service, a bucket, Firebase — and an output for each value the app reads. Every resource of the provider has a factory, listed in [Coverage](/docs/coverage/google/).

To run without `--env`, give `runEnvironments` in `infra/bin/infra.dart` a default — `defaultEnv: Env.dev` after the builder, as in [Start from an empty directory](/docs/start/new-project/#4-pick-the-default-environment). The commands below name the environment, which works either way.

## 4. Synth and validate

```bash
cd infra
terradart synth
terradart validate --env dev
```

`terradart synth` writes `tf-out/dev/` and `tf-out/prd/`, and the reader, `../lib/generated/infra.g.dart`. `terradart validate` checks the configuration without credentials or state; the first time, it downloads OpenTofu into your user cache:

```text
env: dev (--env)
Using OpenTofu 1.13.1 (no tofu or terraform on PATH; managed OpenTofu 1.13.1)
> tofu init -backend=false -input=false  (in tf-out/dev)
...
> tofu validate  (in tf-out/dev)
Success! The configuration is valid.
```

## 5. Plan and apply

Sign in as an account that can create resources in the project, then plan and apply `dev`:

```bash
gcloud auth application-default login
terradart plan --env dev
terradart apply --env dev
```

The apply shows the plan and asks before it changes anything. Then it writes the outputs to the define file and prints the lines that build with it:

```text
Wrote 1 dart-defines to .terradart/dart_defines.dev.json
  flutter run --dart-define-from-file=.terradart/dart_defines.dev.json
  flutter build <target> --dart-define-from-file=.terradart/dart_defines.dev.json
```

Those paths are relative to `infra/`; from the app, the file is `infra/.terradart/dart_defines.dev.json`.

## 6. Read the outputs in the app

The reader's `fromDartDefine` constructor reads the values compiled into the app, so it is a constant:

<!-- doc-snippets: skip: needs the Flutter SDK, and the reader terradart synth writes into the app -->
```dart
// lib/main.dart
import 'package:flutter/material.dart';

import 'generated/infra.g.dart';

const infra = MyAppInfraStackOutputs.fromDartDefine();

void main() => runApp(
  MaterialApp(
    home: Scaffold(body: Center(child: Text('Events: ${infra.eventsTopicId}'))),
  ),
);
```

Run it with the define file of `dev`:

```bash
cd ..
flutter run --dart-define-from-file=infra/.terradart/dart_defines.dev.json
```

A build without the file fails at the first getter it reads, with a `StateError` that names the variable and the output. Rename the output in the Stack and the getter changes on the next synth, so `flutter analyze` finds every place the app read it.

## 7. Production, and builds in CI

Apply `prd` the same way, and build the release with its file:

```bash
cd infra
terradart apply --env prd
cd ..
flutter build web --dart-define-from-file=infra/.terradart/dart_defines.prd.json
```

A build job should read the applied state, not change it. `terradart outputs` synthesizes — which also writes the reader — then writes the define file from the state alone, with no plan and no apply:

```bash
cd infra
terradart outputs --env prd
cd ..
flutter build apk --dart-define-from-file=infra/.terradart/dart_defines.prd.json
```

For that job to see the state, it has to live in a bucket rather than in `infra/tf-out/` on your machine: create one, set the Stack's `backend:` to `GcsBackend(bucket: 'my-app-tfstate', prefix: 'my_app_infra/${env.name}')`, and run `terradart state migrate --env dev` and `terradart state migrate --env prd` once, from `infra/`. Each asks before it copies the state.

Only public values belong in a client: anything compiled into an app can be read by whoever has it. The define file leaves sensitive outputs out, and secrets stay on a server — see [Outputs in client apps](/docs/client-outputs/#secrets-stay-out).

## Next

- [Outputs in client apps](/docs/client-outputs/) — one define file per client, the `dart` command, servers and scripts
- [Environments](/docs/environments/) — each environment's own project, state and define file
- [Appwrite](/docs/providers/appwrite/) and [Google Cloud with Firebase](/docs/providers/google/) — backends for a Flutter app
- [Let an AI agent do it](/docs/start/ai-agent/) — the `AGENTS.md` `infra/` came with, and the Agent Skill
