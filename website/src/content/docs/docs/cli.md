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
terradart init
```

To pin the version per project, so everyone on it runs the same one, add it as a dev dependency of the infrastructure package instead:

```bash
dart pub add --dev terradart_cli
dart run terradart_cli:terradart apply
```

## Commands

| Command | Runs |
|---|---|
| `terradart init [dir]` | writes a new project (default `infra/`) and runs `dart pub get` in it; no project is required |
| `terradart synth` | the entry point (`dart run bin/infra.dart`); arguments after `--` go to it |
| `terradart validate` | synth, `init -backend=false`, `validate`: checks the configuration without credentials, a backend or state — the step for CI; arguments after `--` go to `validate` (`-- -json`) |
| `terradart plan` | synth, `init`, `plan`; arguments after `--` go to the engine (`-- -target=...`); `--detailed-exitcode` exits 2 when the plan has changes |
| `terradart apply` | synth, `init`, `apply`, then writes the define file; `--auto-approve` skips the prompt |
| `terradart destroy` | synth, `init`, `destroy`; `--auto-approve` skips the prompt |
| `terradart outputs` | synth, `init`, then writes the define file from the applied state — no plan, no apply |
| `terradart state migrate` | synth, then `init -migrate-state`: moves the state to the backend the Stack now configures, after asking (`--auto-approve` skips the question, and is required when it cannot ask: no terminal, `--no-input`, CI or an agent) |
| `terradart engine` | prints the engine binary it would run, downloading OpenTofu if that is the one |
| `terradart migrate` | turns a Terraform tree into a Dart package. No project is required — it does not look for a `pubspec.yaml` |
| `terradart skill install` / `update` / `status` | writes, updates and checks the [agent skill](#the-agent-skill) this CLI bundles |

`--no-synth` reuses what the last synth wrote, `--project <dir>` (`-C`) runs against another package, and `--engine tofu|terraform` or `--engine-path <file>` picks the engine for one run. `--json` prints one result object on stdout, and every exit code means one thing: [JSON and exit codes](#json-and-exit-codes).

## Creating a project

`terradart init` writes a project that plans as it is — `pubspec.yaml`, an `Env` enum in `lib/env.dart`, a Stack with one resource and one output in `lib/stack.dart`, `bin/infra.dart`, a `.gitignore`, a `README.md` and an `AGENTS.md`, and with `--agent-skill` the [agent skill](#the-agent-skill) — then runs `dart pub get` in it (`--no-pub-get` skips that):

```bash
terradart init --provider google --env dev,prd --gcp-project dev=myapp-dev,prd=myapp-prd --state-bucket myapp-tfstate
terradart init --provider aws --env dev,stg,prd --aws-region prd=eu-west-1 --aws-account prd=123456789012 --backend local
terradart init --provider cloudflare --defaults --cloudflare-account 0123abcd --agent-skill
terradart init --dry-run --provider appwrite --defaults # lists the files, writes nothing
```

| Flag | Takes | Default |
|---|---|---|
| `--provider`, `-p` | `google`, `aws`, `cloudflare`, `appwrite`, comma-separated or repeated | required without a terminal |
| `--env`, `-e` | lowerCamelCase environment names, comma-separated or repeated | required without a terminal; `--defaults`: `dev,prd` |
| `--gcp-project`, `--aws-region`, `--cloudflare-account`, `--appwrite-endpoint`, `--appwrite-project` | `<env>=<value>` pairs, or one value for every environment | a placeholder marked `TODO` |
| `--aws-account` | the same; the provider then refuses credentials of another account | any account |
| `--state-bucket` | the bucket that already holds the state, one name or `<env>=<name>` pairs; the backend follows the provider — google `gcs`, aws `s3`, cloudflare `r2` | |
| `--backend` | `local`, `gcs`, `s3`, `r2` (Cloudflare R2, with `--provider cloudflare`) | required without a terminal unless `--state-bucket`; `--defaults`: `local` |
| `--defaults` | take `--env dev,prd`, `--backend local`, placeholder IDs and the Flutter wiring for what the flags leave out; never the providers | |
| `--[no-]flutter` | wiring to the Flutter app in the current directory | on when there is one |
| `--[no-]agent-skill` | write the agent skill this CLI bundles into the project | asked in a terminal (yes); off without one or with `--defaults` |
| `--agents` | where `--agent-skill` writes it: `agents`, `claude`, `cursor`, `windsurf`, `copilot`, `all`; implies `--agent-skill` | `agents,claude` |
| `--dry-run` | list the files, write nothing | |
| `--force` | overwrite existing files, scaffold next to existing Terraform | |

In a terminal, every flag left out is a question: the providers, the environments, each environment's IDs (a blank answer leaves a placeholder marked `TODO`), then *Do you already have a bucket for Terraform state?* — yes asks for its name, one for every environment or one each, and takes the kind from the provider (asking when the providers do not settle it); no keeps the state local — and last whether to install the agent skill. Without the skill, `AGENTS.md` says how to add it: `terradart skill install`, or the pinned `npx skills add` line. The run ends with `Re-run with: terradart init ...`, the same answers as flags.

Without a terminal it never asks, and never picks the providers, the environments or the state backend for you: a run that leaves out any of `--provider`, `--env` and `--backend` (or `--state-bucket`) fails with exit 64, names every missing flag, and prints a command to edit. `--defaults` accepts `dev,prd` and local state; the IDs it leaves out become placeholders, and the defaults it took are printed. A bucket's state sits under `<package>/<env>`, so one bucket serves every environment. Local state moves to a bucket later with `terradart state migrate`; `terradart init` only scaffolds.

Inside a Flutter app (a `pubspec.yaml` that depends on `flutter` in the current directory), the Stack's `appExports` writes the reader the app imports to the app's `lib/generated/infra.g.dart`, the Stack declares `addDartDefineOutput()`, and the steps printed end with `flutter run --dart-define-from-file=infra/.terradart/dart_defines.<env>.json`.

A working or target directory holding `*.tf` or `*.tf.json` files, at any depth, gets no scaffold: `terradart init` names the directories that hold them (`Found Terraform in envs/dev, modules/net.`), prints the `terradart migrate --report` and `terradart migrate` commands for it and exits 64 — in a terminal it offers to run the report first. `--force` scaffolds anyway.

Picking `appwrite` writes `terradart: engine: terraform` into `pubspec.yaml`: an Appwrite project plans and applies with Terraform on your `PATH` ([The engine](#the-engine)).

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

With an entry point that calls `runEnvironments`, `validate`, `plan`, `apply`, `destroy` and `outputs` run against one member of the project's environment enum: the one `--env <name>` (`-e`) names, else the `TERRADART_ENV` environment variable, else the `defaultEnv` the entry point gives `runEnvironments`, else the only member; with none of these the command asks on a terminal, and otherwise stops with the names and the command to run. When `TERRADART_ENV` or `defaultEnv` chose it, `apply` and `destroy` ask first on a terminal unless `--auto-approve` is set. `terradart synth` without `--env` writes every environment. Each environment gets its own Terraform directory (`tf-out/<name>` unless `runEnvironments` says otherwise) and define file (`.terradart/dart_defines.<name>.json`), and a name that is not a member stops before anything runs. `--workspace` and `--backend-config` override and extend, for one run, the workspace and backend settings `runEnvironments` gives an environment.

How to declare the enum, keep each environment's state apart, and build each client with its define file: [Environments](/docs/environments/).

## Terminals, CI and agents

`terradart` asks a question only on a terminal (stdin and stdout both one), and never with `--no-input`, `TERRADART_NO_INPUT=1`, `CI` set, or in an AI agent's shell (`AI_AGENT`, `CURSOR_AGENT`, `CLAUDECODE`, `GEMINI_CLI`, `CODEX_SANDBOX`, `CODEX_THREAD_ID`, `OPENCODE`). Where it would ask, it uses the flag instead or stops and names it:

| Question on a terminal | Without one |
|---|---|
| Which environment, when `--env`, `TERRADART_ENV`, `defaultEnv` and a single member leave it open | exit code 64, the names, and `Next: terradart plan --env <first>` |
| `apply` / `destroy` approval, and `Apply environment "dev" (default)?` | exit code 3 before `init` unless `--auto-approve` |
| `state migrate` copying the state | exit code 3 unless `--auto-approve` |
| running one engine on a state the other wrote | exit code 3; `--engine tofu\|terraform` decides |

An error a flag would fix prints the flag's choices and the command to run next:

```text
terradart: --env is required: bin/infra.dart declares dev, stg, prd and no defaultEnv. Pass --env, set TERRADART_ENV, or give runEnvironments a defaultEnv.
  Choices: dev, stg, prd
  Next: terradart plan --env dev
