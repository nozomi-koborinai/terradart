# Changelog

## Unreleased

- **Breaking:** `provider:` takes a registered `GoogleBetaProvider` instance instead of `'google-beta.<alias>'`; the wrappers override `Resource.defaultProvider` to keep `provider = google-beta` by default. See [MIGRATING.md](../../MIGRATING.md#providers-are-instances).
- **Breaking:** an argument the provider schema marks sensitive is `Sensitive<T>` — a variable, an expression or an attribute getter, never `.literal(...)`, write-only `_wo` arguments included. See [MIGRATING.md](../../MIGRATING.md#sensitive-arguments-take-no-literal).
- **Breaking:** every generated enum is an extension type implementing `TfArg<String>`, so an enum slot takes a member bare (`.member` instead of `.literal(.member)`). See [MIGRATING.md](../../MIGRATING.md#enums-are-arguments).
- **Breaking:** every factory takes its local name as the first positional argument. See [MIGRATING.md](../../MIGRATING.md#the-local-name-is-the-first-argument).

## 0.31.0 - 2026-10-01

- **Breaking** — generated type names are short: a derived helper, enum or nested sealed type is named after its resource and its own block or attribute instead of the whole block path, a name two blocks would share takes the nearest parent that tells them apart, identical blocks share one helper, and no name repeats the words its resource stem ends with. 170 types are renamed (`ComputeFutureReservationReservationMode` → `ComputeFutureReservationMode`). Arguments, variant constructors and synth output are unchanged; `dart analyze` lists the old names. See [MIGRATING.md](../../MIGRATING.md#generated-type-names-are-short).
- 586 new `<name>Ref` getters, one per input a resource or data source takes (`TfRef<String> get scopeIdRef`), so another argument, an output or a constant reads what the input is set to with `.ref(...)`.
- **Breaking** — 39 value-list fields in helper classes take their element type: `TfArg<List<String>>` / `TfArg<List<num>>` instead of `TfArg<List<Object?>>`. Synth output is unchanged. See `MIGRATING.md`.
- **Breaking** — a Magic Modules `write_only` input and its plaintext sibling are one nullable sealed argument, as the provider rejects setting both: `FirebaseAiLogicConfigGenerativeLanguageConfig(apiKey: .apiKeyWo(...))` instead of separate `apiKey` / `apiKeyWo` fields.
- Every resource has a `ref` getter returning `RefTo<ItsClass>`, and so does every data source that reads a resource of this package — the reference the arguments naming another resource will take. Additive.
- **Breaking** — requires Dart 3.10 (`sdk: ^3.10.0`, was `^3.6.0`). The generated wrappers were already formatted in the Dart 3.7+ tall style, so the constraint now matches them (pub.dev static analysis no longer reports a formatter mismatch).
- **Breaking** — nested blocks take typed helper classes. The 114 inputs that were `TfArg<Map<String, dynamic>>` / `TfArg<List<Map<String, dynamic>>>` now take a generated helper (`ComputeFutureReservationTimeWindow`, `List<ApiGatewayApiConfigGrpcServices>`, ...), for every factory. See [MIGRATING.md](../../MIGRATING.md).
- **Breaking** — inputs with a fixed value set are enums (67 generated enums, top level and inside helpers), read from the resource's Magic Modules YAML: `direction: TfArg.literal(ComputeNetworkFirewallPolicyPacketMirroringRuleDirection.ingress)` instead of `TfArg.literal('INGRESS')`.
- **Breaking** — Magic Modules `exactly_one_of` groups are sealed: `GoogleApiGatewayApiConfig` takes one required `spec` (`.openapiDocuments(...)` / `.grpcServices(...)`), and the `email_notification_settings` block is itself a sealed type (`emailNotificationSettings: .disableAllNotifications(...)`).
- **Breaking** — Magic Modules `conflicts` sets are nullable sealed arguments: 4 groups on 3 resources, e.g. `GoogleFirebaseHostingChannel(expiration: .ttl(...))` and `GoogleTpuV2Vm(accelerator: ...)`. Leave the argument out to set none. See [MIGRATING.md](../../MIGRATING.md).
- Every factory gets typed output getters for its computed attributes.
- The derivation is automatic: the weekly schema bump re-syncs the beta fixture's MM YAML (`tool/sync_lane_mm_yaml.dart`), so a later pin types new or changed inputs without override edits. Synth output is unchanged.
- Generated wrappers encode optional inputs as null-aware map elements (`'k': ?x`, `'k': ?x?.toTfJson()`) instead of `if (x != null) 'k': x` guards, regenerated with `terradart wrap`. No API change; synth output is unchanged.

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
