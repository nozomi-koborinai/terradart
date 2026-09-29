# Changelog

## Unreleased

- Every resource has a `ref` getter returning `RefTo<ItsClass>`, and so does every data source that reads a resource of this package — the reference the arguments naming another resource will take. Additive.
- **Breaking** — requires Dart 3.10 (`sdk: ^3.10.0`, was `^3.6.0`). The generated wrappers were already formatted in the Dart 3.7+ tall style, so the constraint now matches them (pub.dev static analysis no longer reports a formatter mismatch).
- **Breaking** — nested blocks take typed helper classes. The 114 inputs that were `TfArg<Map<String, dynamic>>` / `TfArg<List<Map<String, dynamic>>>` now take a generated helper (`ComputeFutureReservationTimeWindow`, `List<ApiGatewayApiConfigGrpcServices>`, ...), for every factory. See [MIGRATING.md](../../MIGRATING.md).
- **Breaking** — inputs with a fixed value set are enums (67 generated enums, top level and inside helpers), read from the resource's Magic Modules YAML: `direction: TfArg.literal(ComputeNetworkFirewallPolicyPacketMirroringRuleDirection.ingress)` instead of `TfArg.literal('INGRESS')`.
- **Breaking** — Magic Modules `exactly_one_of` groups are sealed: `GoogleApiGatewayApiConfig` takes one required `spec` (`.openapiDocuments(...)` / `.grpcServices(...)`), and the `email_notification_settings` block is itself a sealed type (`emailNotificationSettings: .disableAllNotifications(...)`).
- **Breaking** — Magic Modules `conflicts` sets are nullable sealed arguments: 4 groups on 3 resources, e.g. `GoogleFirebaseHostingChannel(expiration: .ttl(...))` and `GoogleTpuV2Vm(accelerator: ...)`. Leave the argument out to set none. See [MIGRATING.md](../../MIGRATING.md).
- Every factory gets typed output getters for its computed attributes.
- The derivation is automatic: the weekly schema bump re-syncs the beta fixture's MM YAML (`tool/sync_lane_mm_yaml.dart`), so a later pin types new or changed inputs without override edits. Synth output is unchanged.

## 0.30.0 - 2026-09-28

- **Breaking** — targets `hashicorp/google-beta` 8.x (`GoogleBetaProvider` pins `~> 8.0`; the filtered fixture moves to `8.4.0`), so an existing root module needs `terraform init -upgrade`. See [MIGRATING.md](../../MIGRATING.md).
- **Breaking** — the 16 types 8.2 / 8.3 promoted to GA leave this package for `terradart_google` (`GoogleBiglakeHive*` + IAM, `GoogleObservability*Settings`, `GoogleComputeNetworkEdgeSecurityService`); `package:terradart_google_beta/biglake.dart` and `observability.dart` are gone. The catalog is 112 resource factories.

## 0.29.0 - 2026-09-27

Lockstep release. No `terradart_google_beta` API changes.

## 0.28.1 - 2026-09-13

Lockstep release with `terradart_migrate` 0.28.1 (passthrough emission fix — a bare `Map` / `List` parameter no longer comes out as `TfArg.literal`). No `terradart_google_beta` API changes.

## 0.28.0 - 2026-09-13

- **`GoogleBetaProvider.alias`** and a **`provider:`** parameter on every factory and data source. Wrappers keep pinning `provider = google-beta` by default; `provider: 'google-beta.<alias>'` selects an aliased `GoogleBetaProvider(alias: ...)` instead (#666).

## 0.27.0 - 2026-08-30

Lockstep release with `terradart_core` 0.27.0 (`TfVariable` / `Stack.addVariable` and `S3Backend`). No `terradart_google_beta` API changes.
## 0.26.0 - 2026-08-24

Lockstep release with the TerraDart workspace. Schema fixture re-extracted at `hashicorp/google-beta` 7.45.0 (same resource set). No factory or provider API changes.

## 0.25.3 - 2026-08-23

Lockstep release with the TerraDart workspace. No factory or provider changes.

## 0.25.2 - 2026-08-22

- Add an in-package `example/main.dart` (pub.dev pana example check). No
  factory or provider changes; the schema pin now tracks the weekly GA
  bump automatically.

## 0.25.1

- Fill the beta-only `hashicorp/google-beta` catalog: **128 resource
  factories** (74 core + 54 IAM adjuncts) at provider 7.44.0. Wrappers
  pin the `google-beta` provider meta-argument. Coverage is synth +
  `terraform validate` via `beta_leftover_quickstart` (apply-smoke
  skip-listed; beta apply policy is not designed). Data sources stay
  uncurated.

## 0.25.0

- Initial release: `GoogleBetaProvider` and the first curated beta-only
  factory, `GoogleProjectServiceIdentity` (`project` barrel). Versioned in
  lockstep with the TerraDart workspace.
