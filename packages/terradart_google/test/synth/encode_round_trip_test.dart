// packages/terradart_google/test/synth/encode_round_trip_test.dart
//
// Gate 6: encode round-trip structural test (PR 2 of Plan 5.D codegen
// correctness work — see docs/superpowers/plans/2026-05-16-plan5d-2-encode-gate6-plan.md).
//
// Discovers every sealed-class member declared in production yaml overrides
// via [SealedClassExtractor], constructs a synthetic instance via the
// hand-curated [_syntheticInstances] lookup table, invokes encode() (with
// toArgMap() fallback), and asserts the encoded shape:
//
//   * the encoded value is non-empty (Map or single-element List<Map>);
//   * every required attr's snake_case schema key appears as a key SOMEWHERE
//     in the encoded payload (top-level or nested under a discriminator
//     block — the production wire format mostly puts ctor params inside a
//     `{<discriminator>: [<innerMap>]}` block per the schema's `nesting_mode`
//     conventions, so a recursive key walk is necessary);
//   * no raw TfArg<T> values leak ANYWHERE in the encoded payload
//     (every encoder should have unwrapped via `.toTfJson()` at
//     serialization time — walked recursively).
//
// Component B-3-a shipped the FRAMEWORK only — the lookup table was empty
// and the whole group was marked `skip:`. Component B-3-b (this commit)
// fills the table for all sealed-class members and removes the skip.
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/universal_invariants/sealed_class_extractor.dart';
import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/agent.dart';
import 'package:terradart_google/app.dart';
import 'package:terradart_google/bigquery.dart';
import 'package:terradart_google/bigtable.dart';
import 'package:terradart_google/dataproc.dart';
import 'package:terradart_google/spanner.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/data_catalog.dart';
import 'package:terradart_google/firestore.dart';
import 'package:terradart_google/network.dart';
import 'package:terradart_google/secret_manager.dart';
import 'package:terradart_google/storage.dart';
import 'package:terradart_google/vertex_ai.dart';
import 'package:test/test.dart';

