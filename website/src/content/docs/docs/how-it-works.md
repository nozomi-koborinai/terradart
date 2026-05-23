---
title: How it works
description: From Dart Stack classes to terraform apply.
---

:::note[Coming soon]
Expanded diagrams and code samples will be added after v0.11.0. This page is a short overview.
:::

## Pipeline

1. **Author** — Subclass `Stack` in Dart using curated `google_*` factories from `terradart_google`.
2. **Synthesize** — `StackSynth.synth(stack)` writes standard `*.tf.json` under your output directory.
3. **Apply** — Run `terraform plan` and `terraform apply` with your existing state backend.
4. **Hand off** — Export typed Dart constants for apps (Firebase Functions, Cloud Run jobs, etc.) so `dart analyze` catches drift at compile time.

## Non-goals

- Not a Terraform replacement — state and apply stay in Terraform.
- Not multi-cloud yet — Google provider only.
- Not a constructs framework in the pre-alpha cycle.

See [README — Non-goals](https://github.com/nozomi-koborinai/terradart#non-goals) for the full list.
