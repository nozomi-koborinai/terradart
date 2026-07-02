# Migrating terradart

## 0.22.x → 0.23.0

### `StackProvider.toTfJson()` removed

The backwards-compat shim (it just returned `configArgs`) is gone. Read
`configArgs` directly:

```dart
// before
final map = provider.toTfJson();
// after
final map = provider.configArgs;
```

`Backend.toTfJson()` and `TfArg.toTfJson()` are unrelated real APIs and are
unchanged.

### Six string fields became typed enums

The serialized Terraform JSON is unchanged; only the Dart type narrows.

| Factory | Field | New type |
| --- | --- | --- |
| `GoogleAccessContextManagerServicePerimeter` | `perimeterType` | `AccessContextManagerServicePerimeterPerimeterType` |
| `GoogleComputeHaVpnGateway` | `gatewayIpVersion` | `ComputeHaVpnGatewayGatewayIpVersion` |
| `GoogleComputeHaVpnGateway` | `stackType` | `ComputeHaVpnGatewayStackType` |
| `GoogleComputeNetworkPeering` | `stackType` | `ComputeNetworkPeeringStackType` |
| `GoogleComputeNetworkPeering` | `updateStrategy` | `ComputeNetworkPeeringUpdateStrategy` |
| `GoogleComputeRouterPeer` | `advertiseMode` | `ComputeRouterPeerAdvertiseMode` |

Replace the string literal with the enum member:

```dart
// before
stackType: TfArg.literal('IPV4_IPV6'),
// after
stackType: TfArg.literal(ComputeHaVpnGatewayStackType.ipv4Ipv6),
```

## 0.13.0 → 0.14.0

**Breaking** — one curated nested block became typed.

### `connection_tracking_policy` on `google_compute_region_backend_service`

Previously this nested block fell through untyped (`TfArg<Map>`); it is now a
typed helper class with two enums.

```dart
// Before
connectionTrackingPolicy: TfArg.literal({
  'tracking_mode': 'PER_SESSION',
  'connection_persistence_on_unhealthy_backends': 'NEVER_PERSIST',
}),

// After
connectionTrackingPolicy:
    const ComputeRegionBackendServiceRegionBackendServiceConnectionTrackingPolicy(
  trackingMode: RegionBackendServiceTrackingMode.perSession,
  connectionPersistenceOnUnhealthyBackends:
      RegionBackendServiceConnectionPersistence.neverPersist,
),
```

If you did not set `connection_tracking_policy`, no change is needed.

## 0.12.20 → 0.13.0

**Breaking changes** — API-enablement collapse, time-wrapper relocation, and
removal of the unimplemented provider-aliasing surface.

### `Apis.enable` replaces `ApisEnablement` / `ApiEnablement`

The two-layer bundle API is gone; one static call registers the services plus
the propagation `TimeSleep` and returns the dependency list:

```dart
// Before
final apiDeps = ApisEnablement.enable(
  barrels: [Barrels.cloudRun, Barrels.redis],
).registerOn(this);

// After
final apiDeps = Apis.enable(
  this,
  barrels: [Barrels.cloudRun, Barrels.redis],
);
```

Defaults are unchanged (60s propagation, `api` prefix). Callers that built
`ApiEnablement(services: ...)` directly should register the `Apis.required`
list themselves and wire `ResourceDependency` manually.

### `TimeProvider` / `TimeSleep` moved to `terradart_google`

`terradart_core` is provider-neutral again. Import the `time` barrel instead:

```dart
// Before: exported by package:terradart_core/terradart_core.dart
// After:
import 'package:terradart_google/time.dart';
```

### Provider-aliasing surface removed

`GoogleProvider.providerAlias`, `StackProvider.providerAlias`,
`ProviderBinding`, and `Resource.provider` are removed. None of them ever
reached the synthesized Terraform JSON — synth ignored the alias and never
emitted a `provider` meta-argument — so any code passing them was a silent
no-op. Aliasing returns as an end-to-end feature when multi-provider stacks
land.

### Synth validates provider coverage

`Stack.synth()` now throws `StateError` when a registered resource or data
source has no matching provider in `Stack.providers` (matched by the type's
prefix before the first `_`, e.g. `time_sleep` → `time`). Previously Terraform
silently fell back to an unpinned implied provider. Fix: add the missing
provider (e.g. `const TimeProvider()`).

### `GoogleCertificateManagerCertificateMapEntry` — sealed `match`

The provider requires exactly one of `hostname` / `matcher`; both optional
params are replaced by one required sealed `match`:

```dart
// Before
GoogleCertificateManagerCertificateMapEntry(
  // ...
  hostname: TfArg.literal('app.example.com'),
);

// After
GoogleCertificateManagerCertificateMapEntry(
  // ...
  match: CertificateManagerCertificateMapEntryMatch.hostname(
    TfArg.literal('app.example.com'),
  ),
);
// or .matcher(TfArg.literal('PRIMARY'))
```

### `LoggingSavedQueryVisibility.privateVisibility` → `.private`

The enum is now derived from Magic Modules; the value's Dart name matches the
upstream constant directly. Rename `LoggingSavedQueryVisibility.privateVisibility`
to `LoggingSavedQueryVisibility.private` (`.shared` is unchanged).

## 0.12.11 → 0.12.12