/// Hand-curated lookup: sealed-class-member-name -> a thunk that returns a
/// constructed instance. Each thunk supplies synthetic `TfArg<T>` values for
/// required params and omits all optional params (the framework tests the
/// all-optionals-null encode path).
///
/// Add an entry per new sealed-class member shipped in future waves. Gate 6
/// fails loudly when a sealed-class is extracted from yaml but no entry
/// exists here — keeping the table in lockstep with yaml is a curator
/// responsibility.
final Map<String, Object Function()> _syntheticInstances = {
  // --- AgentRegistryServiceSpec (3) — google_agent_registry_service -------
  'AgentRegistryServiceAgentSpec': () => const AgentRegistryServiceAgentSpec(
    type: AgentRegistryServiceAgentSpecType.noSpec,
  ),
  'AgentRegistryServiceMcpServerSpec': () =>
      const AgentRegistryServiceMcpServerSpec(
        type: AgentRegistryServiceMcpServerSpecType.noSpec,
      ),
  'AgentRegistryServiceEndpointSpec': () =>
      const AgentRegistryServiceEndpointSpec(
        type: AgentRegistryServiceEndpointSpecType.noSpec,
      ),

  // --- NetworkServicesAgentGatewayDeployment (2) — agent_gateway ---------
  'NetworkServicesAgentGatewayGoogleManaged': () =>
      const NetworkServicesAgentGatewayGoogleManaged(
        governedAccessPath:
            NetworkServicesAgentGatewayGoogleManagedGovernedAccessPath
                .agentToAnywhere,
      ),
  'NetworkServicesAgentGatewaySelfManaged': () =>
      NetworkServicesAgentGatewaySelfManaged(
        resourceUri: TfArg.literal(
          '//networkservices.googleapis.com/projects/p/locations/global/gateways/g',
        ),
      ),

  // --- Access (8) — bigquery_dataset ---------------------------------------
  'BigqueryDatasetAccessUserByEmail': () => BigqueryDatasetAccessUserByEmail(
    userByEmail: TfArg.literal('user@example.com'),
  ),
  'BigqueryDatasetAccessGroupByEmail': () => BigqueryDatasetAccessGroupByEmail(
    groupByEmail: TfArg.literal('group@example.com'),
  ),
  'BigqueryDatasetAccessSpecialGroup': () => BigqueryDatasetAccessSpecialGroup(
    specialGroup: TfArg.literal('projectReaders'),
  ),
  'BigqueryDatasetAccessDomain': () =>
      BigqueryDatasetAccessDomain(domain: TfArg.literal('example.com')),
  'BigqueryDatasetAccessIamMember': () =>
      BigqueryDatasetAccessIamMember(iamMember: TfArg.literal('allUsers')),
  'BigqueryDatasetAccessView': () => BigqueryDatasetAccessView(
    view: BigqueryDatasetView(
      projectId: TfArg.literal('p'),
      datasetId: RefTo.literal('d'),
      tableId: TfArg.literal('t'),
    ),
  ),
  'BigqueryDatasetAccessDataset': () => BigqueryDatasetAccessDataset(
    dataset: BigqueryDatasetAccessChild(
      dataset: BigqueryDatasetReference(
        projectId: TfArg.literal('p'),
        datasetId: RefTo.literal('d'),
      ),
      targetTypes: [TfArg.literal('VIEWS')],
    ),
  ),
  'BigqueryDatasetAccessRoutine': () => BigqueryDatasetAccessRoutine(
    routine: BigqueryDatasetRoutineRef(
      projectId: TfArg.literal('p'),
      datasetId: RefTo.literal('d'),
      routineId: TfArg.literal('r'),
    ),
  ),

  // --- BigtableGcPolicyRule (2) — google_bigtable_gc_policy -----------------
  'BigtableGcPolicyMaxAge': () =>
      BigtableGcPolicyMaxAge(days: TfArg.literal(7)),
  'BigtableGcPolicyMaxVersion': () =>
      BigtableGcPolicyMaxVersion(number: TfArg.literal(1)),

  // --- AppEngineFlexibleAppVersionScaling (2) — app_engine_flexible_app_version
  'AppEngineFlexibleAppVersionAutomaticScalingMode': () =>
      AppEngineFlexibleAppVersionAutomaticScalingMode(
        minTotalInstances: TfArg.literal(1),
      ),
  'AppEngineFlexibleAppVersionManualScalingMode': () =>
      AppEngineFlexibleAppVersionManualScalingMode(instances: TfArg.literal(1)),

  // --- StorageInsightsDatasetConfigSource (3) — google_storage_insights_dataset_config ---
  'StorageInsightsDatasetConfigSourceProjects': () =>
      StorageInsightsDatasetConfigSourceProjects(
        projectNumbers: TfArg.literal(['123456789012']),
      ),
  'StorageInsightsDatasetConfigSourceFolders': () =>
      StorageInsightsDatasetConfigSourceFolders(
        folderNumbers: TfArg.literal(['987654321']),
      ),
  'StorageInsightsDatasetConfigOrganizationScope': () =>
      const StorageInsightsDatasetConfigOrganizationScope(),

  // --- StorageInsightsReportConfigFormat (2) — google_storage_insights_report_config ---
  'StorageInsightsReportConfigCsvFormat': () =>
      const StorageInsightsReportConfigCsvFormat(),
  'StorageInsightsReportConfigParquetFormat': () =>
      const StorageInsightsReportConfigParquetFormat(),

  // --- ComputeHealthCheckProtocol (7) — compute_health_check ----------------
  'ComputeHealthCheckHttpHealthCheckConfig': () =>
      ComputeHealthCheckHttpHealthCheckConfig(port: TfArg.literal(80)),
  'ComputeHealthCheckHttpsHealthCheckConfig': () =>
      ComputeHealthCheckHttpsHealthCheckConfig(port: TfArg.literal(443)),
  'ComputeHealthCheckHttp2HealthCheckConfig': () =>
      ComputeHealthCheckHttp2HealthCheckConfig(port: TfArg.literal(443)),
  'ComputeHealthCheckTcpHealthCheckConfig': () =>
      ComputeHealthCheckTcpHealthCheckConfig(port: TfArg.literal(443)),
  'ComputeHealthCheckSslHealthCheckConfig': () =>
      ComputeHealthCheckSslHealthCheckConfig(port: TfArg.literal(443)),
  'ComputeHealthCheckGrpcHealthCheckConfig': () =>
      ComputeHealthCheckGrpcHealthCheckConfig(port: TfArg.literal(50051)),
  'ComputeHealthCheckGrpcTlsHealthCheckConfig': () =>
      ComputeHealthCheckGrpcTlsHealthCheckConfig(port: TfArg.literal(50052)),

  // --- ComputeRegionHealthCheckProtocol (7) — region_health_check -----------
  'ComputeRegionHealthCheckHttpHealthCheckConfig': () =>
      ComputeRegionHealthCheckHttpHealthCheckConfig(port: TfArg.literal(80)),
  'ComputeRegionHealthCheckHttpsHealthCheckConfig': () =>
      ComputeRegionHealthCheckHttpsHealthCheckConfig(port: TfArg.literal(443)),
  'ComputeRegionHealthCheckHttp2HealthCheckConfig': () =>
      ComputeRegionHealthCheckHttp2HealthCheckConfig(port: TfArg.literal(443)),
  'ComputeRegionHealthCheckTcpHealthCheckConfig': () =>
      ComputeRegionHealthCheckTcpHealthCheckConfig(port: TfArg.literal(443)),
  'ComputeRegionHealthCheckSslHealthCheckConfig': () =>
      ComputeRegionHealthCheckSslHealthCheckConfig(port: TfArg.literal(443)),
  'ComputeRegionHealthCheckGrpcHealthCheckConfig': () =>
      ComputeRegionHealthCheckGrpcHealthCheckConfig(port: TfArg.literal(50051)),
  'ComputeRegionHealthCheckGrpcTlsHealthCheckConfig': () =>
      ComputeRegionHealthCheckGrpcTlsHealthCheckConfig(
        port: TfArg.literal(50052),
      ),

  // --- ComputeFirewallRulePolicy (2) — compute_firewall --------------------
  'ComputeFirewallAllowPolicy': () => ComputeFirewallAllowPolicy(
    protocol: TfArg.literal('tcp'),
    ports: ['443'],
  ),
  'ComputeFirewallDenyPolicy': () =>
      ComputeFirewallDenyPolicy(protocol: TfArg.literal('tcp'), ports: ['22']),

  // --- ComputeRouteNextHop (5) — compute_route -----------------------------
  'ComputeRouteGatewayNextHop': () => ComputeRouteGatewayNextHop(
    nextHopGateway: TfArg.literal('default-internet-gateway'),
  ),
  'ComputeRouteIpNextHop': () =>
      ComputeRouteIpNextHop(nextHopIp: TfArg.literal('10.0.0.1')),
  'ComputeRouteInstanceNextHop': () => ComputeRouteInstanceNextHop(
    nextHopInstance: TfArg.literal('mock-instance'),
  ),
  'ComputeRouteIlbNextHop': () => ComputeRouteIlbNextHop(
    nextHopIlb: TfArg.literal('projects/p/regions/r/forwardingRules/fr'),
  ),
  'ComputeRouteVpnTunnelNextHop': () => ComputeRouteVpnTunnelNextHop(
    nextHopVpnTunnel: TfArg.literal('projects/p/regions/r/vpnTunnels/t'),
  ),

  // --- ComputeSnapshotSource (2) — compute_snapshot ------------------------
  'ComputeSnapshotDiskSource': () => ComputeSnapshotDiskSource(
    sourceDisk: TfArg.literal('projects/p/zones/z/disks/d'),
  ),
  'ComputeSnapshotInstantSource': () => ComputeSnapshotInstantSource(
    sourceInstantSnapshot: TfArg.literal(
      'projects/p/zones/z/instantSnapshots/s',
    ),
  ),

  // --- ComputeImageSource (4) — compute_image ------------------------------
  'ComputeImageSourceDisk': () => ComputeImageSourceDisk(
    sourceDisk: TfArg.literal('projects/p/zones/z/disks/d'),
  ),
  'ComputeImageSourceImage': () => ComputeImageSourceImage(
    sourceImage: TfArg.literal('projects/p/global/images/i'),
  ),
  'ComputeImageSourceSnapshot': () => ComputeImageSourceSnapshot(
    sourceSnapshot: TfArg.literal('projects/p/global/snapshots/s'),
  ),
  'ComputeImageSourceRawDisk': () => ComputeImageSourceRawDisk(
    ComputeImageRawDisk(source: TfArg.literal('gs://b/disk.tar.gz')),
  ),

  // --- BigqueryConnectionBackend (7) — bigquery_connection -----------------
  'BigqueryConnectionCloudSql': () => BigqueryConnectionCloudSql(
    instanceId: TfArg.literal('p:us:inst'),
    database: TfArg.literal('db'),
    type: BigqueryConnectionCloudSqlType.postgres,
    credential: BigqueryConnectionCloudSqlCredential(
      username: TfArg.literal('user'),
      password: TfArg.literal('secret'),
    ),
  ),
  'BigqueryConnectionCloudSpanner': () =>
      BigqueryConnectionCloudSpanner(database: TfArg.literal('db')),
  'BigqueryConnectionAws': () => BigqueryConnectionAws(
    accessRole: BigqueryConnectionAwsAccessRole(
      iamRoleId: TfArg.literal('arn:aws:iam::123:role/bq'),
    ),
  ),
  'BigqueryConnectionAzure': () =>
      BigqueryConnectionAzure(customerTenantId: TfArg.literal('tenant')),
  'BigqueryConnectionCloudResource': () =>
      const BigqueryConnectionCloudResource(),
  'BigqueryConnectionSpark': () => const BigqueryConnectionSpark(),
  'BigqueryConnectionConfiguration': () => BigqueryConnectionConfiguration(
    connectorId: TfArg.literal('google-cloudsql-postgres'),
    asset: BigqueryConnectionConfigurationAsset(database: TfArg.literal('db')),
  ),

  // --- DataprocBatchWorkload (4) — google_dataproc_batch -------------------
  'DataprocBatchPysparkWorkload': () => DataprocBatchPysparkWorkload(
    mainPythonFileUri: TfArg.literal('gs://mock-bucket/main.py'),
  ),
  'DataprocBatchSparkWorkload': () =>
      DataprocBatchSparkWorkload(mainClass: TfArg.literal('com.example.Main')),
  'DataprocBatchSparkSqlWorkload': () => DataprocBatchSparkSqlWorkload(
    queryFileUri: TfArg.literal('gs://mock-bucket/query.sql'),
  ),
  'DataprocBatchSparkRWorkload': () => DataprocBatchSparkRWorkload(
    mainRFileUri: TfArg.literal('gs://mock-bucket/main.R'),
  ),

  // --- SpannerBackupScheduleBackupSpec (2) — google_spanner_backup_schedule
  'SpannerBackupScheduleFullBackupSpec': () =>
      const SpannerBackupScheduleFullBackupSpec(),
  'SpannerBackupScheduleIncrementalBackupSpec': () =>
      const SpannerBackupScheduleIncrementalBackupSpec(),

  // --- SecretManagerSecretVersionPayload (2) — secret_manager_secret_version
  'SecretManagerSecretVersionWriteOnlyPayload': () =>
      SecretManagerSecretVersionWriteOnlyPayload(
        secretDataWo: TfArg.literal('mock-secret'),
        secretDataWoVersion: TfArg.literal('1'),
      ),
  'SecretManagerSecretVersionPlaintextPayload': () =>
      SecretManagerSecretVersionPlaintextPayload(
        secretData: TfArg.literal('mock-secret'),
      ),

  // --- BackupRecurrence (2) — firestore_backup_schedule --------------------
  // These return List<Map<String, Object?>> (single-element, per the
  // nesting_mode: list, max_items: 1 schema convention). The dispatch logic
  // unwraps to the single inner map for the structural assertions.
  'FirestoreBackupScheduleDailyRecurrence': () =>
      const FirestoreBackupScheduleDailyRecurrence(),
  'FirestoreBackupScheduleWeeklyRecurrence': () =>
      const FirestoreBackupScheduleWeeklyRecurrence(),

  // --- IndexFieldSpec (4) — firestore_index --------------------------------
  'FirestoreIndexFieldOrder': () =>
      const FirestoreIndexFieldOrder(FirestoreIndexOrder.ascending),
  'FirestoreIndexFieldArrayConfig': () =>
      const FirestoreIndexFieldArrayConfig(),
  'FirestoreIndexFieldSearchConfig': () =>
      const FirestoreIndexFieldSearchConfig(),
  'FirestoreIndexFieldVectorConfig': () =>
      const FirestoreIndexFieldVectorConfig(dimension: TfArgLiteral<int>(768)),

  // --- BucketObjectContent (2) — storage_bucket_object ---------------------
  'StorageBucketObjectBodySource': () =>
      StorageBucketObjectBodySource(source: TfArg.literal('./mock/path.bin')),
  'StorageBucketObjectBodyContent': () => StorageBucketObjectBodyContent(
    content: TfArg.literal('mock-inline-payload'),
  ),

  // --- DataCatalogEntryKind (2) — data_catalog_entry -----------------------
  'DataCatalogEntryFileset': () => const DataCatalogEntryFileset(),
  'DataCatalogEntryCustomType': () => DataCatalogEntryCustomType(
    userSpecifiedType: TfArg.literal('my_custom_type'),
  ),

  // --- DataCatalogTagTemplateFieldType (2) — tag_template ------------------
  'DataCatalogTagTemplatePrimitiveFieldType': () =>
      const DataCatalogTagTemplatePrimitiveFieldType(
        DataCatalogTagTemplatePrimitiveType.string,
      ),
  'DataCatalogTagTemplateEnumFieldType': () =>
      DataCatalogTagTemplateEnumFieldType(
        allowedValues: [
          DataCatalogTagTemplateEnumAllowedValue(
            displayName: TfArg.literal('EMAIL'),
          ),
        ],
      ),

  // --- DataCatalogTagFieldValue (5) — data_catalog_tag --------------------
  'DataCatalogTagStringValue': () =>
      DataCatalogTagStringValue(TfArg.literal('terradart-smoke')),
  'DataCatalogTagBoolValue': () => DataCatalogTagBoolValue(TfArg.literal(true)),
  'DataCatalogTagDoubleValue': () =>
      DataCatalogTagDoubleValue(TfArg.literal(1.0)),
  'DataCatalogTagTimestampValue': () =>
      DataCatalogTagTimestampValue(TfArg.literal('2026-01-01T00:00:00Z')),
  'DataCatalogTagEnumValue': () =>
      DataCatalogTagEnumValue(TfArg.literal('EMAIL')),

  // --- NetworkConnectivityPolicyBasedRouteNextHop (2) — PBR next hop ------
  'NetworkConnectivityPolicyBasedRouteNextHopIlbIp': () =>
      NetworkConnectivityPolicyBasedRouteNextHopIlbIp(
        TfArg.literal('10.0.0.10'),
      ),
  'NetworkConnectivityPolicyBasedRouteNextHopOtherRoutesChoice': () =>
      const NetworkConnectivityPolicyBasedRouteNextHopOtherRoutesChoice(
        NetworkConnectivityPolicyBasedRouteNextHopOtherRoutes.defaultRouting,
      ),

  // --- NetworkSecurityMirroringEndpointGroupDeploymentLink (2) — OOB ------
  'NetworkSecurityMirroringEndpointGroupDirectDeploymentLink': () =>
      NetworkSecurityMirroringEndpointGroupDirectDeploymentLink(
        TfArg.literal(
          'projects/p/locations/global/mirroringDeploymentGroups/dg',
        ),
      ),
  'NetworkSecurityMirroringEndpointGroupBrokerDeploymentLink': () =>
      NetworkSecurityMirroringEndpointGroupBrokerDeploymentLink(
        TfArg.literal([
          'projects/p/locations/global/mirroringDeploymentGroups/dg1',
          'projects/p/locations/global/mirroringDeploymentGroups/dg2',
        ]),
      ),

  // --- VertexAiFeatureOnlineStoreStorage (2) — feature_online_store --------
  'VertexAiFeatureOnlineStoreBigtable': () =>
      VertexAiFeatureOnlineStoreBigtable(
        autoScaling: VertexAiFeatureOnlineStoreBigtableAutoScaling(
          minNodeCount: TfArg.literal(1),
          maxNodeCount: TfArg.literal(3),
        ),
      ),
  'VertexAiFeatureOnlineStoreOptimized': () =>
      const VertexAiFeatureOnlineStoreOptimized(),

  // --- VertexAiEndpointWithModelGardenDeploymentModel (2) — model garden ---
  'VertexAiEndpointWithModelGardenDeploymentPublisherModel': () =>
      VertexAiEndpointWithModelGardenDeploymentPublisherModel(
        publisherModelName: TfArg.literal(
          'publishers/google/models/gemma-2-2b-it@001',
        ),
      ),
  'VertexAiEndpointWithModelGardenDeploymentHuggingFaceModel': () =>
      VertexAiEndpointWithModelGardenDeploymentHuggingFaceModel(
        huggingFaceModelId: TfArg.literal('google/gemma-2-2b-it'),
      ),
};

