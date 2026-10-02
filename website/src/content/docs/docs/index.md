---
title: Documentation
description: Guides for TerraDart — type-safe infrastructure-as-code for Dart, from the Stack to the app.
---

TerraDart lets you write your infrastructure and your app in one typed Dart codebase. A `Stack` synthesizes standard Terraform JSON for Google Cloud, AWS, Cloudflare and Appwrite, and the values your app needs reach it as a generated Dart file instead of copied strings.

Guides track the **0.32.x** line on pub.dev. Every Dart snippet on this site compiles against it in CI.

## Start

- [Getting Started](/docs/getting-started/) — install, define a Stack for your provider, synth, apply, and read the values from your app
- [Why TerraDart](/docs/why-terradart/) — the problem, the design, and how it compares with HCL, CDKTF and Pulumi

## Concepts

- [Architecture](/docs/architecture/) — `synth()` / `writeTo()`, typed references, outputs and constants, `outputEnvironment()`
- [Outputs in client apps](/docs/client-outputs/) — build a Flutter, web or CLI client with apply-time values, typed, from `addDartDefineOutput()`
- [How it's built](/docs/how-its-built/) — the generation pipeline and verification harness behind the factories

## Providers

- [Google Cloud](/docs/providers/google/) — `terradart_google` and `terradart_google_beta`; the [coverage list](/docs/coverage/google/) has every factory
- [AWS](/docs/providers/aws/) — `terradart_aws`: Lambda, ECS Express Mode, Flutter Web on S3 + CloudFront
- [Cloudflare](/docs/providers/cloudflare/) — `terradart_cloudflare`: the DNS and edge in front of your app
- [Appwrite](/docs/providers/appwrite/) — `terradart_appwrite`: the backend of a Flutter app

[`terradart_time`](https://pub.dev/packages/terradart_time) adds `TimeSleep`, the propagation wait any Stack can use, and everything builds on [`terradart_core`](https://pub.dev/packages/terradart_core).

## Tools

- [Migrating from HCL](/docs/migrate-from-hcl/) — `terradart-migrate` (on [pub.dev](https://pub.dev/packages/terradart_migrate), reading Terraform through [`terradart_hcl`](https://pub.dev/packages/terradart_hcl)) brings an existing Terraform tree over with a plan that reports *No changes*
- [Coding agents](/docs/agents/) — the TerraDart Agent Skill: how an agent finds the right factory
- [llms.txt](/llms.txt) — condensed site map for LLM crawlers
- [`terradart_codegen`](https://pub.dev/packages/terradart_codegen) — the maintainer CLI (`terradart wrap`) that generates the provider packages

## Project

- [Upgrading](/docs/upgrading/) — breaking changes in the current minor; read before every minor bump
- [Status & versioning](/docs/status/) — alpha, path to beta, 1.0
- [README](https://github.com/nozomi-koborinai/terradart/blob/main/README.md), [examples](https://github.com/nozomi-koborinai/terradart/tree/main/examples) and [cookbook](https://github.com/nozomi-koborinai/terradart/tree/main/cookbook) on GitHub
