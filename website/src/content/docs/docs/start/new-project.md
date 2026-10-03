---
title: Start from an empty directory
description: Create a TerraDart project with terradart init, then validate, plan and apply it with the terradart command — Dart is the only thing to install.
---

From an empty directory to applied infrastructure, with nothing to install but the Dart SDK. The `terradart` command writes the project, checks it, and runs the plan and the apply; it downloads a checksum-verified OpenTofu the first time it needs an engine.

You need:

- the Dart SDK, 3.10 or later;
- credentials for your provider when you plan and apply — not before. The steps use Google Cloud and two projects, one per environment; [other providers](#other-providers) take a different flag at step 2.

## 1. Install the command

```bash
dart pub global activate terradart_cli
terradart --help
```

`terradart` lands in `~/.pub-cache/bin`. If the second line is not found, add that directory to your `PATH`, as `dart pub global activate` says.

## 2. Create the project

```bash
terradart init my_app --provider google --env dev,prd --gcp-project dev=my-app-dev,prd=my-app-prd --backend local
cd my_app
```

Use your own project IDs. `terradart init` writes `my_app/`, runs `dart pub get` in it, and prints what to run next:

```text
Created my_app in my_app (google; environments dev, prd; local state):
  pubspec.yaml
  lib/env.dart
  lib/stack.dart
  bin/infra.dart
  .gitignore
  README.md
  AGENTS.md
> dart pub get
...

Next:
  cd my_app
  terradart plan --env dev
```

Run in a terminal without the flags, `terradart init my_app` asks for each of them — the providers, the environment names, each environment's project, whether a bucket for the state already exists — and ends with the `terradart init ...` line that gives the same answers. Without a terminal it never asks and never chooses for you: `--provider`, `--env` and `--backend` (or `--state-bucket`) are required. An ID you leave out becomes a placeholder marked `TODO` in `lib/env.dart`. Every flag is in [The terradart command](/docs/cli/#creating-a-project).

| File | Holds |
|---|---|
| `lib/env.dart` | the `Env` enum: each environment and its values |
| `lib/stack.dart` | the Stack: the provider, the state backend, one resource and one output |
| `bin/infra.dart` | the entry point the `terradart` command runs |
| `README.md`, `AGENTS.md` | the next steps, and the rules a coding agent follows here |
| `.gitignore` | `tf-out/` and `.terradart/`, which the command writes |

## 3. Read the Stack

The environments are a Dart enum, and each member carries its values:

```dart
// lib/env.dart
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

The Stack is the infrastructure of one environment. It enables the API its resource needs first — a new Google Cloud project has every API off, and the apply would fail with a 403 without `enableApis` — then adds a Pub/Sub topic and an output:

```dart
// lib/stack.dart
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/pubsub.dart';
import 'package:terradart_time/terradart_time.dart';

import 'env.dart';

/// The infrastructure of one environment. Replace the example resources
/// with your own.
final class MyAppStack extends Stack {
  MyAppStack({required Env env})
    : super(
        providers: [
          GoogleProvider(project: env.projectId, region: env.region),
          const TimeProvider(),
        ],
        backend: const LocalBackend(),
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
  }
}
```

Replace the topic with your own resources as you go: every resource of the provider has a factory, listed in [Coverage](/docs/coverage/google/), and [Writing arguments](/docs/arguments/) says which form each argument takes.

## 4. The default environment

`bin/infra.dart` hands the environments to `runEnvironments`, with the first one as `defaultEnv`, so that a command without `--env` runs against `dev`:

```dart
// bin/infra.dart
import 'package:my_app/env.dart';
import 'package:my_app/stack.dart';
import 'package:terradart_core/terradart_core.dart';

/// Writes `tf-out/<env>/main.tf.json` for each environment, or the one
/// `--env` names. `terradart plan`, `apply` and `destroy` run it first.
/// `dev` is the environment those commands use when neither
/// `--env` nor `TERRADART_ENV` names one.
Future<void> main(List<String> args) => runEnvironments(
  args,
  Env.values,
  (env) => MyAppStack(env: env),
  defaultEnv: Env.dev,
);
```

A command now runs against the first of: `--env <name>`, the `TERRADART_ENV` environment variable, `defaultEnv`, or the only environment when there is one. It prints which one and why, `env: dev (default)`. Delete the `defaultEnv` line to make every command name its environment. More in [Environments](/docs/environments/#run-one-environment).

## 5. Synth

```bash
terradart synth
```

```text
> dart run bin/infra.dart
synthesized tf-out/dev/main.tf.json (dev)
synthesized tf-out/prd/main.tf.json (prd)
```

Synth is plain Dart: it needs no credentials and no engine. A Stack that would not make valid Terraform — a reference to a resource it never added, a secret written as a literal — fails here, with every issue at once.

## 6. Validate

```bash
terradart validate
```

```text
env: dev (default)
Downloading OpenTofu 1.13.1 (linux_amd64) from https://github.com/opentofu/opentofu/releases/download/...
Installed OpenTofu 1.13.1 at ~/.cache/terradart/opentofu/1.13.1/linux_amd64/tofu
Using OpenTofu 1.13.1 (no tofu or terraform on PATH; managed OpenTofu 1.13.1)
> tofu init -backend=false -input=false  (in tf-out/dev)
...
> tofu validate  (in tf-out/dev)
Success! The configuration is valid.
```

`terradart validate` installs the providers and checks the configuration without credentials, a backend or state, so it is also the check for CI. The first command that needs an engine downloads OpenTofu once and keeps it in your user cache; a `tofu` or `terraform` already on your `PATH` is used instead.

## 7. Plan

Sign in to Google Cloud as an account that can create resources in the project, then plan:

```bash
gcloud auth application-default login
terradart plan
```

`terradart plan` synthesizes, runs `init` and `plan` in `tf-out/dev`, and shows what the apply will create: the Pub/Sub API, a wait for it to propagate, and the `dev-events` topic.

## 8. Apply

```bash
terradart apply
```

`defaultEnv` chose the environment, so the command first asks which one you mean:

```text
env: dev (default)
Apply environment "dev" (default)? Only "yes" is accepted:
```

Then the engine shows the plan and asks again. After the apply, the command writes the outputs to `.terradart/dart_defines.dev.json` for an app to build with ([step 10](#10-hand-the-outputs-to-an-app)).

`--env prd` (or `TERRADART_ENV=prd`) applies the other environment. Name the environment with `--env` in CI: without a terminal to answer the question, an apply that `defaultEnv` chose stops before it changes anything, unless `--auto-approve` is given.

```bash
terradart apply --env prd
```

## 9. Move the state to a bucket

The state is a local file, `tf-out/<env>/terraform.tfstate`, kept out of git. Before anyone else applies, keep it in a bucket: create one, set the Stack's `backend:` to `GcsBackend(bucket: 'my-app-tfstate', prefix: 'my_app/${env.name}')`, and move each environment's state once:

```bash
terradart state migrate --env dev
terradart state migrate --env prd
```

Each run synthesizes, names the backend the state moves from and to, asks, and runs the engine's `init -migrate-state` in that environment's directory. Without a terminal, pass `--auto-approve`.

## 10. Hand the outputs to an app

The Stack's outputs reach your app typed, from a file the Stack generates:

- a Flutter or web client builds with the define file `terradart apply` writes — [Start from an existing Flutter app](/docs/start/flutter-app/) walks through it;
- a server reads them from its environment, which the Stack sets with `outputEnvironment()` — see [Outputs in client apps](/docs/client-outputs/#servers-and-scripts);
- `terradart outputs --env prd` writes the define file from the applied state, for a build job that may read the state but never apply.

## Other providers

Step 2 takes another `--provider` and its IDs; the steps after it are the same.

| Provider | `terradart init` | Sign in |
|---|---|---|
| AWS | `terradart init my_app --provider aws --env dev,prd --aws-region us-east-1 --backend local` | the AWS SDK credential chain (`AWS_PROFILE`, or the access key variables) |
| Cloudflare | `terradart init my_app --provider cloudflare --env dev,prd --cloudflare-account <account id> --backend local` | `CLOUDFLARE_API_TOKEN` |

`--provider google,aws` puts both in one Stack. An Appwrite project needs one more step today: see [Appwrite](/docs/providers/appwrite/).

## Next

- [Environments](/docs/environments/) — each environment's own project, state and define file
- [The terradart command](/docs/cli/) — every command and flag
- [Let an AI agent do it](/docs/start/ai-agent/) — the `AGENTS.md` this project came with, and the Agent Skill
- [Getting started](/docs/getting-started/) — the same pieces built by hand, one at a time
