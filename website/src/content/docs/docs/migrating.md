---
title: Migrating
description: Upgrade notes for terradart_google — breaking changes in v0.12.10 and v0.12.12.
---

Read this page before bumping **`terradart_google`** across minor lines or when a release note calls out breaking API changes.

The canonical, full migration history lives in the repo: [MIGRATING.md on GitHub](https://github.com/nozomi-koborinai/terradart/blob/main/MIGRATING.md).

## 0.12.11 → 0.12.12 (sealed exactly-one slots)

**`0.12.12`** enforces GCP `exactly_one_of` groups at compile time on seven existing factories. Optional per-block params (`allow` / `deny`, `httpsHealthCheck`, `query`, `filename`, …) become a **single required sealed virtual slot** (`rulePolicy`, `protocol`, `jobConfiguration`, `buildSpec`, …).

Bump lockstep:

```yaml
dependencies:
  terradart_core: ^0.12.12
  terradart_google: ^0.12.12
```

| Factory | Before | After |
| --- | --- | --- |
| `GoogleComputeFirewall` | `allow:` / `deny:` | `rulePolicy:` |
| `GoogleComputeHealthCheck` | `httpsHealthCheck:` / … | `protocol:` |
| `GoogleComputeRegionHealthCheck` | per-protocol optional blocks | `protocol:` |
| `GoogleMonitoringUptimeCheckConfig` | `monitoredResource:` / … | `target:` |
| `GoogleBigqueryJob` | `query:` / `load:` / … | `jobConfiguration:` |
| `GoogleBigqueryConnection` | `cloudSql:` / `aws:` / … | `backend:` |
| `GoogleCloudbuildTrigger` | `filename:` / `build:` / … | `buildSpec:` |

Full tables and before/after examples: [MIGRATING.md — 0.12.11 → 0.12.12](https://github.com/nozomi-koborinai/terradart/blob/main/MIGRATING.md#01211--01212).

---

## 0.12.9 → 0.12.10 (typed enums)

Read this section before bumping **`terradart_google` from `0.12.9` to `0.12.10`** (or any `^0.12.10` caret that resolves to `0.12.10+`). Patch releases within `0.12.10` are additive only; the breaking surface below landed in **`0.12.10`**.

## Lockstep bumps

Bump all workspace packages together:

```yaml
dependencies:
  terradart_core: ^0.12.10
  terradart_google: ^0.12.10
```

Check [pub.dev](https://pub.dev/packages/terradart_core) for the latest `0.12.x` patch.

## What changed in 0.12.10

`terradart_google` now uses **typed enums** and **nested helper classes** wherever the Terraform provider schema exposes a finite set of string values or a structured nested block. Fields that used to accept `TfArg<String>` or `TfArg<Map<String, dynamic>>?` may now require enum constants or helper `encode()` types.

`dart analyze` surfaces most mismatches immediately — string literals that compiled on `0.12.9` no longer type-check.

### Top-level enum fields

| Factory | Field | Enum |
| --- | --- | --- |
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

Optional Analytics Hub `discoveryType` fields use `BigqueryAnalyticsHubDataExchangeDiscoveryType` / `BigqueryAnalyticsHubListingDiscoveryType`.

Factories introduced in `0.12.10` (for example `GoogleDnsRecordSet.type`, `GoogleCloudRunV2WorkerPool.launchStage`) ship as enums from day one — there is no prior `String` API to migrate.

### Nested helper blocks

| Factory | Slot | Helper / enum |
| --- | --- | --- |
| `GoogleComputeRouter` | `bgp` | `ComputeRouterBgp` / `ComputeRouterBgpAdvertiseMode` |
| `GoogleComputeSecurityPolicyRule` | `match` / `rateLimitOptions` | `ComputeSecurityPolicyRule*` types |
| `GoogleComputeRegionSecurityPolicyRule` | `match` / `rateLimitOptions` | `ComputeRegionSecurityPolicyRule*` types |
| `GoogleEventarcMessageBus` / `GoogleEventarcGoogleApiSource` / `GoogleEventarcPipeline` | `loggingConfig` | `EventarcMessageBusLoggingConfig` / `EventarcMessageBusLogSeverity` |
| `GoogleComputeInstance` / `GoogleComputeInstanceTemplate` | `networkPerformanceConfig` | `ComputeInstanceNetworkPerformanceConfigTotalEgressBandwidthTier` |
| `GoogleComputeBackendService` | `localityLbPolicies` | `LocalityLbPolicy` |
| `GoogleComputeRegionSecurityPolicy` | `rules` / `advancedOptionsConfig` / … | `ComputeRegionSecurityPolicy*` helpers |
| `GoogleComputeUrlMap` / `GoogleComputeRegionUrlMap` | route actions / cache policy | `*UrlMapRouteAction` / `*UrlMapCacheMode` |
| `GoogleDnsPolicy` | `alternativeNameServerConfig` | `DnsPolicyAlternativeNameServerConfig` |
| `GoogleDnsRecordSet` | `routingPolicy` | `DnsRecordSetRoutingPolicy*` |
| `GoogleDnsResponsePolicyRule` | `localData` | `DnsResponsePolicyRuleLocalData` |
| `GooglePubsubTopic` | `schemaSettings` / `ingestionDataSourceSettings` | `PubsubTopic*` helpers |
| `GoogleGkeHubFleet` | `defaultClusterConfig` | `GkeHubFleetDefaultClusterConfig` |
| `GoogleGkeBackupBackupPlan` / `GoogleGkeBackupRestorePlan` | schedule / restore config | `GkeBackup*` helpers |
| `GoogleCloudRunV2WorkerPool` | template / scaling | `CloudRunV2WorkerPool*` helpers |
| `GoogleBigqueryDatapolicyDataPolicy` | `dataMaskingPolicy` | `BigqueryDatapolicyDataPolicyDataMaskingPolicy` |
| `GoogleArtifactRegistryRepository` | remote APT/YUM bases | `ArtifactRegistryAptRepositoryBase` / `ArtifactRegistryYumRepositoryBase` |

### Before and after

```dart
// 0.12.9
dataPolicyType: TfArg.literal('DATA_MASKING_POLICY'),
connectionPreference: TfArg.literal('ACCEPT_AUTOMATIC'),

// 0.12.10
dataPolicyType: TfArg.literal(BigqueryDatapolicyDataPolicyType.dataMaskingPolicy),
connectionPreference:
    TfArg.literal(ServiceAttachmentConnectionPreference.acceptAutomatic),
```

For nested blocks, replace raw maps with helper constructors and call `.encode()` only when you hand-roll arg maps — curated factories accept the helper types directly on constructor parameters.

### `GoogleComputeRegionSecurityPolicy` rules

`GoogleComputeRegionSecurityPolicy` now expects embedded `rules` on the policy resource. Standalone `GoogleComputeRegionSecurityPolicyRule` remains for additional rules added after the policy exists.

## Additive factories (no migration)

Waves 23–24 shipped **ten new curated factories** in `0.12.10`. They are additive — only adopt them when you need the capability. See [Waves 23–24](/docs/waves/) for the factory list and runnable examples.

## Older releases

Earlier breaking changes (WIF provider sealed `trustSource`, `terradart codegen` removal, Stack class modifiers, and more) are documented in [MIGRATING.md](https://github.com/nozomi-koborinai/terradart/blob/main/MIGRATING.md).

## Next steps

- [Waves 23–24](/docs/waves/) — new factories and example stacks
- [Status & versioning](/docs/status/) — alpha expectations and change policy
- [Examples](https://github.com/nozomi-koborinai/terradart/tree/main/examples) — updated quickstarts exercising the new APIs
