# terradart_core

[![pub: terradart_core](https://img.shields.io/pub/v/terradart_core.svg?label=pub%3A%20core)](https://pub.dev/packages/terradart_core)
[![Dart SDK](https://img.shields.io/badge/Dart-%E2%89%A53.10-blue.svg)](https://dart.dev)
[![License: Apache-2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://github.com/nozomi-koborinai/terradart/blob/main/LICENSE)

Core runtime for [TerraDart](https://terradart.dev) — a Dart-first infrastructure-as-code layer for Terraform that produces drop-in `main.tf.json` for the standard `terraform` CLI.

This package ships the small set of primitives every TerraDart Stack uses:

- `Stack` — abstract base for your infrastructure module. You subclass it (`final class MyStack extends Stack`), register `Resource` / `Data` instances via `add(...)`, and call `stack.writeTo('tf-out')` from your own `main()` to emit `main.tf.json`.
- `Resource` / `Data` — typed nodes supplied by provider factory packages.
- `TfArg.literal(...)`, an attribute getter (`topic.name`), a variable handle and `TfArg.expression(...)` — the four ways every settable field accepts input: a Dart value, a reference to another resource's attribute, a Terraform input variable (`final region = variable<String>('region')`, then `location: region`; `TfArg.variable('region')` names one where the handle's type does not fit), or a raw Terraform expression emitted verbatim (`TfArg.expression(r'${lower(var.name)}-x')`). A Terraform enum is a `TfArg<String>` itself, so its members pass directly (see below).
- `RefTo<R>` — what an argument that names another resource takes: the target's generated `ref` getter (`network: vpc.ref`), `.literal(...)` / `.variable(...)` / `.expression(...)` / `.arg(...)` for a value outside the Stack, and `.pinned('self_link')` to emit an attribute other than the argument's own.
- `LifecycleOptions` — `create_before_destroy`, `prevent_destroy`, `ignore_changes` (`.all` / `.of([...])`), `replace_triggered_by` (resources and attribute getters), `precondition` / `postcondition`.
- `Stack.synth()` returns an in-memory `SynthResult` with `tfJson` (Terraform JSON map) and, when the Stack was constructed with `appExports: AppExports(path)`, `dartSource` (the generated Dart file for the IaC ↔ application seam). `Stack.writeTo(outDir)` is the file-IO wrapper that calls `synth()` and writes `main.tf.json` under `outDir`, plus the Dart file at its path.
- `addOutput('service_url', service.uri)` declares a Terraform `output`; `addConstant('ordersTopicName', .ref(topic.name))` declares a `static const` of the generated `<Stack>Constants` class — `.ref` reads the literal the attribute is set to at synth, `.value(...)` takes any JSON value, `.fromEnvironment('NAME')` a `String.fromEnvironment`. The same file holds a typed `<Stack>Outputs` reader with a getter per non-sensitive output, built with `fromTerraformJson(terraformOutputJson)` or `fromEnvironment(Platform.environment)` (`ORDERS_TOPIC_ID` for `orders_topic_id`); `outputEnvironment()` returns those variables as `TfArg<String>`s to pass as a Cloud Run service's `env`.

This package is the **runtime layer only**. It is intentionally small and dependency-free.

## Companion packages

| Package | Description |
| :--- | :--- |
| [`terradart_google`](https://pub.dev/packages/terradart_google) | Curated factory wrappers for Google Cloud resources (`hashicorp/google`). |
| [`terradart_google_beta`](https://pub.dev/packages/terradart_google_beta) | Curated factory wrappers for beta-only Google Cloud resources (`hashicorp/google-beta`). |
| [`terradart_appwrite`](https://pub.dev/packages/terradart_appwrite) | Curated factory wrappers for Appwrite resources (`appwrite/appwrite`). |
| [`terradart_cloudflare`](https://pub.dev/packages/terradart_cloudflare) | Curated factory wrappers for Cloudflare resources (`cloudflare/cloudflare`). |
| [`terradart_aws`](https://github.com/nozomi-koborinai/terradart/tree/main/packages/terradart_aws) | Curated factory wrappers for AWS resources (`hashicorp/aws`). |
| [`terradart_codegen`](https://pub.dev/packages/terradart_codegen) | Maintainer generation tooling and CLI (`terradart wrap`). |

For project-level documentation, see the [terradart repo README](https://github.com/nozomi-koborinai/terradart#readme) and [terradart.dev](https://terradart.dev/docs/getting-started/).

## Installation

```yaml
dependencies:
  terradart_core: ^0.31.x
```

Check [pub.dev](https://pub.dev/packages/terradart_core) for the latest patch. Read [MIGRATING.md](https://github.com/nozomi-koborinai/terradart/blob/main/MIGRATING.md) before minor bumps.

## Typed enum serialization

Wrap-emitted enums are extension types that implement `TfArg<String>`: each member is a `static const` literal, so `type: .standard` passes one directly, and `.variable(...)` / `.expression(...)` / `.arg(...)` cover values that are not known at synth time. A plain Dart `enum` has no Terraform value, so `TfArgLiteral.toTfJson()` throws `ArgumentError` on one at synth time.

```dart
extension type const RoutingMode._(TfArg<String> _) implements TfArg<String> {
  RoutingMode.variable(String name) : this._(TfArg.variable(name));
  RoutingMode.expression(String template) : this._(TfArg.expression(template));
  const RoutingMode.arg(TfArg<String> arg) : this._(arg);

  static const regional = RoutingMode._(TfArgLiteral('REGIONAL'));
  static const global = RoutingMode._(TfArgLiteral('GLOBAL'));

  static const List<RoutingMode> values = [regional, global];
}
```
