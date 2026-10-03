---
title: Let an AI agent do it
description: Have a coding agent write and check TerraDart for you — the TerraDart Agent Skill, terradart init, validate and plan, and the apply you approve.
---

A coding agent can do the whole loop: create the project, write the Stack, check it, and show you the plan. TerraDart's factories are generated Dart in the provider packages, so the agent reads the exact constructor instead of guessing a name, and `terradart validate` checks its work without credentials. You decide the providers, the environments and where the state lives, and you approve every apply.

## 1. Give the agent the skill

The **TerraDart Agent Skill** tells the agent where to look and which commands to run. The `terradart` command bundles the skill of its own release, so the agent learns that CLI and not whatever is on `main`.

In a project that already has a `pubspec.yaml`:

```bash
terradart skill install
```

That writes `.agents/skills/terradart/SKILL.md` (Cursor, Codex, Gemini CLI, GitHub Copilot and most others) and `.claude/skills/terradart/SKILL.md` (Claude Code). Commit both. After upgrading the CLI, `terradart skill update` rewrites them, and leaves a copy you edited alone unless `--force`. A new project gets the same files from `terradart init --agent-skill`.

Without the `terradart` command, use the [`skills` CLI](https://github.com/vercel-labs/skills), pinned to the release tag so the skill matches the release you depend on rather than `main`:

```bash
npx skills add nozomi-koborinai/terradart#v0.35.0 --skill terradart
```

The `skills` CLI asks which agents you use and writes the skill where each looks for skills. It is the same file `terradart skill install` writes.

The skill is [`skills/terradart/SKILL.md`](https://github.com/nozomi-koborinai/terradart/blob/main/skills/terradart/SKILL.md) in the repository, in the [Agent Skills](https://agentskills.io) format; copying it into one of those directories works too.

## 2. Start a project

Decide three things before the agent runs anything: the providers, the environment names, and whether the state goes in a bucket. `terradart init` never picks them for an agent — without a terminal it refuses to run until the flags name all three — and the skill tells the agent to ask you. A prompt that answers them up front:

```text
Create a TerraDart project in my_app with terradart init: Google Cloud,
environments dev and prd (projects my-app-dev and my-app-prd), local state,
and the agent skill.
Then run terradart validate --env dev.
```

The agent runs, with your answers as flags:

```bash
terradart init my_app --provider google --env dev,prd --gcp-project dev=my-app-dev,prd=my-app-prd --backend local --agent-skill
cd my_app
terradart validate --env dev
```

The project comes with an `AGENTS.md`: the commands, where the environments and resources live, and the rules — never edit `tf-out/` or `.terradart/`, never install or call `terraform` or `tofu` directly, and plan before any apply a human has approved. Inside a Flutter app, the same `terradart init` writes `infra/` and wires it to the app ([Start from an existing Flutter app](/docs/start/flutter-app/)).

## 3. Ask for changes

Describe the infrastructure, and ask for the check and the plan in the same prompt:

```text
Add a Cloud Run service "api" running us-docker.pkg.dev/cloudrun/container/hello
in lib/stack.dart, with an output api_url, and enable the APIs it needs.
Run dart analyze, terradart validate --env dev and terradart plan --env dev,
and show me the plan.
```

The skill gives the agent the loop:

| Step | Command | Needs |
|---|---|---|
| The Dart compiles | `dart analyze` | nothing |
| The Stack synthesizes | `terradart synth` | nothing |
| The configuration is valid | `terradart validate --env dev` | nothing; the first run downloads OpenTofu |
| What the apply would change | `terradart plan --env dev` | credentials for the provider in the agent's shell |

An agent without credentials — a cloud agent, a CI job — still gets through `validate`. Have it name the environment with `--env`: there is no terminal for it to answer a question in, and an apply against an environment the command chose by default stops rather than guess.

## 4. Apply

Read the plan, then apply it yourself:

```bash
terradart apply --env dev
```

In a terminal of your own, the apply shows the plan again and asks before it changes anything. In an agent's shell `terradart` never asks: an apply without `--auto-approve` stops before `init` with exit code 3 and prints the command with the flag added. The skill and the generated `AGENTS.md` both tell the agent to run `apply` and `destroy` only when you ask, so an agent should pass `--auto-approve` only when you said so. After the apply, the define file for a Flutter or web client is in `.terradart/dart_defines.dev.json` ([Outputs in client apps](/docs/client-outputs/)).

## Migrate existing Terraform

The migrator does the mechanical translation; the agent finishes what it kept in Terraform:

```text
Migrate infra/ to TerraDart: run terradart migrate --report --dir infra,
then terradart migrate --dir infra --out infra_dart. Port the kept blocks
listed in infra_dart/MIGRATION.md into the Stack one at a time, keeping
each local name, and run terradart plan after each: it must report
No changes. Do not apply.
```

The skill tells the agent not to rewrite a tree by hand, to keep every resource address, to leave a block in the sidecar when no factory covers it, and to fix the Dart — never the plan — when a plan is not empty. The steps it follows are [Migrate an existing Terraform project](/docs/start/migrate-terraform/).

## What the skill tells the agent

- **Which package** owns a Terraform type: `google_*`, beta-only `google_*`, `aws_*`, `cloudflare_*`, `appwrite_*`.
- **How to find the class and its barrel.** Each package's generated `lib/src/_catalog.g.dart` maps every Terraform type to its class and barrel, and the class's doc comment lists its arguments.
- **How to write the arguments**: a literal, another resource's `ref`, an enum member, a variant, a secret — the rules of [Writing arguments](/docs/arguments/).
- **Where the runnable examples are**: more than 100 quickstarts under [`examples/`](https://github.com/nozomi-koborinai/terradart/tree/main/examples), each synthesized and validated in CI.
- **How to check and deploy**: `dart analyze`, `terradart synth`, `terradart validate`, `terradart plan`, environments declared in Dart with `runEnvironments`, and the define file a client builds with. It never asks you to install or run Terraform.
- **How to migrate**: `terradart migrate` first, then the leftovers one block at a time, until `terradart plan` reports *No changes*.

## Without a checkout

- [`/llms.txt`](/llms.txt) is these docs, condensed for LLMs, with these guides and the command reference first.
- [Coverage](/docs/coverage/) lists every factory of every provider package with its barrel and the examples that use it.
