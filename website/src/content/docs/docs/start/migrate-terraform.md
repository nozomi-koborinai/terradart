---
title: Migrate an existing Terraform project
description: Turn a Terraform tree into a TerraDart package with terradart migrate, prove it with a plan that reports No changes, and move to Dart one resource at a time.
---

Bring an existing Terraform tree into Dart without a rewrite and without touching your infrastructure. `terradart migrate` translates what it can into typed Dart, keeps the rest in Terraform exactly as written, and keeps every resource address, so the first plan against your existing state reports *No changes*. From there you move the remaining blocks one at a time, with a plan after each.

You need the Dart SDK, 3.10 or later, and the access to the state you have today. The migration reads files only: it never runs an engine, never reads or writes state, and never writes into your tree.

## 1. Install the command

```bash
dart pub global activate terradart_cli
terradart --help
```

`terradart` lands in `~/.pub-cache/bin`. If the second line is not found, add that directory to your `PATH`, as `dart pub global activate` says. The migration needs no Dart project: run it from anywhere.

## 2. Size it

`--report` runs the whole migration in memory and writes nothing:

```bash
terradart migrate --report --dir infra
```

```text
terradart migrate 0.x.y --report: infra
  2 of 2 resource and data blocks translate (100%); 2 of 2 types have a curated factory. Nothing was written.

Types (2):
  google_pubsub_subscription [resource] x1: 1 translate -> GooglePubsubSubscription (terradart_google/pubsub)
  google_pubsub_topic [resource] x1: 1 translate -> GooglePubsubTopic (terradart_google/pubsub)

By directory:
  . (root): 2 translate, 0 kept

Next: terradart migrate --dir infra --out <package dir>
```

Each type shows how many of its blocks become Dart and how many stay in Terraform, with the reason for each kept block — a non-literal `count`, a sensitive literal, a type with no factory yet.

## 3. Migrate

```bash
terradart migrate --dir infra --out infra_dart
```

```text
terradart migrate 0.x.y: infra → infra_dart (infra)
  modules: 1 (1 root, 0 children); migrated 3 blocks, kept 0
  .: InfraStack — 3 migrated, 0 kept → tf-out
Report: infra_dart/MIGRATION.md
Next: cd infra_dart && dart pub get && terradart synth
      then terradart plan
```

`infra_dart/` is a Dart package: one Stack per module directory in `lib/`, `bin/infra.dart`, a `tf-out/` tree that mirrors your source, and beside each `main.tf.json` the **leftover sidecar** — the blocks that stay in Terraform, verbatim. `MIGRATION.md` lists every module and every kept block with its reason.

Environments in sibling directories (`envs/dev`, `envs/prod`) can become one Stack and a Dart enum with `--merge-envs`. That and every other flag: [Migrating from HCL](/docs/migrate-from-hcl/).

## 4. Keep the engine your state came from

Your state was written by Terraform, so the generated `pubspec.yaml` keeps the `terradart` command on Terraform:

```yaml
terradart:
  engine: terraform
```

`terradart plan` and `apply` then run the `terraform` you already use, on the state it wrote. The section says `engine: tofu` instead when the tree was run with OpenTofu.

To leave Terraform behind, change it to `engine: tofu`: `terradart` downloads a checksum-verified OpenTofu when none is on your `PATH`, and OpenTofu rewrites the state for itself at the next apply — after which Terraform may not read it back, so decide this for the whole team. Without the section, `terradart` reads the state before it runs; when the other engine wrote it, it asks in a terminal, and without one stops:

```text
terradart: Stopped before running OpenTofu on a state Terraform wrote. Pass --engine terraform to keep Terraform (or set terradart.engine: terraform in pubspec.yaml), or --engine tofu to move the state to OpenTofu.
```

More in [The terradart command](/docs/cli/#the-engine).

## 5. Validate

```bash
cd infra_dart
dart pub get
terradart validate
```

`terradart validate` synthesizes, then checks the configuration — the Dart and the sidecar together — without credentials, a backend or state.

## 6. Plan: No changes

The Stack carries your backend (`GcsBackend`, `S3Backend`, `LocalBackend`; any other stays in the sidecar's `backend.tf` as written), so the plan reads the same remote state as before. With a **local** state file, copy it next to `main.tf.json` first — the migrator never copies state:

```bash
cp ../infra/terraform.tfstate tf-out/
terradart plan
```

The plan must report *No changes. Your infrastructure matches the configuration.* Nothing is applied by a plan; a diff means a block was translated differently from how it was written. Compare that resource in `tf-out/main.tf.json` with your original, and [open an issue](https://github.com/nozomi-koborinai/terradart/issues/new/choose) with both.

A tree of several roots plans one at a time: `terradart plan --env dev` plans `tf-out/envs/dev`. With `--merge-envs`, `--env` names a member of the generated `Env` enum — and giving its `runEnvironments` a `defaultEnv`, or setting `TERRADART_ENV` for your shell, lets `--env` be left out ([Environments](/docs/environments/#run-one-environment)). Where `MIGRATION.md` lists `terraform init && terraform plan` as a next step, `terradart plan` runs both for you.

## 7. Move the rest into Dart

For each block `MIGRATION.md` lists as kept, once its reason no longer holds:

1. look its factory up in [Coverage](/docs/coverage/);
2. add it to the Stack with the **same local name**, so its address does not change;
3. delete the block from the sidecar, and its `addExternalBlock('<address>')` line from the Stack when there is one;
4. run `terradart plan` and expect *No changes* again.

A block whose type has no factory stays in the sidecar; the Stack and the sidecar plan and apply together. [What stays in Terraform](/docs/migrate-from-hcl/#what-stays-in-terraform) explains each reason.

## 8. Apply your next change

From here, a change to the infrastructure is a change to the Dart:

```bash
terradart plan
terradart apply
```

The apply shows the plan and asks before it changes anything. A Stack with outputs can hand them to a Flutter or web client through a define file: add `addDartDefineOutput()`, and `terradart apply` writes it — see [Outputs in client apps](/docs/client-outputs/).

## 9. Move the state, when you want to

A migration keeps your backend as it is. To move the state somewhere else later — a local file into a bucket, one bucket to another — change the Stack's `backend:`, then:

```bash
terradart state migrate
```

It synthesizes, names the backend the state moves from and to, asks, and runs the engine's `init -migrate-state`. With several environments, pass `--env <name>` for each; without a terminal, `--auto-approve`.

## Next

- [Migrating from HCL](/docs/migrate-from-hcl/) — every flag, the sidecar, modules, `count` and `for_each`, `--merge-envs`
- [Let an AI agent do it](/docs/start/ai-agent/#migrate-existing-terraform) — hand step 7 to a coding agent
- [Environments](/docs/environments/) — `dev` and `prod` as a Dart enum after `--merge-envs`
- [Writing arguments](/docs/arguments/) — the forms an argument takes, for the blocks you port by hand
