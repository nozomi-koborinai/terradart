import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/universal_invariants/sealed_class_extractor.dart';
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

final Map<String, Object Function()> _syntheticInstances = {
  'AgentRegistryServiceAgentSpec': () => const AgentRegistryServiceAgentSpec(
    type: AgentRegistryServiceAgentSpecType.noSpec,
  ),
  'AgentRegistryServiceMcpServerSpec': () =>
      const AgentRegistryServiceMcpServerSpec(
        type: AgentRegistryServiceMcpServerSpecType.noSpec,
      ),
  'AgentRegistryServiceEndpointSpec': () =>
      const AgentRegistryServiceEndpointSpec(
        AgentRegistryServiceEndpointSpecType.noSpec,
      ),
  'NetworkServicesAgentGatewayGoogleManaged': () =>
      const NetworkServicesAgentGatewayGoogleManaged(
        NetworkServicesAgentGatewayGoogleManagedGovernedAccessPath
            .agentToAnywhere,
      ),
  'NetworkServicesAgentGatewaySelfManaged': () =>
      const NetworkServicesAgentGatewaySelfManaged(
        TfArg.literal(
          '//networkservices.googleapis.com/projects/p/locations/global/gateways/g',
        ),
      ),
  'BigqueryDatasetAccessUserByEmail': () =>
      const BigqueryDatasetAccessUserByEmail(
        userByEmail: TfArg.literal('user@example.com'),
      ),
  'BigqueryDatasetAccessGroupByEmail': () =>
      const BigqueryDatasetAccessGroupByEmail(
        groupByEmail: TfArg.literal('group@example.com'),
      ),
  'BigqueryDatasetAccessSpecialGroup': () =>
      const BigqueryDatasetAccessSpecialGroup(specialGroup: .projectReaders),
  'BigqueryDatasetAccessDomain': () =>
      const BigqueryDatasetAccessDomain(domain: TfArg.literal('example.com')),
  'BigqueryDatasetAccessIamMember': () => const BigqueryDatasetAccessIamMember(
    iamMember: TfArg.literal('allUsers'),
  ),
  'BigqueryDatasetAccessView': () => BigqueryDatasetAccessView(
    view: BigqueryDatasetView(
      projectId: const TfArg.literal('p'),
      datasetId: RefTo.literal('d'),
      tableId: const TfArg.literal('t'),
    ),
  ),
  'BigqueryDatasetAccessDataset': () => BigqueryDatasetAccessDataset(
    dataset: BigqueryDatasetAccessChild(
      dataset: BigqueryDatasetReference(
        projectId: const TfArg.literal('p'),
        datasetId: RefTo.literal('d'),
      ),
      targetTypes: const .literal([.views]),
    ),
  ),
  'BigqueryDatasetAccessRoutine': () => BigqueryDatasetAccessRoutine(
    routine: BigqueryDatasetRoutineRef(
      projectId: const TfArg.literal('p'),
      datasetId: RefTo.literal('d'),
      routineId: const TfArg.literal('r'),
    ),
  ),
  'BigtableGcPolicyMaxAge': () =>
      const BigtableGcPolicyMaxAge(days: TfArg.literal(7)),
  'BigtableGcPolicyMaxVersion': () =>
      const BigtableGcPolicyMaxVersion(TfArg.literal(1)),
  'ComputeSecurityPolicyRulesMatchConfigChoice': () =>
      const ComputeSecurityPolicyRulesMatchConfigChoice(
        versionedExpr: .srcIpsV1,
        config: ComputeSecurityPolicyRulesMatchConfig(srcIpRanges: ['*']),
      ),
  'ComputeSecurityPolicyRulesMatchExprChoice': () =>
      const ComputeSecurityPolicyRulesMatchExprChoice(
        ComputeSecurityPolicyRulesMatchExpr(expression: TfArg.literal('true')),
      ),
  'ComputeRegionSecurityPolicyRulesMatchConfigChoice': () =>
      const ComputeRegionSecurityPolicyRulesMatchConfigChoice(
        versionedExpr: .srcIpsV1,
        config: ComputeRegionSecurityPolicyRulesMatchConfig(srcIpRanges: ['*']),
      ),
  'ComputeRegionSecurityPolicyRulesMatchExprChoice': () =>
      const ComputeRegionSecurityPolicyRulesMatchExprChoice(
        ComputeRegionSecurityPolicyRulesMatchExpr(
          expression: TfArg.literal('true'),
        ),
      ),
  'AppEngineFlexibleAppVersionAutomaticScalingMode': () =>
      const AppEngineFlexibleAppVersionAutomaticScalingMode(TfArg.literal(1)),
  'AppEngineFlexibleAppVersionManualScalingMode': () =>
      const AppEngineFlexibleAppVersionManualScalingMode(TfArg.literal(1)),
  'StorageInsightsDatasetConfigSourceProjects': () =>
      const StorageInsightsDatasetConfigSourceProjects(
        TfArg.literal(['123456789012']),
      ),
  'StorageInsightsDatasetConfigSourceFolders': () =>
      const StorageInsightsDatasetConfigSourceFolders(
        TfArg.literal(['987654321']),
      ),
  'StorageInsightsDatasetConfigOrganizationScope': () =>
      const StorageInsightsDatasetConfigOrganizationScope(),
  'StorageInsightsReportConfigCsvFormat': () =>
      const StorageInsightsReportConfigCsvFormat(),
  'StorageInsightsReportConfigParquetFormat': () =>
      const StorageInsightsReportConfigParquetFormat(),
  'ComputeHealthCheckHttpHealthCheckConfig': () =>
      const ComputeHealthCheckHttpHealthCheckConfig(port: TfArg.literal(80)),
  'ComputeHealthCheckHttpsHealthCheckConfig': () =>
      const ComputeHealthCheckHttpsHealthCheckConfig(port: TfArg.literal(443)),
  'ComputeHealthCheckHttp2HealthCheckConfig': () =>
      const ComputeHealthCheckHttp2HealthCheckConfig(port: TfArg.literal(443)),
  'ComputeHealthCheckTcpHealthCheckConfig': () =>
      const ComputeHealthCheckTcpHealthCheckConfig(port: TfArg.literal(443)),
  'ComputeHealthCheckSslHealthCheckConfig': () =>
      const ComputeHealthCheckSslHealthCheckConfig(port: TfArg.literal(443)),
  'ComputeHealthCheckGrpcHealthCheckConfig': () =>
      const ComputeHealthCheckGrpcHealthCheckConfig(port: TfArg.literal(50051)),
  'ComputeHealthCheckGrpcTlsHealthCheckConfig': () =>
      const ComputeHealthCheckGrpcTlsHealthCheckConfig(
        port: TfArg.literal(50052),
      ),
  'ComputeRegionHealthCheckHttpHealthCheckConfig': () =>
      const ComputeRegionHealthCheckHttpHealthCheckConfig(
        port: TfArg.literal(80),
      ),
  'ComputeRegionHealthCheckHttpsHealthCheckConfig': () =>
      const ComputeRegionHealthCheckHttpsHealthCheckConfig(
        port: TfArg.literal(443),
      ),
  'ComputeRegionHealthCheckHttp2HealthCheckConfig': () =>
      const ComputeRegionHealthCheckHttp2HealthCheckConfig(
        port: TfArg.literal(443),
      ),
  'ComputeRegionHealthCheckTcpHealthCheckConfig': () =>
      const ComputeRegionHealthCheckTcpHealthCheckConfig(
        port: TfArg.literal(443),
      ),
  'ComputeRegionHealthCheckSslHealthCheckConfig': () =>
      const ComputeRegionHealthCheckSslHealthCheckConfig(
        port: TfArg.literal(443),
      ),
  'ComputeRegionHealthCheckGrpcHealthCheckConfig': () =>
      const ComputeRegionHealthCheckGrpcHealthCheckConfig(
        port: TfArg.literal(50051),
      ),
  'ComputeRegionHealthCheckGrpcTlsHealthCheckConfig': () =>
      const ComputeRegionHealthCheckGrpcTlsHealthCheckConfig(
        port: TfArg.literal(50052),
      ),
  'ComputeRouteGatewayNextHop': () => const ComputeRouteGatewayNextHop(
    TfArg.literal('default-internet-gateway'),
  ),
  'ComputeRouteIpNextHop': () =>
      const ComputeRouteIpNextHop(TfArg.literal('10.0.0.1')),
  'ComputeRouteInstanceNextHop': () =>
      const ComputeRouteInstanceNextHop(TfArg.literal('mock-instance')),
  'ComputeRouteIlbNextHop': () => const ComputeRouteIlbNextHop(
    TfArg.literal('projects/p/regions/r/forwardingRules/fr'),
  ),
  'ComputeRouteVpnTunnelNextHop': () => const ComputeRouteVpnTunnelNextHop(
    TfArg.literal('projects/p/regions/r/vpnTunnels/t'),
  ),
  'ComputeSnapshotDiskSource': () => const ComputeSnapshotDiskSource(
    TfArg.literal('projects/p/zones/z/disks/d'),
  ),
  'ComputeSnapshotInstantSource': () => const ComputeSnapshotInstantSource(
    TfArg.literal('projects/p/zones/z/instantSnapshots/s'),
  ),
  'ComputeImageSourceDisk': () =>
      const ComputeImageSourceDisk(TfArg.literal('projects/p/zones/z/disks/d')),
  'ComputeImageSourceImage': () => const ComputeImageSourceImage(
    TfArg.literal('projects/p/global/images/i'),
  ),
  'ComputeImageSourceSnapshot': () => const ComputeImageSourceSnapshot(
    TfArg.literal('projects/p/global/snapshots/s'),
  ),
  'ComputeImageSourceRawDisk': () => const ComputeImageSourceRawDisk(
    ComputeImageRawDisk(source: TfArg.literal('gs://b/disk.tar.gz')),
  ),
  'BigqueryConnectionCloudSql': () => const BigqueryConnectionCloudSql(
    instanceId: TfArg.literal('p:us:inst'),
    database: TfArg.literal('db'),
    type: BigqueryConnectionCloudSqlType.postgres,
    credential: BigqueryConnectionCloudSqlCredential(
      username: TfArg.literal('user'),
      password: .password(TfArg.literal('secret')),
    ),
  ),
  'BigqueryConnectionCloudSpanner': () =>
      const BigqueryConnectionCloudSpanner(database: TfArg.literal('db')),
  'BigqueryConnectionAws': () => const BigqueryConnectionAws(
    BigqueryConnectionAwsAccessRole(
      iamRoleId: TfArg.literal('arn:aws:iam::123:role/bq'),
    ),
  ),
  'BigqueryConnectionAzure': () =>
      const BigqueryConnectionAzure(customerTenantId: TfArg.literal('tenant')),
  'BigqueryConnectionCloudResource': () =>
      const BigqueryConnectionCloudResource(),
  'BigqueryConnectionSpark': () => const BigqueryConnectionSpark(),
  'BigqueryConnectionCloudSqlPasswordChoice': () =>
      const BigqueryConnectionCloudSqlPasswordChoice(TfArg.literal('secret')),
  'BigqueryConnectionCloudSqlPasswordWo': () =>
      const BigqueryConnectionCloudSqlPasswordWo(TfArg.literal('secret')),
  'BigqueryConnectionConfiguration': () =>
      const BigqueryConnectionConfiguration(
        connectorId: TfArg.literal('google-cloudsql-postgres'),
        asset: BigqueryConnectionConfigurationAsset(
          database: TfArg.literal('db'),
        ),
      ),
  'BigqueryConnectionSalesforceDataCloud': () =>
      const BigqueryConnectionSalesforceDataCloud(
        instanceUri: TfArg.literal('https://example.my.salesforce.com'),
        tenantId: TfArg.literal('tenant'),
        crossCloudCacheOptions:
            BigqueryConnectionSalesforceDataCloudCrossCloudCacheOptions(),
      ),
  'DataprocBatchPysparkWorkload': () => const DataprocBatchPysparkWorkload(
    mainPythonFileUri: TfArg.literal('gs://mock-bucket/main.py'),
  ),
  'DataprocBatchSparkWorkload': () => const DataprocBatchSparkWorkload(
    mainClass: TfArg.literal('com.example.Main'),
  ),
  'DataprocBatchSparkSqlWorkload': () => const DataprocBatchSparkSqlWorkload(
    queryFileUri: TfArg.literal('gs://mock-bucket/query.sql'),
  ),
  'DataprocBatchSparkRWorkload': () => const DataprocBatchSparkRWorkload(
    mainRFileUri: TfArg.literal('gs://mock-bucket/main.R'),
  ),
  'SpannerBackupScheduleFullBackupSpec': () =>
      const SpannerBackupScheduleFullBackupSpec(),
  'SpannerBackupScheduleIncrementalBackupSpec': () =>
      const SpannerBackupScheduleIncrementalBackupSpec(),
  'SecretManagerSecretVersionWriteOnlyPayload': () =>
      const SecretManagerSecretVersionWriteOnlyPayload(
        secretDataWo: TfArg.literal('mock-secret'),
        secretDataWoVersion: TfArg.literal('1'),
      ),
  'SecretManagerSecretVersionPlaintextPayload': () =>
      const SecretManagerSecretVersionPlaintextPayload(
        TfArg.literal('mock-secret'),
      ),
  'FirestoreBackupScheduleDailyRecurrence': () =>
      const FirestoreBackupScheduleDailyRecurrence(),
  'FirestoreBackupScheduleWeeklyRecurrence': () =>
      const FirestoreBackupScheduleWeeklyRecurrence(),
  'FirestoreIndexFieldOrder': () =>
      const FirestoreIndexFieldOrder(FirestoreIndexOrder.ascending),
  'FirestoreIndexFieldArrayConfig': () =>
      const FirestoreIndexFieldArrayConfig(),
  'FirestoreIndexFieldSearchConfig': () =>
      const FirestoreIndexFieldSearchConfig(),
  'FirestoreIndexFieldVectorConfig': () =>
      const FirestoreIndexFieldVectorConfig(TfArgLiteral<int>(768)),
  'StorageBucketObjectBodySource': () =>
      const StorageBucketObjectBodySource(TfArg.literal('./mock/path.bin')),
  'StorageBucketObjectBodyContent': () => const StorageBucketObjectBodyContent(
    TfArg.literal('mock-inline-payload'),
  ),
  'DataCatalogEntryFileset': () => const DataCatalogEntryFileset(),
  'DataCatalogEntryCustomType': () =>
      const DataCatalogEntryCustomType(TfArg.literal('my_custom_type')),
  'DataCatalogTagTemplatePrimitiveFieldType': () =>
      const DataCatalogTagTemplatePrimitiveFieldType(
        DataCatalogTagTemplatePrimitiveType.string,
      ),
  'DataCatalogTagTemplateEnumFieldType': () =>
      const DataCatalogTagTemplateEnumFieldType([
        DataCatalogTagTemplateEnumAllowedValue(
          displayName: TfArg.literal('EMAIL'),
        ),
      ]),
  'DataCatalogTagStringValue': () =>
      const DataCatalogTagStringValue(TfArg.literal('terradart-smoke')),
  'DataCatalogTagBoolValue': () =>
      const DataCatalogTagBoolValue(TfArg.literal(true)),
  'DataCatalogTagDoubleValue': () =>
      const DataCatalogTagDoubleValue(TfArg.literal(1.0)),
  'DataCatalogTagTimestampValue': () =>
      const DataCatalogTagTimestampValue(TfArg.literal('2026-01-01T00:00:00Z')),
  'DataCatalogTagEnumValue': () =>
      const DataCatalogTagEnumValue(TfArg.literal('EMAIL')),
  'NetworkConnectivityPolicyBasedRouteNextHopIlbIp': () =>
      const NetworkConnectivityPolicyBasedRouteNextHopIlbIp(
        TfArg.literal('10.0.0.10'),
      ),
  'NetworkConnectivityPolicyBasedRouteNextHopOtherRoutesChoice': () =>
      const NetworkConnectivityPolicyBasedRouteNextHopOtherRoutesChoice(
        NetworkConnectivityPolicyBasedRouteNextHopOtherRoutes.defaultRouting,
      ),
  'NetworkSecurityMirroringEndpointGroupDirectDeploymentLink': () =>
      const NetworkSecurityMirroringEndpointGroupDirectDeploymentLink(
        TfArg.literal(
          'projects/p/locations/global/mirroringDeploymentGroups/dg',
        ),
      ),
  'NetworkSecurityMirroringEndpointGroupBrokerDeploymentLink': () =>
      const NetworkSecurityMirroringEndpointGroupBrokerDeploymentLink(
        TfArg.literal([
          'projects/p/locations/global/mirroringDeploymentGroups/dg1',
          'projects/p/locations/global/mirroringDeploymentGroups/dg2',
        ]),
      ),
  'VertexAiFeatureOnlineStoreBigtable': () =>
      const VertexAiFeatureOnlineStoreBigtable(
        autoScaling: VertexAiFeatureOnlineStoreBigtableAutoScaling(
          minNodeCount: TfArg.literal(1),
          maxNodeCount: TfArg.literal(3),
        ),
      ),
  'VertexAiFeatureOnlineStoreOptimized': () =>
      const VertexAiFeatureOnlineStoreOptimized(),
  'VertexAiEndpointWithModelGardenDeploymentPublisherModel': () =>
      const VertexAiEndpointWithModelGardenDeploymentPublisherModel(
        TfArg.literal('publishers/google/models/gemma-2-2b-it@001'),
      ),
  'VertexAiEndpointWithModelGardenDeploymentHuggingFaceModel': () =>
      const VertexAiEndpointWithModelGardenDeploymentHuggingFaceModel(
        TfArg.literal('google/gemma-2-2b-it'),
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

            final dyn = instance as dynamic;
            Object? raw;
            try {
              raw = dyn.encode();
            } on NoSuchMethodError {
              raw = dyn.toArgMap();
            }

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

            final allKeys = _collectAllKeys(result);
            for (final param in member.params.where((p) => p.required)) {
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
