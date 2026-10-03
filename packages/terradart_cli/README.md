# terradart_cli

The `terradart` command for [TerraDart](https://terradart.dev) projects: synthesize the Stack, run `init` and `plan` or `apply` with OpenTofu or Terraform, and write the define file a Flutter or Dart client builds with.

```bash
dart pub global activate terradart_cli
terradart init            # writes infra/ and runs dart pub get
cd infra
terradart plan --env dev
```

To pin the version per project, `dart pub add --dev terradart_cli` and run it as `dart run terradart_cli:terradart apply`.

| Command | Runs |
|---|---|
| `terradart init [dir]` | writes a new project (default `infra/`): `pubspec.yaml`, an `Env` enum, a Stack, `bin/infra.dart`, `README.md`, `AGENTS.md`; then `dart pub get` |
| `terradart synth` | the entry point, `dart run bin/infra.dart` |
| `terradart validate` | synth, `init -backend=false`, `validate` — no credentials or state needed |
| `terradart plan` | synth, `init`, `plan` |
| `terradart apply` | synth, `init`, `apply`, then writes `.terradart/dart_defines.json` |
| `terradart destroy` | synth, `init`, `destroy` |
| `terradart outputs` | synth, `init`, then writes the define file from the applied state |
| `terradart state migrate` | synth, then `init -migrate-state`: moves the state to the backend the Stack configures |
| `terradart engine` | prints the engine binary it runs |
| `terradart migrate` | turns a Terraform tree into a Dart package; no project required |

It runs the `tofu`, else the `terraform`, on your `PATH`. With neither, it downloads the OpenTofu release it pins, checks the archive's SHA-256, and keeps the binary in your user cache — on Linux, macOS and Windows, amd64 and arm64. Before it runs one engine on a state the other wrote, it asks — or, without a terminal, stops and names the `--engine` flag that decides. A Stack that uses Appwrite runs on the `terraform` on your `PATH` instead: the `appwrite/appwrite` provider is published to the Terraform registry only, which OpenTofu cannot install from, so without Terraform (or with `--engine tofu`) the command stops before `init` and says so.

In CI or an AI agent's shell it never asks: `apply` and `destroy` need `--auto-approve` (exit code 3 otherwise), a missing `--env` stops with the names, and every such error ends with the command to run next. `--no-input` does the same on a terminal.

## A new project

`terradart init` asks, in a terminal, for the providers, the environment names, each environment's IDs (GCP project, AWS region and account, Cloudflare account, Appwrite endpoint and project) and whether a bucket for the state already exists, and prints the flags that give the same answers. Without a terminal it never asks and never chooses for you: `--provider`, `--env` and `--backend` (or `--state-bucket`) are required, and `--defaults` accepts `dev,prd` and local state. IDs left out become placeholders marked `TODO`:

```bash
terradart init --provider google --env dev,prd --gcp-project dev=myapp-dev,prd=myapp-prd --state-bucket myapp-tfstate
terradart init --provider aws --defaults --aws-region eu-west-1
terradart init --dry-run --provider cloudflare --defaults   # list the files, write nothing
```

Inside a Flutter app it wires `infra/` to the app: the generated reader goes to the app's `lib/generated/`, and `flutter run --dart-define-from-file=infra/.terradart/dart_defines.dev.json` builds with the outputs. A directory that already holds Terraform, at any depth, is pointed at `terradart migrate` instead.

## Environments

Environments are a Dart enum, any names, each member carrying its values; `bin/infra.dart` hands the members to `runEnvironments` of `terradart_core`:

```dart
// lib/env.dart
enum Env {
  qa(projectId: 'acme-qa'),
  sandbox(projectId: 'acme-sandbox'),
  prd(projectId: 'acme-prd');

  const Env({required this.projectId});

  final String projectId;
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
        backend: env == Env.prd
            ? const GcsBackend(bucket: 'acme-prd-tfstate', prefix: 'app')
            : LocalBackend(path: 'state/${env.name}.tfstate'),
      ) {
    addOutput('project', .literal(env.projectId));
    addDartDefineOutput();
  }
}
```

```dart
// bin/infra.dart
import 'package:my_app/app_stack.dart';
import 'package:my_app/env.dart';
import 'package:terradart_core/terradart_core.dart';

Future<void> main(List<String> args) =>
    runEnvironments(args, Env.values, (env) => AppStack(env: env));
```

`terradart apply --env sandbox` synthesizes `tf-out/sandbox`, applies it, and writes `.terradart/dart_defines.sandbox.json`; a name that is not a member lists the ones that are. Without `--env`, `validate`, `plan`, `apply`, `destroy` and `outputs` take the `TERRADART_ENV` environment variable, else the `defaultEnv` given to `runEnvironments` (`defaultEnv: Env.qa`), else the only member, and prints which one and why (`env: qa (default)`). `apply` and `destroy` ask before running against an environment `TERRADART_ENV` or `defaultEnv` chose; `--auto-approve` skips the question. `runEnvironments` also takes a `workspace` or a partial `backendConfig` per environment, for environments that share one directory.

Guides: [The terradart command](https://terradart.dev/docs/cli/), [Environments](https://terradart.dev/docs/environments/), [Outputs in client apps](https://terradart.dev/docs/client-outputs/).
