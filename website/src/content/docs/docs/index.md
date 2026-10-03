---
title: Documentation
description: Guides for TerraDart — type-safe infrastructure-as-code for Dart, from the Stack to the app.
---

TerraDart lets you write your infrastructure and your app in one typed Dart codebase. A `Stack` synthesizes standard Terraform JSON for Google Cloud, AWS, Cloudflare and Appwrite, and the values your app needs reach it as a generated Dart file instead of copied strings.

Guides track the **0.35.x** line on pub.dev. Every Dart snippet on this site compiles against it in CI.

## Start

Pick the guide for where you start. Each is one path you can paste, from `dart pub global activate terradart_cli` to an apply, and none asks you to install Terraform.

- [Start from an existing Flutter app](/docs/start/flutter-app/) — add `infra/` beside the app, apply it, and build the app with the outputs, typed, through `--dart-define-from-file`
- [Start from an empty directory](/docs/start/new-project/) — `terradart init`, then `validate`, `plan` and `apply`, with a default environment and the state moved to a bucket
- [Migrate an existing Terraform project](/docs/start/migrate-terraform/) — `terradart migrate`, a plan that reports *No changes*, then Dart one resource at a time
- [Let an AI agent do it](/docs/start/ai-agent/) — the TerraDart Agent Skill, and the plan you approve
- [Getting started](/docs/getting-started/) — the pieces built by hand: a Stack for your provider, synth, apply, and the values your app reads
- [Why TerraDart](/docs/why-terradart/) — the problem, the design, and how it compares with HCL, CDKTF and Pulumi

## Guides

- [Writing arguments](/docs/arguments/) — which form an argument takes: a literal, a `ref`, an enum member, a variant, a variable, a secret
- [Environments](/docs/environments/) — dev, staging and prod as a Dart enum: each with its own project and state, and its own define file for the client
- [Outputs in client apps](/docs/client-outputs/) — build a Flutter, web or CLI client with apply-time values, typed, from the define file `terradart apply` writes
- [Migrating from HCL](/docs/migrate-from-hcl/) — `terradart migrate` brings an existing Terraform tree over with a plan that reports *No changes*
## Providers

- [Google Cloud](/docs/providers/google/) — `terradart_google` and `terradart_google_beta`
- [AWS](/docs/providers/aws/) — `terradart_aws`: Lambda, ECS Express Mode, Flutter Web on S3 + CloudFront
- [Cloudflare](/docs/providers/cloudflare/) — `terradart_cloudflare`: the DNS and edge in front of your app
- [Appwrite](/docs/providers/appwrite/) — `terradart_appwrite`: the backend of a Flutter app

[`terradart_time`](https://pub.dev/packages/terradart_time) adds `TimeSleep`, the propagation wait any Stack can use, and everything builds on [`terradart_core`](https://pub.dev/packages/terradart_core).

## Reference

- [The terradart command](/docs/cli/) — `terradart synth`, `validate`, `plan`, `apply`, `destroy`, `outputs` and `migrate`, environments declared in Dart, and managed OpenTofu
- [Coverage](/docs/coverage/) — every factory of every provider package, its barrel, and the examples that use it
- [API reference](https://pub.dev/packages?q=terradart) — the dartdoc of every package on pub.dev
- [llms.txt](/llms.txt) — these docs, condensed for LLMs

## Under the hood

- [How TerraDart works](/docs/how-it-works/) — the loop from Stack to `*.tf.json` to OpenTofu or Terraform, synth issues, and the constants and outputs that cross into your app
- [How TerraDart is built](/docs/how-its-built/) — the generation pipeline and verification harness behind the factories; the maintainer CLI is [`terradart_codegen`](https://pub.dev/packages/terradart_codegen) (`terradart-codegen wrap`)

## Project

- [Upgrading](/docs/upgrading/) — breaking changes in the current minor; read before every minor bump
- [Status & versioning](/docs/status/) — alpha, path to beta, 1.0
- [README](https://github.com/nozomi-koborinai/terradart/blob/main/README.md), [examples](https://github.com/nozomi-koborinai/terradart/tree/main/examples) and [cookbook](https://github.com/nozomi-koborinai/terradart/tree/main/cookbook) on GitHub