```

The engine gets `-input=false` whenever nobody can answer. `--quiet` (`-q`) leaves out the values terradart picks by itself (`env: dev (default)`, `Using OpenTofu ...`); errors and warnings still print.

## JSON and exit codes

`--json` prints one JSON object on stdout when the command ends — and nothing else there: progress, `--help`, the entry point's and the engine's output go to stderr. It implies `--no-input`, and it goes before or after the command (`terradart --json plan`, `terradart plan --json`). `terradart migrate` is the exception: its `--json`, before or after `migrate`, is the migrator's own report (`terradart migrate --report --json`).

```bash
terradart plan --env dev --json --detailed-exitcode
```

```json
{
  "schemaVersion": 1,
  "command": "plan",
  "ok": true,
  "exitCode": 2,
  "env": {"name": "dev", "source": "flag"},
  "engine": {"kind": "tofu", "version": "1.13.1", "source": "path", "path": "/usr/local/bin/tofu"},
  "outDir": "tf-out/dev",
  "plan": {"add": 3, "change": 0, "destroy": 0, "replace": 0},
  "notices": [],
  "next": ["terradart apply --env dev"]
}
```

| Field | Holds |
|---|---|
| `schemaVersion` | `1`; raised only for a change that breaks a reader |
| `command`, `ok`, `exitCode` | the command path (`state migrate`), whether it succeeded, and the exit code |
| `env` | the environment and why: `flag`, `variable` (`TERRADART_ENV`), `default`, `only`, `prompt` |
| `engine` | `kind` (`tofu`, `terraform`), `version`, `path`, and why: `engine_path`, `setting` (`--engine` or `pubspec.yaml`), `state` (the engine that last applied it), `path`, `managed` (the OpenTofu download) |
| `outDir` | the Terraform directory |
| `plan` | `plan`: the resource changes of the saved plan as `show -json` lists them; a replacement counts once, as `replace` |
| `defineFile`, `keys` | `apply`, `outputs`: the define file and its keys — never the values, which may be secrets |
| `error` | on failure: `code` from the table, `message`, and when they apply `flag`, `choices`, `engineExitCode` |
| `next` | the commands to run next: the failed one with the flag it lacks, or `terradart apply` after a plan with changes |

| Exit code | `error.code` | Means |
|---|---|---|
| 0 | | success |
| 1 | `internal` | anything else: a bug, a cancelled question, a malformed engine output |
| 2 | | `plan --detailed-exitcode` found changes — not a failure, `ok` is `true` |
| 3 | `input_required` | an answer nobody can give: `--auto-approve`, or `--engine` on a state the other engine wrote |
| 10 | `synth_failed` | the entry point exited non-zero |
| 11 | `engine_unavailable` | no engine: not on `PATH`, a missing `engine_path`, or the OpenTofu download or its SHA-256 check failed |
| 12 | `engine_failed` | `init`, `plan`, `apply`, `validate`, `output` ... failed; `error.engineExitCode` is the engine's own code |
| 64 | `usage` / `missing_flag` | a wrong flag or argument, or a required one is missing (`--env`, `--force`) |
| 65 | `project_config` | the `terradart:` section of `pubspec.yaml` is wrong, an `--env` the entry point does not declare, a Terraform directory or dart-define output that is not there |
| 66 | `no_project` | no `pubspec.yaml` in the directory or above it |

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

Appwrite currently needs Terraform. The `appwrite/appwrite` provider is published to the Terraform registry only, which OpenTofu cannot install from, so a Stack that requires it runs on `terraform` from `PATH` whatever steps 2–5 would pick. When there is none, or `--engine tofu`, `engine: tofu` or a `tofu` `engine_path` asks for OpenTofu, `plan`, `apply`, `destroy` and `outputs` stop before `init` with a message that says so. Install [Terraform](https://developer.hashicorp.com/terraform/install) and run with `--engine terraform`, or set `engine: terraform` in `pubspec.yaml`.

State written by one engine is not always readable by another: Terraform 1.6 and later and OpenTofu have diverged. When the engine about to run differs from the one that last applied the state, or is older, `terradart` warns before it runs.

Without that record — right after a migration, or in a fresh clone, since `.terradart/` is not committed — `plan`, `apply` and `destroy` read the state itself: the local state file before `init`, and a remote backend's state (`state pull`) after it. Its provider addresses say which engine wrote it (`registry.terraform.io` or `registry.opentofu.org`), as does a `terraform_version` older than OpenTofu. When the other engine wrote it, `terradart` warns; and when it picked the engine by itself (step 3 to 5), it asks before running on a terminal, and without one stops with the flag that decides:

```text
terradart: Stopped before running OpenTofu on a state Terraform wrote. Pass --engine terraform to keep Terraform (or set terradart.engine: terraform in pubspec.yaml), or --engine tofu to move the state to OpenTofu.
```

`terradart migrate` writes `engine: terraform` into the package it generates, so a migrated project keeps the engine its state came from.

## The agent skill

`terradart_cli` bundles the [TerraDart Agent Skill](/docs/start/ai-agent/) of its own release, so a coding agent learns the CLI it runs and not the one on `main`. `terradart skill install` writes it to the project (the directory holding `pubspec.yaml`, or `--project <dir>`):

```text
.agents/skills/terradart/SKILL.md   Cursor, Codex, Gemini CLI, GitHub Copilot and most other agents
.claude/skills/terradart/SKILL.md   Claude Code, which does not read .agents/skills
```

`--agents` picks other directories, comma-separated: `agents`, `claude`, `cursor` (`.cursor/skills`), `windsurf` (`.windsurf/skills`), `copilot` (`.github/skills`), or `all`. The files are copies, not symlinks; commit them with the project.

Each copy records, under `metadata:` in its front matter, the CLI version that wrote it and the SHA-256 of its content (leaving those two lines out):

```yaml
metadata:
  terradart-version: "0.34.0"
  terradart-sha256: "<sha256>"
```

| Command | Does |
|---|---|
| `terradart skill status` | shows each copy: `current`, `marker-only` (same content, older version), `outdated`, `newer` (written by a newer CLI), `edited`, `missing`, or `foreign` (no marker) |
| `terradart skill status --check` | exits 4 when a copy is missing, outdated, newer, edited or foreign — for CI |
| `terradart skill update` | rewrites every installed copy with the bundled one. A copy that is edited, foreign or newer is left alone (exit 5) unless `--force` |
| `terradart skill update --dry-run` | prints the diff and writes nothing (`install` takes it too) |

When a copy in the project is older than the CLI, every other command prints one line on stderr (`TERRADART_NO_SKILL_NOTICE=1` turns it off):

```text
terradart: the terradart agent skill in .agents/skills is 0.33.0; this CLI is 0.34.0. Run: terradart skill update
```

Without the CLI, the [`skills` CLI](https://github.com/vercel-labs/skills) installs the same file. Pin it to the release tag, since it fetches `main` otherwise:

```bash
npx skills add nozomi-koborinai/terradart#v0.34.0 --skill terradart
```

It is byte for byte the file `terradart skill install` writes, so `terradart skill status` reads it too, and points at `npx skills update terradart -p -y` when `skills-lock.json` records it.

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