void main() {
  group('Gate 6: encode round-trip structural', () {
    final yamlDir = Directory(
      p.join(
        '..',
        'terradart_codegen',
        'lib',
        'src',
        'codegen',
        'wrapper_overrides',
        'yaml',
      ),
    );
    final yamlFiles =
        yamlDir
            .listSync()
            .whereType<File>()
            .where((f) => f.path.endsWith('.yaml'))
            .toList()
          ..sort((a, b) => a.path.compareTo(b.path));

    for (final yamlFile in yamlFiles) {
      final yamlSource = yamlFile.readAsStringSync();
      if (!yamlSource.contains('sealed class')) continue;

      final preludeStart = yamlSource.indexOf('prelude:');
      if (preludeStart < 0) continue;
      final preludeText = yamlSource.substring(preludeStart);
      final sealedClasses = const SealedClassExtractor().extract(preludeText);

      for (final sealed in sealedClasses) {
        for (final member in sealed.members) {
          test('${sealed.name}.${member.name}: encode() round-trips '
              'with required keys present', () {
            final thunk = _syntheticInstances[member.name];
            expect(
              thunk,
              isNotNull,
              reason:
                  'Gate 6 lookup table missing entry for ${member.name}. '
                  'Add a constructor thunk to _syntheticInstances in '
                  'encode_round_trip_test.dart. See Plan 5.D PR 2 Task 10.',
            );

            final instance = thunk!();

            // Production wrappers expose either `encode()` (most common) or
            // `toArgMap()` (e.g. cloud_run_v2_service helpers). Try
            // `encode()` first via dynamic dispatch; fall back to
            // `toArgMap()`. Both can return either `Map<String, Object?>`
            // OR a single-element `List<Map<String, Object?>>` (the latter
            // used by `BackupRecurrence.{FirestoreBackupScheduleDailyRecurrence,FirestoreBackupScheduleWeeklyRecurrence}`
            // because their underlying blocks are
            // `nesting_mode: list, max_items: 1`).
            final dyn = instance as dynamic;
            Object? raw;
            try {
              raw = dyn.encode();
            } on NoSuchMethodError {
              raw = dyn.toArgMap();
            }

            // The encoded payload must be non-empty when the member declares
            // required constructor params (optional-only members may encode
            // to `{}` when every optional is omitted — e.g. Dataplex scan
            // spec blocks with `allow_empty_object`).
            if (raw is Map) {
              final hasRequired = member.params.any((p) => p.required);
              if (hasRequired) {
                expect(
                  raw,
                  isNotEmpty,
                  reason: 'encoded Map must not be empty',
                );
              }
            } else if (raw is List) {
              expect(
                raw,
                isNotEmpty,
                reason: 'encoded List<Map> must not be empty',
              );
            }

            // Unwrap to a Map for the required-key + TfArg-leak walks.
            late Map<String, Object?> result;
            if (raw is Map<String, Object?>) {
              result = raw;
            } else if (raw is List &&
                raw.length == 1 &&
                raw.first is Map<String, Object?>) {
              result = raw.first as Map<String, Object?>;
            } else {
              fail(
                'encode()/toArgMap() must return Map<String, Object?> '
                'or single-element List<Map<String, Object?>>. '
                'Got: ${raw.runtimeType}',
              );
            }

            // Collect every key encountered anywhere in the encoded
            // payload, descending through nested Maps and List<Map>
            // values. Production sealed-class members mostly follow the
            // discriminator-block pattern (`{<discriminator>: [<innerMap>]}`)
            // where the constructor's required params live INSIDE the
            // inner map rather than at the top level — a recursive walk
            // is the only way the required-key invariant can pass for
            // both that pattern and the flat-merge pattern uniformly.
            // The invariant Gate 6 enforces is "the wrapper's encode()
            // mentions every required ctor param somewhere in its output";
            // a recursive search still catches the bug of an encoder
            // accidentally dropping a required attr (the key would be
            // absent at every depth).
            final allKeys = _collectAllKeys(result);
            for (final param in member.params.where((p) => p.required)) {
              // Convert camelCase param name -> snake_case schema key.
              final schemaKey = _camelToSnake(param.name);
              expect(
                allKeys,
                contains(schemaKey),
                reason:
                    'required attr "$schemaKey" '
                    '(camel: ${param.name}) must appear as a key somewhere '
                    'in the encoded payload (top-level or nested under a '
                    'discriminator block). Top-level keys observed: '
                    '${result.keys.toList()}; all keys recursively: '
                    '${allKeys.toList()}.',
              );
            }
            // No raw TfArg<T> may leak anywhere in the encoded payload —
            // every TfArg must have been unwrapped via `.toTfJson()` at
            // serialization time. Walk all values recursively, not just
            // the top-level map's values: nested helper-class encoders
            // could forget the unwrap deep in the tree.
            final tfArgLeaks = _findTfArgLeaks(result);
            expect(
              tfArgLeaks,
              isEmpty,
              reason:
                  'encoded values must be TfArg-unwrapped '
                  '(.toTfJson() should have been called). Found raw '
                  'TfArg instances at: $tfArgLeaks',
            );
          });
        }
      }
    }
  });
}

