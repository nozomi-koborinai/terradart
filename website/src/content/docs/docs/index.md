---
title: Documentation
description: Guides for TerraDart — type-safe infrastructure-as-code for Dart, from the Stack to the app.
---

TerraDart lets you write your infrastructure and your app in one typed Dart codebase. A `Stack` synthesizes standard Terraform JSON for Google Cloud, AWS, Cloudflare and Appwrite, and the values your app needs reach it as a generated Dart file instead of copied strings.

Guides track the **0.33.x** line on pub.dev. Every Dart snippet on this site compiles against it in CI.

## Start

- [Getting started](/docs/getting-started/) — install, define a Stack for your provider, synth, apply, and read the values from your app
- [Why TerraDart](/docs/why-terradart/) — the problem, the design, and how it compares with HCL, CDKTF and Pulumi

## Guides

- [Writing arguments](/docs/arguments/) — which form an argument takes: a literal, a `ref`, an enum member, a variant, a variable, a secret
- [Outputs in client apps](/docs/client-outputs/) — build a Flutter, web or CLI client with apply-time values, typed, from the define file `terradart apply` writes
- [Migrating from HCL](/docs/migrate-from-hcl/) — `terradart migrate` brings an existing Terraform tree over with a plan that reports *No changes*
- [Coding agents](/docs/agents/) — the TerraDart Agent Skill: how an agent finds the right factory

## Providers

- [Google Cloud](/docs/providers/google/) — `terradart_google` and `terradart_google_beta`
- [AWS](/docs/providers/aws/) — `terradart_aws`: Lambda, ECS Express Mode, Flutter Web on S3 + CloudFront
- [Cloudflare](/docs/providers/cloudflare/) — `terradart_cloudflare`: the DNS and edge in front of your app
- [Appwrite](/docs/providers/appwrite/) — `terradart_appwrite`: the backend of a Flutter app

[`terradart_time`](https://pub.dev/packages/terradart_time) adds `TimeSleep`, the propagation wait any Stack can use, and everything builds on [`terradart_core`](https://pub.dev/packages/terradart_core).

## Reference

- [The terradart command](/docs/cli/) — `terradart synth`, `plan`, `apply`, `destroy`, `outputs` and `migrate`, environments declared in Dart, and managed OpenTofu
- [Coverage](/docs/coverage/) — every factory of every provider package, its barrel, and the examples that use it
- [API reference](https://pub.dev/packages?q=terradart) — the dartdoc of every package on pub.dev
- [llms.txt](/llms.txt) — these docs, condensed for LLMs

## Under the hood

- [Architecture](/docs/architecture/) — `synth()` / `writeTo()`, typed references, outputs and constants, `outputEnvironment()`
- [How TerraDart is built](/docs/how-its-built/) — the generation pipeline and verification harness behind the factories; the maintainer CLI is [`terradart_codegen`](https://pub.dev/packages/terradart_codegen) (`terradart-codegen wrap`)

## Project

- [Upgrading](/docs/upgrading/) — breaking changes in the current minor; read before every minor bump
- [Status & versioning](/docs/status/) — alpha, path to beta, 1.0
- [README](https://github.com/nozomi-koborinai/terradart/blob/main/README.md), [examples](https://github.com/nozomi-koborinai/terradart/tree/main/examples) and [cookbook](https://github.com/nozomi-koborinai/terradart/tree/main/cookbook) on GitHub
