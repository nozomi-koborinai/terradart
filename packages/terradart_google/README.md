# terradart_google

Curated GCP factory wrappers for [terradart](https://github.com/nozomi-koborinai/terradart). 70 curated resource factories + 1 data source, each shipping with typed Dart enums for fixed-value-set fields, typed helper classes for every nested block, and golden-tested deterministic codegen.

## Resources

### BigQuery (4)

- `GoogleBigqueryDataset` (8-variant sealed `Access` hierarchy), `GoogleBigqueryTable`, `GoogleBigqueryDatasetIamMember`, `GoogleBigqueryTableIamMember`.

### Cloud Functions (2)

- `GoogleCloudfunctions2Function` (Gen 2; typed `BuildConfig`, `ServiceConfig`, `EventTrigger`), `GoogleCloudfunctions2FunctionIamMember`.

### Cloud Run v2 (4)

- `GoogleCloudRunV2Service` (sealed `EnvVarSource`, sealed `VolumeSource`; typed `Ingress`, `LaunchStage`, `Template`, `ServiceContainer`, etc.), `GoogleCloudRunV2Job`, `GoogleCloudRunV2ServiceIamMember`, `GoogleCloudRunV2JobIamMember`.

### Cloud Scheduler (1)

- `GoogleCloudSchedulerJob` (Pub/Sub / HTTP / AppEngine targets).

### Cloud SQL (3)

- `GoogleSqlDatabaseInstance` (typed `DatabaseVersion`, `SqlActivationPolicy`, `IpConfiguration`, `BackupConfiguration`, `InsightsConfig`), `GoogleSqlDatabase`, `GoogleSqlUser`.

### Cloud Tasks (2)

- `GoogleCloudTasksQueue` (typed `RateLimits`, `RetryConfig`, `QueueHttpTarget`), `GoogleCloudTasksQueueIamMember`.

### Compute (9)

- `GoogleComputeNetwork`, `GoogleComputeAddress`, `GoogleComputeSubnetwork`, `GoogleComputeFirewall`, `GoogleComputeInstance` (typed `BootDisk`, `NetworkInterface`, `Scheduling`, etc.), `GoogleComputeGlobalAddress`, `GoogleComputeInstanceIamMember`, `GoogleComputeDiskIamMember`, `GoogleComputeSubnetworkIamMember`.

### DNS (2)

- `GoogleDnsManagedZone` (typed `DnsZoneVisibility`, `DnssecState`; helpers for private visibility / DNSSEC / peering / forwarding), `GoogleDnsManagedZoneIamMember`.

### Firebase App Check (7)

- `GoogleFirebaseAppCheckRecaptchaEnterpriseConfig`, `GoogleFirebaseAppCheckPlayIntegrityConfig`, `GoogleFirebaseAppCheckAppAttestConfig`, `GoogleFirebaseAppCheckDeviceCheckConfig`, `GoogleFirebaseAppCheckServiceConfig` (shared `AppCheckEnforcementMode` enum), `GoogleFirebaseAppCheckDebugToken`, `GoogleFirebaseAppCheckResourcePolicy`.

### Firebase App Hosting (5)

- `GoogleFirebaseAppHostingBackend`, `GoogleFirebaseAppHostingBuild`, `GoogleFirebaseAppHostingDefaultDomain`, `GoogleFirebaseAppHostingDomain`, `GoogleFirebaseAppHostingTraffic`.

### Firebase Data Connect (1)

- `GoogleFirebaseDataConnectService`.

### Firebase Remote Config (1)

- `GoogleFirebaseRemoteConfigRemoteConfig`.

### Firestore (5)

- `GoogleFirestoreDatabase`, `GoogleFirestoreField`, `GoogleFirestoreIndex`, `GoogleFirestoreBackupSchedule`, `GoogleFirestoreUserCreds`.

### IAM (6)

- `GoogleServiceAccount` (pre-formatted `member` ref), `GoogleProjectIamMember`, `GoogleProjectIamCustomRole` (typed `CustomRoleStage`), `GoogleServiceAccountIamMember`, `GoogleServiceAccountKey` (typed `KeyAlgorithm`, `PrivateKeyType`; `private_key` masked at synth time), `GoogleIamWorkloadIdentityPool` (typed `WorkloadIdentityPoolMode`).

### KMS (4)

- `GoogleKmsKeyRing`, `GoogleKmsCryptoKey` (typed `KmsKeyPurpose`, `KmsProtectionLevel`, `VersionTemplate`), `GoogleKmsCryptoKeyIamMember`, `GoogleKmsKeyRingIamMember`.

### Logging (1)

- `GoogleLoggingProjectSink` (typed `BigqueryOptions`, `LogSinkExclusion`).

### Monitoring (1)

- `GoogleMonitoringAlertPolicy` (typed `Comparison`, `Aligner` 19 variants, `Reducer` 14 variants; `AlertCondition` covering 6 mutually-exclusive condition variants).

### Project enablement (1)

- `GoogleProjectService`.

### Pub/Sub (4)

- `GooglePubsubTopic`, `GooglePubsubSubscription` (typed `PushConfig`, `BigQueryConfig`, `CloudStorageConfig`, `DeadLetterPolicy`, `RetryPolicy`), `GooglePubsubTopicIamMember`, `GooglePubsubSubscriptionIamMember`.

### Secret Manager (3)

- `GoogleSecretManagerSecret` (sealed `Replication` for auto / userManaged variants), `GoogleSecretManagerSecretVersion` (write-only `secret_data_wo`), `GoogleSecretManagerSecretIamMember`.

### Service Networking (1)

- `GoogleServiceNetworkingConnection`.

### Cloud Storage (3)

- `GoogleStorageBucket` (typed `BucketStorageClass`, `LifecycleRule`, `Versioning`, `RetentionPolicy`, etc.), `GoogleStorageBucketObject` (sealed `BucketObjectContent` for source / content exactly-one-of), `GoogleStorageBucketIamMember`.

### Data sources (1)

- `GoogleProject` (project number lookup).

## How resources are built

The factory wrappers under `lib/src/<service>/` are emitted by `terradart wrap` from curated overrides under [`terradart_codegen`](https://pub.dev/packages/terradart_codegen). They are committed to the package so consumers can depend on `terradart_google` directly without running any codegen themselves.

CI verifies determinism via `terradart wrap --check`: all 71 emitted files (70 resource wrappers + 1 data source) must stay byte-identical across PRs.

For any other `google_*` / `google-beta_*` resource that isn't in the catalog above, run `terradart codegen` against your provider schema dump and emit bindings into your own `lib/generated/` rather than depending on this package.

For the runtime side (`Stack`, `Resource`, `StackSynth.synth`), see [`terradart_core`](https://pub.dev/packages/terradart_core). For project-level documentation, see the [terradart repo README](https://github.com/nozomi-koborinai/terradart#readme).

## Installation

```yaml
dependencies:
  terradart_core: ^0.1.0-dev
  terradart_google: ^0.1.0-dev
```

terradart is a SemVer pre-release; explicit `^0.1.0-dev` constraints are required because `dart pub get` skips pre-releases by default.

## Usage example

```dart
import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/storage.dart';

class AssetsStack extends Stack {
  AssetsStack({required String projectId})
      : super(providers: [
          GoogleProvider(project: projectId, region: 'asia-northeast1'),
        ]) {
    add(
      GoogleStorageBucket(
        localName: 'assets',
        name: TfArg.literal('my-app-assets-prod'),
        location: TfArg.literal('ASIA-NORTHEAST1'),
        storageClass: TfArg.literal(BucketStorageClass.standard), // typed enum
        versioning: const Versioning(enabled: true),              // typed helper
        lifecycleRule: const [
          LifecycleRule(
            action: LifecycleAction(
              type: LifecycleActionType.setStorageClass,
              storageClass: BucketStorageClass.archive,
            ),
            condition: LifecycleCondition(age: 365),
          ),
        ],
      ),
    );
  }
}
```

See the 20 runnable quickstart projects under [`examples/`](https://github.com/nozomi-koborinai/terradart/tree/main/examples) for end-to-end usage of every service.