String _camelToSnake(String camel) {
  final buf = StringBuffer();
  for (var i = 0; i < camel.length; i++) {
    final ch = camel[i];
    if (i > 0 && ch == ch.toUpperCase() && ch != ch.toLowerCase()) {
      buf.write('_');
      buf.write(ch.toLowerCase());
    } else {
      buf.write(ch);
    }
  }
  return buf.toString();
}

/// Returns every key encountered anywhere in [root], descending through
/// nested Map and List values. Used by the required-attr assertion so a
/// ctor param nested under a discriminator block (e.g.
/// `{'gcs': [{'bucket': ...}]}`) is found at any depth.
Set<String> _collectAllKeys(Object? root) {
  final keys = <String>{};
  void walk(Object? node) {
    if (node is Map) {
      for (final entry in node.entries) {
        if (entry.key is String) keys.add(entry.key as String);
        walk(entry.value);
      }
    } else if (node is List) {
      for (final item in node) {
        walk(item);
      }
    }
  }

  walk(root);
  return keys;
}

/// Walks [root] recursively and returns a list of human-readable paths
/// where a raw [TfArg] instance was found. The encoded payload must
/// never contain a raw TfArg — every encoder should have unwrapped via
/// `.toTfJson()` before returning. An empty result means the wrapper is
/// clean.
List<String> _findTfArgLeaks(Object? root) {
  final leaks = <String>[];
  void walk(Object? node, String path) {
    if (node is TfArg) {
      leaks.add('$path (runtimeType=${node.runtimeType})');
      return;
    }
    if (node is Map) {
      for (final entry in node.entries) {
        walk(entry.value, '$path.${entry.key}');
      }
    } else if (node is List) {
      for (var i = 0; i < node.length; i++) {
        walk(node[i], '$path[$i]');
      }
    }
  }

  walk(root, r'$');
  return leaks;
}
