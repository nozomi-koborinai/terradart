# TerraDart

> A Dart code generator that turns the Terraform Google provider schema into typed, refactor-safe Dart bindings — focused on the IaC ↔ application seam.

[![pub package](https://img.shields.io/pub/v/terradart_core.svg)](https://pub.dev/packages/terradart_core)
[![CI](https://github.com/nozomi-koborinai/terradart/actions/workflows/ci.yml/badge.svg)](https://github.com/nozomi-koborinai/terradart/actions/workflows/ci.yml)
[![License: Apache-2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)
[![Dart SDK](https://img.shields.io/badge/Dart-%E2%89%A53.6-blue.svg)](https://dart.dev)

## What is this?

**terradart** generates Dart bindings for the Terraform Google provider so that Flutter / Dart backend developers can describe Google Cloud infrastructure with the same compiler, refactoring, and IDE tooling they already use for application code. It is **not** a generic Terraform alternative — its scope is the small surface where infrastructure values flow into Firebase Functions Dart code (topic IDs, queue names, secret references, IAM bindings).

terradart synthesizes JSON that the existing `terraform` CLI consumes. It does not replace `terraform plan` / `apply`; it replaces only the authoring step.

## Why does this exist?

The seam between IaC and Dart application code is fragile in practice:

- A Pub/Sub topic name is hand-typed in HCL and again as a string literal in a Cloud Function.
- A renamed secret silently breaks runtime resolution because the reference is a string.
- IAM binding member lists drift between modules with no compiler visibility.

terradart treats this seam as a first-class artifact: the same `Topic` object whose ID is consumed by a Stack synthesizer is exported (via `addExport(...)`) for the Dart subscriber to import as a typed constant.

### Why not CDKTF, Pulumi, or HCL?

- **HCL**: Excellent for infrastructure teams who live in the Terraform ecosystem. The seam to a Dart subscriber, however, requires `terraform output → JSON → Dart string parsing`, which is exactly what terradart eliminates.
- **CDKTF**: HashiCorp [archived CDKTF in December 2025](https://github.com/hashicorp/terraform-cdk). Its TypeScript / Python / Java targets never included Dart, and the project's deprecation reduces long-term incentive to invest in a Dart provider. terradart deliberately occupies the Dart-shaped slot CDKTF did not reach.
- **Pulumi**: Pulumi has not shipped a Dart SDK and has not announced one. Pulumi can store state in S3, GCS, or Pulumi Cloud — overlap with Terraform — but its provider invocation model and automation API differ. terradart synthesizes drop-in JSON that any existing Terraform pipeline already understands.

### Why a generator and not a hand-written DSL?

The Terraform Google provider has 1,000+ resources and migrates schema versions 4-6 times per year. terradart generates bindings from `terraform providers schema -json` so the surface tracks upstream automatically.

### Why no `module` block support?

terradart is a **schema → Dart binding generator**, not a Terraform module ecosystem replacement. The `module` block lets you reuse existing Terraform modules (`source = "github.com/..."`); supporting it would mean implementing module input/output type inference, version constraints, and registry resolution — all of which exist in the Terraform CLI ecosystem already.

For the v0.x.y-dev pre-alpha cycle we keep terradart focused on the IaC↔application seam (typed Dart constants for resource identifiers your app code consumes). If you need module composition, write Terraform modules in HCL alongside terradart-generated `.tf.json` — both feed the same `terraform apply`. We may revisit module ergonomics in a future major version once Tier 1 is stable.

### Why doesn't the CLI have a `synth` subcommand?

Most IaC tools (CDKTF, AWS CDK, Pulumi) ship a `synth` CLI command that compiles your code and emits JSON. terradart **deliberately omits this** — you call `StackSynth.synth(stack)` directly from your `main()`:

```dart
// bin/infra.dart
import 'dart:convert';
import 'package:terradart_core/terradart_core.dart';
import 'package:my_app_infra/orders_stack.dart';

void main() {
  final stack = OrdersStack(/* env, etc. */);
  final result = StackSynth.synth(stack);
  print(const JsonEncoder.withIndent('  ').convert(result.tfJson));
}
```

Then run `dart run bin/infra.dart > main.tf.json` to synth. Why?

- **Cleaner separation**: `terradart codegen` (CLI) generates bindings once. `StackSynth.synth(stack)` (your main) generates Terraform configuration per env. They shouldn't conflate.
- **First-class Dart**: your `main()` is the integration point — env loading, conditional logic, dynamic stack composition all happen in plain Dart, not behind CLI flags.
- **No magic**: the synth step is your code, not ours. You own the entry point.

If you'd prefer a uniform CLI experience: write a 5-line `bin/infra.dart` once and add it to your `pubspec.yaml`'s `executables` map.

## Status

| Tier | Surface | Stability |
|---|---|---|
| **Tier 1** | **28 resources + 1 data source.** `terradart_google` ships typed factory wrappers for compute (5), BigQuery (2), KMS (2), Cloud Storage (2), DNS (1), Cloud Run v2 (1), Logging (1), Monitoring (1), Pub/Sub (4), Cloud Tasks (2), Secret Manager (3), Cloud Scheduler (1), IAM service account (1), project service enablement (1), and the `google_project` data source. See [`terradart_google` README](packages/terradart_google/README.md) for the full list. | **Pre-alpha (v0.x.y-dev)** — golden-tested, regenerated deterministically via `terradart wrap --check` in CI. No SemVer guarantees until v1.0.0. |
| **Tier 2** | Every other `google_*` / `google-beta_*` resource | **Generator-supported.** Run `terradart codegen` against your provider schema dump to emit bindings into your own `lib/generated/`. No SemVer guarantee on emitted Dart names. |

### Type-safe authoring (v0.1.0-dev)

Every Tier 1 resource ships:

- **Typed Dart enums** for each schema field with a fixed value set. `TfArg<RoutingMode>.literal(RoutingMode.regional)` encodes to `"REGIONAL"` via the `.terraformValue` convention — typos surface at compile time.
- **Typed nested-block helpers** (e.g. `BootDisk`, `NetworkInterface`, `LifecycleRule`, `ConditionThreshold`, `AlertStrategy`) that serialize via `toArgMap()`.
- **Sealed types for exactly-one-of nested blocks** so the compiler keeps mutually-exclusive variants honest: `Access` (8 variants on `bigquery_dataset`), `BucketObjectContent`, `EnvVarSource` (env literal vs. secret_key_ref on Cloud Run), `VolumeSource`.

## Quickstart

```bash
# 1. Install the codegen CLI globally (explicit version required for pre-release).
dart pub global activate terradart_codegen 0.1.0-dev

# 2. Add the runtime + Tier 1 factories to your IaC project.
dart pub add 'terradart_core:^0.1.0-dev' 'terradart_google:^0.1.0-dev'

# 3. Generate the Terraform Google provider schema dump:
mkdir schema-dir && cd schema-dir
cat > providers.tf <<'EOF'
terraform {
  required_providers {
    google = { source = "hashicorp/google", version = "~> 7.0" }
  }
}
EOF
terraform init
terraform providers schema -json > schema.json
cd ..

# 4. Run codegen for Tier 2 resources you need that aren't in terradart_google.
terradart codegen \
  --provider hashicorp/google \
  --source schema-dir \
  --output lib/generated

# 5. Write a Stack subclass and synth.
# See examples/pubsub_quickstart/ for a runnable end-to-end project.
```

See [`examples/pubsub_quickstart/`](examples/pubsub_quickstart/) for a runnable end-to-end project.

## Examples

Foundational:

- [Pub/Sub topic + IAM member](examples/pubsub_quickstart/)
- [Cloud Tasks queue + IAM member](examples/cloud_tasks_quickstart/)
- [Secret Manager (write-only fields)](examples/secret_manager_quickstart/)
- [Cloud Scheduler → Pub/Sub target](examples/cloud_scheduler_quickstart/)
- [IAM members across all four foundational services](examples/iam_quickstart/)

Compute & networking:

- [Compute network + external address (typed enums)](examples/compute_quickstart/)
- [DNS managed zone (private + DNSSEC)](examples/dns_quickstart/)

Data & storage:

- [GCS bucket + bucket object](examples/storage_quickstart/)
- [BigQuery dataset (sealed `Access` hierarchy)](examples/bigquery_quickstart/)
- [Cloud KMS keyring + crypto key](examples/kms_quickstart/)

Application platform & operations:

- [Cloud Run v2 service (sealed `EnvVarSource`)](examples/cloud_run_quickstart/)
- [Logging project sink → BigQuery](examples/ops_quickstart/)
- [Monitoring alert policy with typed `Aligner` / `Reducer`](examples/monitoring_quickstart/)

## What it is **not** (Non-goals)

- **Not a Terraform replacement.** terradart synthesizes JSON; `terraform plan / apply` runs as before.
- **Not a state backend.** State remains in GCS / Terraform Cloud / wherever you already have it. terradart ships a `GcsBackend` helper for the common case; everything else stays in your existing pipeline.
- **Not a Pulumi competitor.** No runtime provider invocation, no automation API.
- **Not a multi-cloud tool yet.** Google provider only. AWS / Azure may follow if Tier 1 stabilizes — no promise.
- **Not Firebase Functions Dart's Pub/Sub trigger story.** As of the pre-alpha cycle, Firebase Functions for Dart does not expose a Pub/Sub trigger decorator. terradart can still emit the topic name as a typed constant for HTTP-fronted subscribers; we do not paper over the runtime gap.
- **Not a constructs framework.** Composite abstractions are out of scope for the pre-alpha cycle.

## Contributing

Contributions are welcome — see the issue templates for the area you want to file in.

1. Read [CONTRIBUTING.md](CONTRIBUTING.md) for Tier 1 vs Tier 2 PR expectations.
2. For Tier 1 bugs, file via the [Tier 1 bug template](.github/ISSUE_TEMPLATE/tier1-bug.yml).
3. For Tier 2 codegen issues, use the [Tier 2 codegen template](.github/ISSUE_TEMPLATE/tier2-codegen.yml) — note that Tier 2 fixes are best-effort.
4. Security issues: see [SECURITY.md](SECURITY.md) — please use the GitHub private security advisory flow rather than public issues.

## License

Apache-2.0. See [LICENSE](LICENSE).

## Acknowledgements

terradart's seam-first framing draws on prior work in [CDKTF](https://github.com/hashicorp/terraform-cdk) (HashiCorp, archived December 2025), [AWS CDK](https://aws.amazon.com/cdk/), and [Pulumi](https://www.pulumi.com/) — each of which pioneered "infrastructure as real code" in their own ecosystems. The Tier 1 / Tier 2 split is original to this project.

`terradart_google` uses [schemantic](https://pub.dev/packages/schemantic) (developed by the [Genkit](https://genkit.dev/) team) for the Tier 1 schema stubs (`*.schema.dart` / `*.schema.g.dart`).

terradart is not affiliated with HashiCorp. Terraform® is a registered trademark of HashiCorp, Inc.