**Breaking changes** in `terradart_google` — several curated factories now enforce
GCP / Terraform `exactly_one_of` constraints at compile time via sealed virtual
slots (closes #107 exactly-one debt):

| Factory | Before | After |
|---------|--------|-------|
| `GoogleComputeFirewall` | optional `allow:` / `deny:` | required `rulePolicy:` (`ComputeFirewallAllowPolicy` / `ComputeFirewallDenyPolicy`) |
| `GoogleComputeHealthCheck` | optional `httpHealthCheck:` / `httpsHealthCheck:` / … | required `protocol:` (`ComputeHealthCheckProtocol` variant) |
| `GoogleComputeRegionHealthCheck` | optional per-protocol params | required `protocol:` (`ComputeRegionHealthCheckProtocol` variant) |
| `GoogleMonitoringUptimeCheckConfig` | optional `monitoredResource:` / `resourceGroup:` / `syntheticMonitor:` | required `target:` (`MonitoringUptimeCheckConfigTarget` variant) |
| `GoogleBigqueryJob` | optional `query:` / `load:` / `extract:` / `copy:` | required `jobConfiguration:` (`BigqueryJobConfiguration` variant) |
| `GoogleBigqueryConnection` | optional `cloudSql:` / `aws:` / … | required `backend:` (`BigqueryConnectionBackend` variant) |
| `GoogleCloudbuildTrigger` | optional `filename:` / `build:` / `gitFileSource:` | required `buildSpec:` (`CloudbuildTriggerBuildSpec` variant) |

Example (`GoogleComputeHealthCheck`):

```dart
// Before
GoogleComputeHealthCheck(
  localName: 'api_hc',
  name: TfArg.literal('api-hc'),
  httpsHealthCheck: ComputeHealthCheckHttpsHealthCheckConfig(
    port: TfArg.literal(443),
    requestPath: TfArg.literal('/healthz'),
  ),
);

// After
GoogleComputeHealthCheck(
  localName: 'api_hc',
  name: TfArg.literal('api-hc'),
  protocol: ComputeHealthCheckHttpsHealthCheckConfig(
    port: TfArg.literal(443),
    requestPath: TfArg.literal('/healthz'),
  ),
);
```

Example (`GoogleCloudbuildTrigger` filename path):

```dart
// Before
GoogleCloudbuildTrigger(
  localName: 'main_push',
  name: TfArg.literal('main-push'),
  filename: TfArg.literal('cloudbuild.yaml'),
);

// After
GoogleCloudbuildTrigger(
  localName: 'main_push',
  name: TfArg.literal('main-push'),
  buildSpec: CloudbuildTriggerFilenameSpec(
    filename: TfArg.literal('cloudbuild.yaml'),
  ),
);
```

## 0.12.9 → 0.12.10

**Breaking changes** in `terradart_google` — finite schema fields now use typed
enums instead of `TfArg<String>`:

| Factory | Field | Enum |
|---------|-------|------|
| `GoogleBigqueryDatapolicyDataPolicy` | `dataPolicyType` | `BigqueryDatapolicyDataPolicyType` |
| `GoogleBigqueryReservationAssignment` | `jobType` | `BigqueryReservationAssignmentJobType` |
| `GoogleComputeServiceAttachment` | `connectionPreference` | `ServiceAttachmentConnectionPreference` |
| `GoogleComputeRegionSecurityPolicy` | `type` | `RegionSecurityPolicyType` |
| `GoogleComputeRegionSslPolicy` | `profile` / `minTlsVersion` | `RegionSslPolicyProfile` / `RegionSslPolicyMinTlsVersion` |
| `GoogleComputeTargetTcpProxy` | `proxyHeader` | `TargetTcpProxyProxyHeader` |
| `GoogleComputeTargetSslProxy` | `proxyHeader` | `TargetSslProxyProxyHeader` |
| `GoogleComputeRegionTargetTcpProxy` | `proxyHeader` | `RegionTargetTcpProxyProxyHeader` |
| `GoogleCloudTasksQueue` | `desiredState` | `CloudTasksQueueDesiredState` |
| `GoogleLoggingSavedQuery` | `visibility` | `LoggingSavedQueryVisibility` |
| `GoogleMonitoringSlo` | `calendarPeriod` | `MonitoringSloCalendarPeriod` |
| `GoogleStorageHmacKey` | `state` | `StorageHmacKeyState` |
| `GoogleKmsCryptoKeyVersion` | `state` | `KmsCryptoKeyVersionState` |
| `GoogleSecretManagerSecretVersion` | `deletionPolicy` | `SecretManagerSecretVersionDeletionPolicy` |
| `GoogleComputeInstanceGroupManager` | `listManagedInstancesResults` | `InstanceGroupManagerListManagedInstancesResults` |
| `GoogleComputeRegionInstanceGroupManager` | `listManagedInstancesResults` | `RegionInstanceGroupManagerListManagedInstancesResults` |
| `GoogleSqlUser` | `deletionPolicy` | `SqlUserDeletionPolicy` |

Optional Analytics Hub `discoveryType` fields use
`BigqueryAnalyticsHubDataExchangeDiscoveryType` /
`BigqueryAnalyticsHubListingDiscoveryType`.

`GoogleDnsRecordSet.type` and `GoogleCloudRunV2WorkerPool.launchStage` ship as
enums in `0.12.10` (new factories); no prior `String` API.

Nested blocks that previously accepted `TfArg<Map<String, dynamic>>?` now use
typed helpers:

| Factory | Slot | Helper / enum |
|---------|------|----------------|
| `GoogleComputeRouter` | `bgp` | `ComputeRouterBgp` / `ComputeRouterBgpAdvertiseMode` |
| `GoogleComputeSecurityPolicyRule` | `match` | `ComputeSecurityPolicyRuleMatch` (reuses `SecurityPolicyRuleMatchVersionedExpr`) |
| `GoogleComputeSecurityPolicyRule` | `rateLimitOptions` | `ComputeSecurityPolicyRuleRateLimitOptions` / `ComputeSecurityPolicyRuleRateLimitEnforceOnKey` |
| `GoogleComputeRegionSecurityPolicyRule` | `match` / `rateLimitOptions` | `ComputeRegionSecurityPolicyRule*` types |
| `GoogleEventarcMessageBus` / `GoogleEventarcGoogleApiSource` / `GoogleEventarcPipeline` | `loggingConfig` | `EventarcMessageBusLoggingConfig` / `EventarcMessageBusLogSeverity` |
| `GoogleComputeInstance` | `networkPerformanceConfig.totalEgressBandwidthTier` | `ComputeInstanceNetworkPerformanceConfigTotalEgressBandwidthTier` |
| `GoogleComputeInstanceTemplate` | `networkPerformanceConfig.totalEgressBandwidthTier` | same enum (imported from instance wrapper) |
| `GoogleComputeBackendService` | `localityLbPolicies[].policy.name` | `LocalityLbPolicy` (nested builtin policy) |
| `GoogleComputeSecurityPolicyRule` / `GoogleComputeRegionSecurityPolicyRule` | `preconfiguredWafConfig` / `rateLimitOptions` | WAF exclusion + enforce-on-key helpers / `SecurityPolicyWafExclusionOperator` |
| `GoogleComputeRegionSecurityPolicy` | `rules` / `advancedOptionsConfig` / `ddosProtectionConfig` / `userDefinedFields` | `ComputeRegionSecurityPolicyRegionSecurityPolicy*` helpers |
| `GoogleComputeUrlMap` / `GoogleComputeRegionUrlMap` | `defaultRouteAction` / `routeAction.cachePolicy` / `metadataFilters` | `*UrlMapRouteAction` / `*UrlMapCacheMode` / `*UrlMapMetadataFilterMatchCriteria` |
| `GoogleDnsPolicy` | `alternativeNameServerConfig` | `DnsPolicyAlternativeNameServerConfig` (reuses `ForwardingPath`) |
| `GoogleDnsRecordSet` | `routingPolicy` | `DnsRecordSetRoutingPolicy*` / ILB enums |
| `GoogleDnsResponsePolicyRule` | `localData` | `DnsResponsePolicyRuleLocalData` / `DnsResponsePolicyRuleRecordType` |
| `GooglePubsubTopic` | `schemaSettings` / `ingestionDataSourceSettings` | `PubsubTopicSchemaSettings` / `PubsubTopicIngestionDataSourceSettings` |
| `GoogleGkeHubFleet` | `defaultClusterConfig` | `GkeHubFleetDefaultClusterConfig` + posture / binary-auth enums |
| `GoogleGkeBackupBackupPlan` | `backupSchedule` | `GkeBackupBackupPlanBackupSchedule` / `GkeBackupBackupPlanDayOfWeek` |
| `GoogleGkeBackupRestorePlan` | `restoreConfig` | `GkeBackupRestorePlanRestoreConfig` + conflict / restore-mode enums |
| `GoogleCloudRunV2WorkerPool` | `instanceSplits` / `scaling` / `template` | `CloudRunV2WorkerPool*` helpers (reuses `EmptyDirMedium` / `ScalingMode`) |
| `GoogleBigqueryDatapolicyDataPolicy` | `dataMaskingPolicy` | `BigqueryDatapolicyDataPolicyDataMaskingPolicy` / `BigqueryDatapolicyDataPolicyPredefinedExpression` |
| `GoogleArtifactRegistryRepository` | `remoteRepositoryConfig.aptRepository` / `yumRepository` | `ArtifactRegistryAptRepositoryBase` / `ArtifactRegistryYumRepositoryBase` |

```dart
// 0.12.9
dataPolicyType: TfArg.literal('DATA_MASKING_POLICY'),
connectionPreference: TfArg.literal('ACCEPT_AUTOMATIC'),

// 0.12.10
dataPolicyType: TfArg.literal(BigqueryDatapolicyDataPolicyType.dataMaskingPolicy),
connectionPreference:
    TfArg.literal(ServiceAttachmentConnectionPreference.acceptAutomatic),
```

## 0.12.2 → 0.12.3

**Breaking change** in `terradart_google` for users of
`GoogleIamWorkloadIdentityPoolProvider` (shipped in 0.12.2).

The trust-binding oneof (`oidc` / `aws` / `saml` / `x509`) is now a **sealed**
`IamWorkloadIdentityPoolProviderTrustSource` passed as required `trustSource`,
matching the convention used by `GoogleCloudSchedulerJob` and
`GoogleFirestoreBackupSchedule`.

```dart
// 0.12.2
GoogleIamWorkloadIdentityPoolProvider(
  // ...
  oidc: IamWorkloadIdentityPoolProviderOidc(
    issuerUri: TfArg.literal('https://token.actions.githubusercontent.com'),
  ),
);

// 0.12.3
GoogleIamWorkloadIdentityPoolProvider(
  // ...
  trustSource: IamWorkloadIdentityPoolProviderOidcTrust(
    issuerUri: TfArg.literal('https://token.actions.githubusercontent.com'),
  ),
);
```

Renamed helper types: `…Oidc` → `…OidcTrust`, `…Aws` → `…AwsTrust`,
`…Saml` → `…SamlTrust`, `…X509` → `…X509Trust`. Import from
`package:terradart_google/iam.dart`.

Bump lockstep:

```yaml
dependencies:
  terradart_core: ^0.12.3
  terradart_google: ^0.12.3
```

---

## Unreleased — `terradart codegen` removed

The `terradart codegen` CLI subcommand and `runCodegen` library export are **removed**.
Maintainer generation is **`terradart wrap` only** (`wrap-init`, `wrap-promote` unchanged).

**If you only consumed `terradart_google`:** no Stack changes required.

**If you ran `terradart codegen` locally:** stop using it. Import curated factories from
`terradart_google`, or open a feature issue to request a new curated resource.

`dart pub global activate terradart_codegen` remains valid for **maintainers** running
`terradart wrap` against the repo fixtures.

---

## 0.11.x → 0.12.x

There are **no breaking changes** to the `terradart_core` or `terradart_google`
public APIs compared with `0.11.0`. Bump all three pub packages in lockstep:

```yaml
dependencies:
  terradart_core: ^0.12.0
  terradart_google: ^0.12.0
```

```bash
dart pub global activate terradart_codegen ^0.12.0
```

(`0.12.1` / `0.12.2` are lockstep patches — same caret bump steps.)

### Additive in 0.12.2

- **`terradart_google`** — two new curated factories:
  `google_iam_workload_identity_pool_provider`,
  `google_iap_web_backend_service_iam_binding`, plus `package:terradart_google/iap.dart`.
  Catalog grows to **121 curated resource factories + 1 data source** (122 entries).
  No changes to existing factory signatures.

### Additive in 0.12.0

- **`terradart_google`** — static `terradartCatalog` in
  `package:terradart_google/catalog.dart` (metadata only; factory APIs unchanged).
  **118** curated resource factories + 1 data source at initial `0.12.0` ship
  (grew to **121** + 1 in `0.12.2`).
- **`terradart-mcp`** (optional) — MCP catalog server binary; not on pub.dev.
  See [Agent install](https://terradart.dev/docs/agent/install/).

### 0.12.1

- MCP `list_resources` / `list_barrels` return JSON objects, not bare arrays
  (strict MCP `structuredContent` clients).

No Stack source edits are required when upgrading from `0.11.0`.

---

# Migrating from terradart 0.10.0 to 0.11.0

This guide covers every breaking change introduced between `0.10.0` and
`0.11.0`. Two coordinated themes: the Stack API surface (§1, ADR-0017) and
the codegen identifier rename (§2, ADR-0016). All changes are mechanical;
none require an architectural rethink at the consumer.

`0.9.0` → `0.10.0` was additive (Firestore document curation) and required
no migration. The 0.9.0 migration guide is preserved below for archival
reference.

---

## Before you start

All three packages — `terradart_core`, `terradart_codegen`, and
`terradart_google` — must be bumped in lockstep:

```yaml
# pubspec.yaml
dependencies:
  terradart_core: ^0.11.0
  terradart_google: ^0.11.0
```

If you run codegen locally:

```bash
dart pub global activate terradart_codegen ^0.11.0
```

---

## 1. Stack API surface changes (ADR-0017)

### 1.1 `Stack.synth({required outDir})` split into `synth()` + `writeTo(outDir)`

`Stack.synth` no longer performs file IO. It is now a pure in-memory step
that returns a `SynthResult` carrying the encoded `tfJson` plus the optional
`dartConstants` source for AppExports. The new `Stack.writeTo(outDir)`
method is the file-IO wrapper that writes `main.tf.json` (and, when
`setAppExportsOutputPath` was called, the generated Dart constants file).

```dart
// BEFORE (0.10.0):
await stack.synth(outDir: 'tf-out');

// AFTER (0.11.0) — same end-to-end behaviour:
await stack.writeTo('tf-out');

// AFTER (0.11.0) — in-memory only, no disk write:
final result = stack.synth();
// result.tfJson, result.dartConstants
```

`writeTo` throws `StateError` atomically — **before any disk write** — when
`addExport` was called without `setAppExportsOutputPath`. v0.10.x silently
dropped the exports in that case; v0.11.x makes the misconfiguration fail
loudly at synth time.

### 1.2 `StackSynth` removed from the `terradart_core` public barrel

`StackSynth` is annotated `@internal` and is no longer re-exported from
`package:terradart_core/terradart_core.dart`. Call the public method on
your `Stack` instance instead.

```dart
// BEFORE (0.10.0):
import 'package:terradart_core/terradart_core.dart';
final result = StackSynth.synth(stack);

// AFTER (0.11.0):
final result = stack.synth();
```

If you really need the internal synth function (advanced cases — custom
tooling that drives synth without a `Stack` instance), import it via the
deep path; expect no semver protection on that surface:

```dart
// AFTER (0.11.0) — escape hatch, not recommended:
import 'package:terradart_core/src/synth/stack_synth.dart';
```

### 1.3 `Stack`, `Resource`, `Data` promoted to `abstract base class`

The three foundational classes are now `abstract base class` (Dart 3
class-modifier feature). Their state — dedup maps, lifecycle wiring — is
owned by the base class and must not be bypassed via `implements`.

```dart
// BEFORE (0.10.0):
class OrdersStack extends Stack { ... }

// AFTER (0.11.0):
final class OrdersStack extends Stack { ... }
// (or `base class` / `sealed class` if you have a subclass tree)
```

`implements Stack` / `implements Resource` / `implements Data` are now
compile errors. This was already a foot-gun in v0.10 — a class that
satisfied the interface without inheriting the state would silently break
synth — so the new constraint replaces a runtime hazard with a static
check.

---

## 2. Codegen identifier rename (ADR-0016)

The dollar-prefixed identifiers on `Resource` subclasses are renamed to
their canonical Dart names. External code that read them by `$`-prefixed
name must drop the prefix. The two getters are now annotated `@protected`
(from `package:meta`).

### 2.1 `$tfType` → `tfType`, `$sensitiveFields` → `sensitiveFields`, `$supportsDeletionProtection` → `supportsDeletionProtection`

```dart
// BEFORE (0.10.0):
final String type = MyResource.$tfType;
final Set<String> sensitive = myResource.$sensitiveFields;
final bool gated = myResource.$supportsDeletionProtection;

// AFTER (0.11.0):
final String type = MyResource.tfType;
// ignore: invalid_use_of_protected_member  // documenting the access pattern
final Set<String> sensitive = myResource.sensitiveFields;
// ignore: invalid_use_of_protected_member  // documenting the access pattern
final bool gated = myResource.supportsDeletionProtection;
```

The `@protected` annotation means that reads from outside the subclass
hierarchy trigger an analyzer warning. The synth-time path (`TfJsonEncoder`)
is the privileged in-library consumer the protected contract permits. If
you have a legitimate need to read these from outside (introspection,
custom diagnostics), add an `// ignore: invalid_use_of_protected_member`
directive **with a justification comment** at the read site.

Mechanical sed recipe for the rename (safe — it only matches the
`$`-prefixed forms):

```bash
find . -name '*.dart' \
  -exec sed -i.bak \
    -e 's/\$tfType\b/tfType/g' \
    -e 's/\$sensitiveFields\b/sensitiveFields/g' \
    -e 's/\$supportsDeletionProtection\b/supportsDeletionProtection/g' \
    {} \;
```

Then review each call site and either keep the bare read (if you're inside
a subclass) or add the `// ignore: invalid_use_of_protected_member`
directive (if you're outside).

### 2.2 `TerraformEnum` interface

`terradart_core` 0.11.0 introduces `abstract interface class TerraformEnum`
with a single `String get terraformValue` contract. `TfArgLiteral.toTfJson`
now routes enum dispatch through `if (v is TerraformEnum)` rather than the
previous duck-typed `dynamic.terraformValue` cast.

Codegen-emitted enums (everything in `terradart_google`) implement
`TerraformEnum` automatically — no consumer action needed.

If you hand-rolled a Terraform-mapped enum to pass to
`TfArg<MyEnum>.literal(...)`, add the `implements` clause and the
`@override` keyword:

```dart
// BEFORE (0.10.0):
enum CustomMode {
  fooBar('FOO_BAR'),
  bazQux('BAZ_QUX');

  const CustomMode(this.terraformValue);
  final String terraformValue;
}

// AFTER (0.11.0):
enum CustomMode implements TerraformEnum {
  fooBar('FOO_BAR'),
  bazQux('BAZ_QUX');

  const CustomMode(this.terraformValue);
  @override
  final String terraformValue;
}
```

Without the `implements TerraformEnum` clause, the `is TerraformEnum`
check at synth time will not recognise your enum and the value will fall
through to the generic `Object.toString()` path — almost certainly not
what you want.

---

## 3. Cookbook example

The [`terradart-cookbook`](https://github.com/nozomi-koborinai/terradart-cookbook)
repo's recipes will be regenerated against v0.11.0. If you cloned a recipe
before that update, apply the §1 + §2 changes above to the recipe's stack
file.

---

# Migrating from terradart 0.8.0-dev to 0.9.0

This guide covers every breaking change introduced between `0.8.0-dev` and
`0.9.0`. Work through the sections in order: the Stack API changes (§1) are
quick mechanical edits; the sensitive-field correctness fix (§2) may require
an architectural decision; the naming changes (§3) are the largest surface
but are mostly mechanical.

For the full machine-readable rename table see
`packages/terradart_codegen/test/codegen/naming_audit/rename_list.json`
(481 nested-helper renames, 199 TfArg-wrap field renames, 7 enum renames).

---

## Before you start

All four packages — `terradart_annotations`, `terradart_core`,
`terradart_codegen`, and `terradart_google` — must be bumped in lockstep.
Update all four in your `pubspec.yaml` at the same time.

---

## 1. Stack API surface changes

### 1.1 `Stack.synth` is now concrete

`Stack.synth` is no longer abstract. Remove the 11-line override that
`0.x` examples carried — the base class now handles writing `main.tf.json`:

```dart
// BEFORE (0.8.0-dev) — delete this override:
@override
Future<void> synth({required String outDir}) async {
  final result = StackSynth.synth(this);
  await Directory(outDir).create(recursive: true);
  final tfFile = File('$outDir/main.tf.json');
  await tfFile.writeAsString(
    const dart_convert.JsonEncoder.withIndent('  ').convert(result.tfJson),
  );
}

// AFTER (0.9.0) — nothing. The base implementation does the same thing.
```

If you need custom file layout (e.g. writing `SynthResult.dartConstants` as
well), override `writeTo` rather than `synth`: in v0.11.0+ `synth()` is the
in-memory step that returns a `SynthResult`, and `writeTo(outDir)` is the
file-IO wrapper. Calling `synth()` from your override gives you the same
`tfJson` / `dartConstants` payload to lay out however you need.

### 1.2 `JsonEncoder` → `TfJsonEncoder`

The public JSON encoder was renamed to avoid collision with `dart:convert`.
Drop the `dart:convert` workaround import and switch to the terradart type:

```dart
// BEFORE (0.8.0-dev):
import 'dart:convert' as dart_convert;
// ...
final encoded = const dart_convert.JsonEncoder.withIndent('  ').convert(map);

// AFTER (0.9.0):
// No import needed — TfJsonEncoder is re-exported from terradart_core.
// If you called it for encoding helpers, use the static methods directly:
final encoded = TfJsonEncoder.encodeArgMap(argMap);
```

Mechanical sed recipe (safe — it only targets the qualified form):

```bash
find . -name '*.dart' \
  -exec sed -i.bak 's/dart_convert\.JsonEncoder/TfJsonEncoder/g' {} \;
```

Check for and remove orphaned `import 'dart:convert' as dart_convert;` lines
after applying the above.

### 1.3 `LocalBackend` replaces handwritten `terraform.tf`

`0.8.x` examples wrote a separate `terraform.tf` file by hand for local-state
workflows. `0.9.0` ships a typed `LocalBackend`:

```dart
// BEFORE (0.8.0-dev) — handwritten file and no backend arg:
class MyStack extends Stack {
  MyStack() : super(providers: [...]);
}
// Separate tool/terraform.tf with: terraform { backend "local" {} }

// AFTER (0.9.0) — pass it to the constructor:
class MyStack extends Stack {
  MyStack()
      : super(
          providers: [...],
          backend: const LocalBackend(),
        );
}
```

Delete the handwritten `terraform.tf` (or `tf-out/terraform.tf`) file — it
is now superseded by the `LocalBackend` block emitted into `main.tf.json`.

**State migration note.** If you were previously using a GCS backend and are
switching to `LocalBackend` for a sample or dogfood stack, Terraform requires
explicit consent:

```bash
terraform init -migrate-state   # interactive prompt to copy state locally
# or, to start fresh with no state:
terraform init -reconfigure
```

### 1.4 `Stack(devMode: true)` for sample and dogfood stacks

`devMode` is a new constructor parameter that flips `deletion_protection` to
`false` on every resource that supports it — so `terraform destroy` works
without manual overrides in development. Production stacks leave it at the
default (`false`).

```dart
// Dogfood / sample stacks:
class SampleStack extends Stack {
  SampleStack() : super(providers: [...], devMode: true);
}

// Production stacks — omit the flag (defaults to false):
class ProdStack extends Stack {
  ProdStack() : super(providers: [...], backend: const GcsBackend(bucket: '...'));
}
```

---

## 2. Synth correctness changes (sensitive fields)

### 2.1 `SensitiveLiteralError` replaces silent masking

In `0.x`, passing a literal string to a `@Sensitive`-annotated field (e.g.
`password`) caused synth to emit an empty string — which Terraform then
rejected at `apply` time with an HTTP 400 error. That silent failure is now
replaced by a `SensitiveLiteralError` thrown at synth time.

**Recovery option A — variable (recommended for production):**

```dart
// BEFORE (0.8.0-dev) — would silently produce an empty password in output:
GoogleSqlUser(
  localName: 'app_user',
  instance: TfArg.ref(db.nameRef),
  name: TfArg.literal('app'),
  password: TfArg.literal('hunter2'),  // BAD — throws SensitiveLiteralError in v1.0
)

// AFTER (0.9.0):
GoogleSqlUser(
  localName: 'app_user',
  instance: TfArg.ref(db.nameRef),
  name: TfArg.literal('app'),
  password: TfArg.variable('db_password'),  // value supplied at apply time
)
```

Then declare the variable and pass it at apply time:

```hcl
# variables.tf (or inline in your Stack if you use Variable<T>):
variable "db_password" { sensitive = true }
```

```bash
terraform apply -var="db_password=hunter2"
# or via a .tfvars file — never commit the value.
```

**Recovery option B — write-only field (simpler for one-off secrets):**

Resources that expose a write-only variant (`<field>_wo`) accept literal
values; the `_wo` fields are write-once and exempt from the sensitive check:

```dart
GoogleSqlUser(
  localName: 'app_user',
  instance: TfArg.ref(db.nameRef),
  name: TfArg.literal('app'),
  passwordWo: TfArg.literal('hunter2'),  // write-only — exempt from check
)
```

The `_wo` option is convenient for secrets that never change after initial
provisioning. Use `TfArg.variable` when the value needs to be rotated.

### 2.2 `encodeArgMapWithSensitive` signature change

If you called `TfJsonEncoder.encodeArgMapWithSensitive` directly (uncommon
— only relevant if you built a custom resource wrapper), the signature is
unchanged but the function now **throws** instead of masking. Update callers
to handle `SensitiveLiteralError`.

---

## 3. Naming changes (Plan 3)

### 3.1 Nested helper class renames

Nested helper classes are now always prefixed with the parent resource's
class name to eliminate collision between helpers from different resources
(e.g. `Template` existed in both `cloud_run` and `cloud_build`).

The 15 most commonly encountered renames from cookbook rehearsal:

| Old (0.8.0-dev) | New (0.9.0) | Barrel |
|---|---|---|
| `Settings(` | `SqlDatabaseInstanceSettings(` | `sql` |
| `IpConfiguration(` | `SqlDatabaseInstanceIpConfiguration(` | `sql` |
| `DatabaseFlag(` | `SqlDatabaseInstanceDatabaseFlag(` | `sql` |
| `Replication.` | `SecretManagerSecretReplication.` | `secret_manager` |
| `Template(` | `CloudRunV2ServiceTemplate(` | `cloud_run` |
| `ServiceContainer(` | `CloudRunV2ServiceServiceContainer(` | `cloud_run` |
| `EnvVar(` | `CloudRunV2ServiceEnvVar(` | `cloud_run` |
| `EnvVarFromLiteral(` | `CloudRunV2ServiceEnvVarFromLiteral(` | `cloud_run` |
| `EnvVarFromSecret(` | `CloudRunV2ServiceEnvVarFromSecret(` | `cloud_run` |
| `PushConfig(` | `PubsubSubscriptionPushConfig(` | `pubsub` |
| `OidcToken(` | `PubsubSubscriptionOidcToken(` | `pubsub` |
| `AlertCondition(` | `MonitoringAlertPolicyAlertCondition(` | `monitoring` |
| `ConditionThreshold(` | `MonitoringAlertPolicyConditionThreshold(` | `monitoring` |
| `Aggregation(` | `MonitoringAlertPolicyAggregation(` | `monitoring` |
| `MonitoringUptimeCheckHttpCheck(` | `MonitoringUptimeCheckConfigMonitoringUptimeCheckHttpCheck(` | `monitoring` |

Additional high-frequency renames (Cloud Run Job, Monitoring UptimeCheck):

| Old | New |
|---|---|
| `JobTemplate(` | `CloudRunV2JobJobTemplate(` |
| `TaskTemplate(` | `CloudRunV2JobTaskTemplate(` |
| `MonitoringUptimeCheckMonitoredResource(` | `MonitoringUptimeCheckConfigMonitoringUptimeCheckMonitoredResource(` |
| `MonitoringUptimeCheckResourceGroup(` | `MonitoringUptimeCheckConfigMonitoringUptimeCheckResourceGroup(` |
| `VersionTemplate(` (KMS) | `KmsCryptoKeyVersionTemplate(` |

The complete list of all 481 nested-helper renames is in
`packages/terradart_codegen/test/codegen/naming_audit/rename_list.json`
under the `nested_helper_renames` key.

### 3.2 Getter renames

| Old (0.8.0-dev) | New (0.9.0) | Notes |
|---|---|---|
| `<serviceAccount>.member` | `<serviceAccount>.iamMember` | `GoogleServiceAccount` only |

New **additive** getters (no migration needed, but useful to know):

- `GoogleCloudRunV2Service.locationRef` — `TfRef<String>` for the service
  location, useful in `GoogleCloudRunV2ServiceIamMember(location: ...)`.
- `GoogleCloudRunV2Job.locationRef` — same for jobs.

### 3.3 Enum value renames (verbose-natural)

Short abbreviated names were replaced with self-documenting spellings.

**`Comparison` enum** (barrel: `monitoring`):

| Old | New |
|---|---|
| `Comparison.lt` | `Comparison.lessThan` |
| `Comparison.gt` | `Comparison.greaterThan` |
| `Comparison.le` | `Comparison.lessThanOrEqual` |
| `Comparison.ge` | `Comparison.greaterThanOrEqual` |
| `Comparison.eq` | `Comparison.equalTo` |
| `Comparison.ne` | `Comparison.notEqualTo` |

**`Aligner` enum** (barrel: `monitoring`):

| Old | New |
|---|---|
| `Aligner.nextOlder` | `Aligner.alignNextOlder` |

### 3.4 Non-mechanical pattern changes

These three patterns cannot be handled by a regex substitution — they require
reading context and making a judgment call.

**Pattern A: `name:` field now takes `TfArg<String>`**

`CloudRunV2ServiceEnvVar.name` (and the Job equivalent `CloudRunV2JobJobEnvVar.name`)
changed from bare `String` to `TfArg<String>`. Any bare string literal must
be wrapped:

```dart
// BEFORE (0.8.0-dev):
EnvVar(
  name: 'LOG_LEVEL',
  source: EnvVarFromLiteral(TfArg.literal('info')),
)

// AFTER (0.9.0):
CloudRunV2ServiceEnvVar(
  name: TfArg.literal('LOG_LEVEL'),  // wrap with TfArg.literal
  source: CloudRunV2ServiceEnvVarFromLiteral(TfArg.literal('info')),
)
```

**Pattern B: `const` removal for classes with `TfArg<T>` fields**

Classes whose fields changed from bare Dart types (`String`, `int`, `bool`) to
`TfArg<T>` are no longer `const`-constructible. Remove `const` from any call
site where the class now has `TfArg<T>` fields:

```dart
// BEFORE (0.8.0-dev) — field types were bare primitives:
const MonitoringUptimeCheckMonitoredResource(
  type: 'uptime_url',
  labels: {'host': 'example.com'},
)

// AFTER (0.9.0) — fields are TfArg<T>; drop const, wrap values:
MonitoringUptimeCheckConfigMonitoringUptimeCheckMonitoredResource(
  type: TfArg.literal('uptime_url'),
  labels: TfArg.literal({'host': 'example.com'}),
)
```

**Pattern C: `MonitoringUptimeCheckConfigMonitoringUptimeCheckMonitoredResource.type` is `TfArg<String>`**

Specifically — `type` was a required bare `String` and is now `TfArg<String>`.
Any use of this field needs `TfArg.literal(...)` wrapping (covered by Pattern B
above, but called out because it's a non-optional required field).

### 3.5 Bulk `find` / `sed` recipes

Run these from the root of your Dart project. The `-i.bak` flag creates
backup files (remove them with `find . -name '*.bak' -delete` afterwards).
Review the diff before committing — these are heuristic pattern substitutions,
not type-aware refactors.

```bash
# ---- SQL nested helpers ----
find . -name '*.dart' -exec sed -i.bak \
  's/\bSettings(/SqlDatabaseInstanceSettings(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bIpConfiguration(/SqlDatabaseInstanceIpConfiguration(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bDatabaseFlag(/SqlDatabaseInstanceDatabaseFlag(/g' {} \;

# ---- Secret Manager ----
find . -name '*.dart' -exec sed -i.bak \
  's/\bReplication\.\(auto\|userManaged\)/SecretManagerSecretReplication.\1/g' {} \;

# ---- Cloud Run v2 Service ----
find . -name '*.dart' -exec sed -i.bak \
  's/\bTemplate(/CloudRunV2ServiceTemplate(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bServiceContainer(/CloudRunV2ServiceServiceContainer(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bEnvVar(/CloudRunV2ServiceEnvVar(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bEnvVarFromLiteral(/CloudRunV2ServiceEnvVarFromLiteral(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bEnvVarFromSecret(/CloudRunV2ServiceEnvVarFromSecret(/g' {} \;

# ---- Cloud Run v2 Job (apply after the Service renames above) ----
# Note: JobTemplate / TaskTemplate do not collide with the Service renames.
find . -name '*.dart' -exec sed -i.bak \
  's/\bJobTemplate(/CloudRunV2JobJobTemplate(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bTaskTemplate(/CloudRunV2JobTaskTemplate(/g' {} \;

# ---- Pub/Sub ----
find . -name '*.dart' -exec sed -i.bak \
  's/\bPushConfig(/PubsubSubscriptionPushConfig(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bOidcToken(/PubsubSubscriptionOidcToken(/g' {} \;

# ---- Monitoring alert policy ----
find . -name '*.dart' -exec sed -i.bak \
  's/\bAlertCondition(/MonitoringAlertPolicyAlertCondition(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bConditionThreshold(/MonitoringAlertPolicyConditionThreshold(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bAggregation(/MonitoringAlertPolicyAggregation(/g' {} \;

# ---- Monitoring uptime check (long names) ----
find . -name '*.dart' -exec sed -i.bak \
  's/\bMonitoringUptimeCheckMonitoredResource(/MonitoringUptimeCheckConfigMonitoringUptimeCheckMonitoredResource(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bMonitoringUptimeCheckHttpCheck(/MonitoringUptimeCheckConfigMonitoringUptimeCheckHttpCheck(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bMonitoringUptimeCheckResourceGroup(/MonitoringUptimeCheckConfigMonitoringUptimeCheckResourceGroup(/g' {} \;

# ---- IAM getter rename ----
# CAUTION: inspect the diff. Terraform's `member:` argument name on IAM
# binding resources is UNRELATED to the Dart getter and must NOT change.
# This recipe targets the getter call pattern `.member` (preceded by
# identifier chars, not a colon), which is safe in the vast majority of cases.
find . -name '*.dart' -exec sed -i.bak \
  's/\.member\b/.iamMember/g' {} \;

# ---- Enum: Comparison ----
find . -name '*.dart' -exec sed -i.bak \
  's/\bComparison\.lt\b/Comparison.lessThan/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bComparison\.gt\b/Comparison.greaterThan/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bComparison\.le\b/Comparison.lessThanOrEqual/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bComparison\.ge\b/Comparison.greaterThanOrEqual/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bComparison\.eq\b/Comparison.equalTo/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bComparison\.ne\b/Comparison.notEqualTo/g' {} \;

# ---- Enum: Aligner ----
find . -name '*.dart' -exec sed -i.bak \
  's/\bAligner\.nextOlder\b/Aligner.alignNextOlder/g' {} \;

# ---- Cleanup backups ----
find . -name '*.bak' -delete
```

**After running the recipes:** run `dart analyze` and fix any remaining
errors. The recipes above cover the 15 most common renames; projects that
use Compute, Cloud Build, Firestore, or Cloud Functions helpers will also
need renames from the full JSON.

---

## 4. Cookbook example

The `terradart-cookbook` repository's `single-project-app` recipe has been
fully migrated to the v0.9.0 API surface. See the `v0.9.0` tag in that repo
for a working end-to-end reference, including:

- `Stack(devMode: true)` usage
- `LocalBackend` constructor arg instead of handwritten `terraform.tf`
- All nested helper class renames applied
- `TfArg.variable` for the database password

---

## Quick reference: what changed and why

| Change | Why |
|---|---|
| `Stack.synth` concrete | Removes boilerplate that every example duplicated |
| `JsonEncoder` → `TfJsonEncoder` | Avoids shadowing `dart:convert.JsonEncoder` |
| `LocalBackend` typed | Consistent with `GcsBackend`; eliminates handwritten HCL |
| `Stack(devMode: true)` | Keeps `deletion_protection` out of dogfood teardown loops |
| `SensitiveLiteralError` | v0.x silent empty-string masking caused apply-time 400s |
| Nested helper prefixes | Eliminates cross-barrel name collisions (e.g. `Template`) |
| `.member` → `.iamMember` | Avoids confusion with Terraform's `member:` argument |
| Verbose enum names | `Comparison.gt` is cryptic; `greaterThan` is self-documenting |
