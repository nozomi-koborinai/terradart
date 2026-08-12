---
title: Why TerraDart
description: Why Dart teams adopt TerraDart — the infra/app boundary, Terraform-compatible generation, curated Google provider factories, and how it compares to HCL, CDKTF, and Pulumi.
---

If you read the [landing page](/) first: TerraDart keeps **Terraform as the execution layer** while you **author GCP infrastructure in Dart**. This page goes deeper on motivation, the type system, and where TerraDart sits next to other IaC tools.

If your team ships Flutter on the client and Dart on the server (**Cloud Run**, **Cloud Run functions**), there is usually one layer left where Dart's tooling does not reach: **infrastructure definitions** — often maintained in HCL, a Terraform-compatible pipeline, or the GCP console. TerraDart closes that gap without asking you to give up Terraform itself.

## The last non-Dart layer

| Layer | Already Dart? |
| --- | --- |
| Mobile UI (Flutter) | ✅ |
| Backend handlers (Cloud Run / Cloud Run functions) | ✅ |
| Application business logic | ✅ |
| Infrastructure definitions | ❌ — HCL, Terraform-compatible tooling, or console |

That bottom row is what people mean by the **last non-Dart layer**: everything above it shares `dart analyze`, refactors, and IDE navigation; infrastructure often does not.

### A boundary held together by string literals

Topic names typed in HCL or the console and again in your Cloud Run functions handlers. Renames do not reach subscribers via `dart fix`. IAM member strings drift with no compiler visibility. Infra values flowing into app code are often the place Dart's type system never sees.

TerraDart pulls infrastructure into the same authoring surface as the rest of your code. `dart analyze` catches resource-name typos. Refactoring a Stack class is the same operation as refactoring any other Dart class. The same `final` / `sealed` discipline that already protects your domain model can protect your network topology.

## Terraform stays the execution layer

TerraDart does not run `terraform apply` for you. It does not own your state file. It does not introduce a new provider or a new lock format.

What it does is take Terraform's authoring model — provider blocks, resource blocks, references, lifecycle hooks — and express it as Dart code that **generates** the same `*.tf.json` Terraform would have accepted from HCL. `terraform plan`, `terraform apply`, and your remote state backend stay exactly where they are.

:::note[API name: synth]
The in-memory step that builds the JSON tree is called **`synth()`** in code (`stack.synth()` → `SynthResult`, then `writeTo(outDir)`). The landing page uses "generate" for readability. See [Architecture — What is synth?](/docs/architecture/#what-is-synth).
:::

This is intentionally narrower than Pulumi, which has its own runtime, its own state model, and its own resource graph. With TerraDart the boundary is sharp: Dart is the **authoring** layer, Terraform is the **execution** layer. If you migrate off TerraDart tomorrow, your existing state and your existing modules are unchanged.

CDKTF used to occupy this same "code-first authoring of Terraform" niche, but only for TypeScript / Python / Java / Go — never Dart. CDKTF was [archived in December 2025](https://github.com/hashicorp/terraform-cdk), leaving a Dart-shaped hole that TerraDart now fills.

## Dart types where HCL cannot help

Three concrete patterns where the Dart type system catches what HCL cannot:

### Enums for fixed-value fields

Terraform schemas often have fields that accept one of a small, fixed set of strings — `INGRESS_TRAFFIC_ALL` vs `INGRESS_TRAFFIC_INTERNAL_ONLY`, for example. TerraDart emits these as Dart enums:

```dart
ingress: TfArg.literal(Ingress.all)  // typo → compile error
```

### Sealed classes for exactly-one-of nested blocks

Some Terraform blocks accept exactly one variant from a set — for instance, a BigQuery dataset's `access` block has 8 mutually exclusive variants (`user_by_email`, `group_by_email`, `special_group`, `domain`, `iam_member`, `view`, `dataset`, `routine`). TerraDart emits these as a sealed class hierarchy:

```dart
access: [
  Access.userByEmail(email: TfArg.literal("ops@example.com")),
  Access.iamMember(member: TfArg.ref(runSa.member)),
]
```

The compiler enforces that exactly one variant is constructed per entry.

### Final classes for Stack subclasses

`Stack`, `Resource`, and `Data` are declared `abstract base class` since v0.11.0. Your own subclasses must use a class modifier:

```dart
final class AppInfraStack extends Stack { /* ... */ }
```

This prevents two foot-guns: forgetting to extend (using `implements` would skip the base-class state that synth needs), and accidentally subclassing an internal class that was not meant to be extended further. Both used to be runtime hazards in pre-v0.11 versions; they are now compile errors.

## How it fits next to other IaC

TerraDart fits teams already centered on **Dart**, already running **Terraform** (or a compatible pipeline) or managing GCP in the **console**, where the seam between infra and app code hurts.

| | TerraDart | HCL | CDKTF | Pulumi |
| --- | --- | --- | --- | --- |
| Dart authoring | Yes | No | No | No |
| Drop-in for `terraform apply` | Yes | Yes | Yes | Different model |
| Curated Dart factories for GCP | Yes | No | No | No |
| Project status | Alpha | Mature | Archived 2025 | Active |

HCL has provider schema types; CDKTF bindings are typed in TypeScript and other languages. TerraDart's difference is **Dart-native authoring** without replacing your Terraform execution pipeline.

**HCL** is the native, mature option. If your team is comfortable maintaining HCL alongside your Dart application code, there is no urgency to switch. TerraDart's value proposition only matters once the cost of context-switching between Dart and HCL — and the absence of refactor / typecheck across that boundary — starts to bite.

**CDKTF** would have been the obvious model to follow, except it was archived by HashiCorp in December 2025 and never targeted Dart in any case. TerraDart is the Dart-shaped slot CDKTF did not reach.

**Pulumi** is a different model entirely: its own runtime, its own state, and its own resource graph. If you want a code-first IaC platform and you do not already have Terraform investment, Pulumi is a strong choice. TerraDart is for teams who already use Terraform and do not want to give that up.

**TerraDart** makes sense when you are already centered on Dart (Flutter + Cloud Run / Cloud Run functions), already using Terraform (or heading there), and the gap between those two — IaC stuck outside your Dart repo — is the part that hurts.

## Curated provider coverage

[`terradart_google`](https://pub.dev/packages/terradart_google) does not wrap every resource in the upstream HashiCorp `google` provider. It ships **typed factories for a growing, battle-tested subset** — **1078 curated resource factories + 1 data source** (1079 catalog entries). The full factory list with example pointers is on [Coverage](/docs/coverage/); see also [status](/docs/status/) and [Architecture — Provider integration](/docs/architecture/#provider-integration). Runnable stacks live in [examples](https://github.com/nozomi-koborinai/terradart/tree/main/examples) and the [cookbook](https://github.com/nozomi-koborinai/terradart/tree/main/cookbook) (both expanding). Upgrading across minors? Read [Migrating](/docs/migrating/) first.

## Non-goals

- Not a Terraform replacement — state and apply stay in Terraform.
- Not multi-cloud yet — the Google provider only.
- Not a constructs framework in the pre-1.0 cycle.
- Not module-block support — compose Terraform modules in HCL alongside TerraDart-generated `*.tf.json`; both feed the same `terraform apply`.

## Next steps

- [Architecture](/docs/architecture/) — `synth()` / `writeTo()`, provider integration, AppExport
- [Getting Started](/docs/getting-started/) — install and first `*.tf.json` output (in progress)
- [How it's built](/docs/how-its-built/) — generation pipeline, verification, sustainability
- [Status](/docs/status/) — alpha expectations
