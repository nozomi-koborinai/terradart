// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;
import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_composer_environment`.
const Set<String> _googleComposerEnvironmentSensitive = <String>{};

/// Typed helper for the `config` block of
/// `google_composer_environment` (derived from provider schema).
@immutable
final class ComposerEnvironmentConfig {
  const ComposerEnvironmentConfig({
    this.enablePrivateBuildsOnly,
    this.enablePrivateEnvironment,
    this.environmentSize,
    this.nodeCount,
    this.resilienceMode,
    this.dataRetentionConfig,
    this.databaseConfig,
    this.encryptionConfig,
    this.maintenanceWindow,
    this.masterAuthorizedNetworksConfig,
    this.nodeConfig,
    this.privateEnvironmentConfig,
    this.recoveryConfig,
    this.softwareConfig,
    this.webServerConfig,
    this.webServerNetworkAccessControl,
    this.workloadsConfig,
  });

  final TfArg<bool>? enablePrivateBuildsOnly;

  final TfArg<bool>? enablePrivateEnvironment;

  final TfArg<String>? environmentSize;

  final TfArg<num>? nodeCount;

  final TfArg<String>? resilienceMode;

  final ComposerEnvironmentConfigDataRetentionConfig? dataRetentionConfig;

  final ComposerEnvironmentConfigDatabaseConfig? databaseConfig;

  final ComposerEnvironmentConfigEncryptionConfig? encryptionConfig;

  final ComposerEnvironmentConfigMaintenanceWindow? maintenanceWindow;

  final ComposerEnvironmentConfigMasterAuthorizedNetworksConfig?
  masterAuthorizedNetworksConfig;

  final ComposerEnvironmentConfigNodeConfig? nodeConfig;

  final ComposerEnvironmentConfigPrivateEnvironmentConfig?
  privateEnvironmentConfig;

  final ComposerEnvironmentConfigRecoveryConfig? recoveryConfig;

  final ComposerEnvironmentConfigSoftwareConfig? softwareConfig;

  final ComposerEnvironmentConfigWebServerConfig? webServerConfig;

  final ComposerEnvironmentConfigWebServerNetworkAccessControl?
  webServerNetworkAccessControl;

  final ComposerEnvironmentConfigWorkloadsConfig? workloadsConfig;

  Map<String, Object?> encode() => {
    'enable_private_builds_only': ?enablePrivateBuildsOnly?.toTfJson(),
    'enable_private_environment': ?enablePrivateEnvironment?.toTfJson(),
    'environment_size': ?environmentSize?.toTfJson(),
    'node_count': ?nodeCount?.toTfJson(),
    'resilience_mode': ?resilienceMode?.toTfJson(),
    'data_retention_config': ?dataRetentionConfig?.encode(),
    'database_config': ?databaseConfig?.encode(),
    'encryption_config': ?encryptionConfig?.encode(),
    'maintenance_window': ?maintenanceWindow?.encode(),
    'master_authorized_networks_config': ?masterAuthorizedNetworksConfig
        ?.encode(),
    'node_config': ?nodeConfig?.encode(),
    'private_environment_config': ?privateEnvironmentConfig?.encode(),
    'recovery_config': ?recoveryConfig?.encode(),
    'software_config': ?softwareConfig?.encode(),
    'web_server_config': ?webServerConfig?.encode(),
    'web_server_network_access_control': ?webServerNetworkAccessControl
        ?.encode(),
    'workloads_config': ?workloadsConfig?.encode(),
  };
}

/// Typed helper for the `config.data_retention_config` block of
/// `google_composer_environment` (derived from provider schema).
@immutable
final class ComposerEnvironmentConfigDataRetentionConfig {
  const ComposerEnvironmentConfigDataRetentionConfig({
    this.airflowMetadataRetentionConfig,
    this.taskLogsRetentionConfig,
  });

  final List<
    ComposerEnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig
  >?
  airflowMetadataRetentionConfig;

  final List<
    ComposerEnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig
  >?
  taskLogsRetentionConfig;

  Map<String, Object?> encode() => {
    if (airflowMetadataRetentionConfig != null)
      'airflow_metadata_retention_config': [
        for (final e in airflowMetadataRetentionConfig!) e.encode(),
      ],
    if (taskLogsRetentionConfig != null)
      'task_logs_retention_config': [
        for (final e in taskLogsRetentionConfig!) e.encode(),
      ],
  };
}

/// Typed helper for the `config.data_retention_config.airflow_metadata_retention_config` block of
/// `google_composer_environment` (derived from provider schema).
@immutable
final class ComposerEnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig {
  const ComposerEnvironmentConfigDataRetentionConfigAirflowMetadataRetentionConfig({
    this.retentionDays,
    this.retentionMode,
  });

  final TfArg<num>? retentionDays;

  final TfArg<String>? retentionMode;

  Map<String, Object?> encode() => {
    'retention_days': ?retentionDays?.toTfJson(),
    'retention_mode': ?retentionMode?.toTfJson(),
  };
}

/// Typed helper for the `config.data_retention_config.task_logs_retention_config` block of
/// `google_composer_environment` (derived from provider schema).
@immutable
final class ComposerEnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig {
  const ComposerEnvironmentConfigDataRetentionConfigTaskLogsRetentionConfig({
    this.storageMode,
  });

  final TfArg<String>? storageMode;

  Map<String, Object?> encode() => {'storage_mode': ?storageMode?.toTfJson()};
}

/// Typed helper for the `config.database_config` block of
/// `google_composer_environment` (derived from provider schema).
@immutable
final class ComposerEnvironmentConfigDatabaseConfig {
  const ComposerEnvironmentConfigDatabaseConfig({this.machineType, this.zone});

  final TfArg<String>? machineType;

  final TfArg<String>? zone;

  Map<String, Object?> encode() => {
    'machine_type': ?machineType?.toTfJson(),
    'zone': ?zone?.toTfJson(),
  };
}

/// Typed helper for the `config.encryption_config` block of
/// `google_composer_environment` (derived from provider schema).
@immutable
final class ComposerEnvironmentConfigEncryptionConfig {
  const ComposerEnvironmentConfigEncryptionConfig({required this.kmsKeyName});

  final RefTo<GoogleKmsCryptoKey> kmsKeyName;

  Map<String, Object?> encode() => {
    'kms_key_name': kmsKeyName.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `config.maintenance_window` block of
/// `google_composer_environment` (derived from provider schema).
@immutable
final class ComposerEnvironmentConfigMaintenanceWindow {
  const ComposerEnvironmentConfigMaintenanceWindow({
    required this.endTime,
    required this.recurrence,
    required this.startTime,
  });

  final TfArg<String> endTime;

  final TfArg<String> recurrence;

  final TfArg<String> startTime;

  Map<String, Object?> encode() => {
    'end_time': endTime.toTfJson(),
    'recurrence': recurrence.toTfJson(),
    'start_time': startTime.toTfJson(),
  };
}

/// Typed helper for the `config.master_authorized_networks_config` block of
/// `google_composer_environment` (derived from provider schema).
@immutable
final class ComposerEnvironmentConfigMasterAuthorizedNetworksConfig {
  const ComposerEnvironmentConfigMasterAuthorizedNetworksConfig({
    required this.enabled,
    this.cidrBlocks,
  });

  final TfArg<bool> enabled;

  final List<ComposerEnvironmentConfigMasterAuthorizedNetworksConfigCidrBlocks>?
  cidrBlocks;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    if (cidrBlocks != null)
      'cidr_blocks': [for (final e in cidrBlocks!) e.encode()],
  };
}

/// Typed helper for the `config.master_authorized_networks_config.cidr_blocks` block of
/// `google_composer_environment` (derived from provider schema).
@immutable
final class ComposerEnvironmentConfigMasterAuthorizedNetworksConfigCidrBlocks {
  const ComposerEnvironmentConfigMasterAuthorizedNetworksConfigCidrBlocks({
    required this.cidrBlock,
    this.displayName,
  });

  final TfArg<String> cidrBlock;

  final TfArg<String>? displayName;

  Map<String, Object?> encode() => {
    'cidr_block': cidrBlock.toTfJson(),
    'display_name': ?displayName?.toTfJson(),
  };
}

/// Typed helper for the `config.node_config` block of
/// `google_composer_environment` (derived from provider schema).
@immutable
final class ComposerEnvironmentConfigNodeConfig {
  const ComposerEnvironmentConfigNodeConfig({
    this.composerInternalIpv4CidrBlock,
    this.composerNetworkAttachment,
    this.diskSizeGb,
    this.enableIpMasqAgent,
    this.machineType,
    this.network,
    this.oauthScopes,
    this.serviceAccount,
    this.subnetwork,
    this.tags,
    this.zone,
    this.ipAllocationPolicy,
  });

  final TfArg<String>? composerInternalIpv4CidrBlock;

  final TfArg<String>? composerNetworkAttachment;

  final TfArg<num>? diskSizeGb;

  final TfArg<bool>? enableIpMasqAgent;

  final TfArg<String>? machineType;

  final RefTo<GoogleComputeNetwork>? network;

  final TfArg<List<String>>? oauthScopes;

  final RefTo<GoogleServiceAccount>? serviceAccount;

  final RefTo<GoogleComputeSubnetwork>? subnetwork;

  final TfArg<List<String>>? tags;

  final TfArg<String>? zone;

  final ComposerEnvironmentConfigNodeConfigIpAllocationPolicy?
  ipAllocationPolicy;

  Map<String, Object?> encode() => {
    'composer_internal_ipv4_cidr_block': ?composerInternalIpv4CidrBlock
        ?.toTfJson(),
    'composer_network_attachment': ?composerNetworkAttachment?.toTfJson(),
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'enable_ip_masq_agent': ?enableIpMasqAgent?.toTfJson(),
    'machine_type': ?machineType?.toTfJson(),
    'network': ?network?.encodeAs('id').toTfJson(),
    'oauth_scopes': ?oauthScopes?.toTfJson(),
    'service_account': ?serviceAccount?.encodeAs('email').toTfJson(),
    'subnetwork': ?subnetwork?.encodeAs('id').toTfJson(),
    'tags': ?tags?.toTfJson(),
    'zone': ?zone?.toTfJson(),
    'ip_allocation_policy': ?ipAllocationPolicy?.encode(),
  };
}

/// Typed helper for the `config.node_config.ip_allocation_policy` block of
/// `google_composer_environment` (derived from provider schema).
@immutable
final class ComposerEnvironmentConfigNodeConfigIpAllocationPolicy {
  const ComposerEnvironmentConfigNodeConfigIpAllocationPolicy({
    this.clusterIpv4CidrBlock,
    this.clusterSecondaryRangeName,
    this.servicesIpv4CidrBlock,
    this.servicesSecondaryRangeName,
    this.useIpAliases,
  });

  final TfArg<String>? clusterIpv4CidrBlock;

  final TfArg<String>? clusterSecondaryRangeName;

  final TfArg<String>? servicesIpv4CidrBlock;

  final TfArg<String>? servicesSecondaryRangeName;

  final TfArg<bool>? useIpAliases;

  Map<String, Object?> encode() => {
    'cluster_ipv4_cidr_block': ?clusterIpv4CidrBlock?.toTfJson(),
    'cluster_secondary_range_name': ?clusterSecondaryRangeName?.toTfJson(),
    'services_ipv4_cidr_block': ?servicesIpv4CidrBlock?.toTfJson(),
    'services_secondary_range_name': ?servicesSecondaryRangeName?.toTfJson(),
    'use_ip_aliases': ?useIpAliases?.toTfJson(),
  };
}

/// Typed helper for the `config.private_environment_config` block of
/// `google_composer_environment` (derived from provider schema).
@immutable
final class ComposerEnvironmentConfigPrivateEnvironmentConfig {
  const ComposerEnvironmentConfigPrivateEnvironmentConfig({
    this.cloudComposerConnectionSubnetwork,
    this.cloudComposerNetworkIpv4CidrBlock,
    this.cloudSqlIpv4CidrBlock,
    this.connectionType,
    this.enablePrivateEndpoint,
    this.enablePrivatelyUsedPublicIps,
    this.masterIpv4CidrBlock,
    this.webServerIpv4CidrBlock,
  });

  final TfArg<String>? cloudComposerConnectionSubnetwork;

  final TfArg<String>? cloudComposerNetworkIpv4CidrBlock;

  final TfArg<String>? cloudSqlIpv4CidrBlock;

  final TfArg<String>? connectionType;

  final TfArg<bool>? enablePrivateEndpoint;

  final TfArg<bool>? enablePrivatelyUsedPublicIps;

  final TfArg<String>? masterIpv4CidrBlock;

  final TfArg<String>? webServerIpv4CidrBlock;

  Map<String, Object?> encode() => {
    'cloud_composer_connection_subnetwork': ?cloudComposerConnectionSubnetwork
        ?.toTfJson(),
    'cloud_composer_network_ipv4_cidr_block': ?cloudComposerNetworkIpv4CidrBlock
        ?.toTfJson(),
    'cloud_sql_ipv4_cidr_block': ?cloudSqlIpv4CidrBlock?.toTfJson(),
    'connection_type': ?connectionType?.toTfJson(),
    'enable_private_endpoint': ?enablePrivateEndpoint?.toTfJson(),
    'enable_privately_used_public_ips': ?enablePrivatelyUsedPublicIps
        ?.toTfJson(),
    'master_ipv4_cidr_block': ?masterIpv4CidrBlock?.toTfJson(),
    'web_server_ipv4_cidr_block': ?webServerIpv4CidrBlock?.toTfJson(),
  };
}

/// Typed helper for the `config.recovery_config` block of
/// `google_composer_environment` (derived from provider schema).
@immutable
final class ComposerEnvironmentConfigRecoveryConfig {
  const ComposerEnvironmentConfigRecoveryConfig({
    this.scheduledSnapshotsConfig,
  });

  final ComposerEnvironmentConfigRecoveryConfigScheduledSnapshotsConfig?
  scheduledSnapshotsConfig;

  Map<String, Object?> encode() => {
    'scheduled_snapshots_config': ?scheduledSnapshotsConfig?.encode(),
  };
}

/// Typed helper for the `config.recovery_config.scheduled_snapshots_config` block of
/// `google_composer_environment` (derived from provider schema).
@immutable
final class ComposerEnvironmentConfigRecoveryConfigScheduledSnapshotsConfig {
  const ComposerEnvironmentConfigRecoveryConfigScheduledSnapshotsConfig({
    required this.enabled,
    this.snapshotCreationSchedule,
    this.snapshotLocation,
    this.timeZone,
  });

  final TfArg<bool> enabled;

  final TfArg<String>? snapshotCreationSchedule;

  final TfArg<String>? snapshotLocation;

  final TfArg<String>? timeZone;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'snapshot_creation_schedule': ?snapshotCreationSchedule?.toTfJson(),
    'snapshot_location': ?snapshotLocation?.toTfJson(),
    'time_zone': ?timeZone?.toTfJson(),
  };
}

/// Typed helper for the `config.software_config` block of
/// `google_composer_environment` (derived from provider schema).
@immutable
final class ComposerEnvironmentConfigSoftwareConfig {
  const ComposerEnvironmentConfigSoftwareConfig({
    this.airflowConfigOverrides,
    this.envVariables,
    this.imageVersion,
    this.pypiPackages,
    this.pythonVersion,
    this.schedulerCount,
    this.webServerPluginsMode,
    this.cloudDataLineageIntegration,
  });

  final TfArg<Map<String, String>>? airflowConfigOverrides;

  final TfArg<Map<String, String>>? envVariables;

  final TfArg<String>? imageVersion;

  final TfArg<Map<String, String>>? pypiPackages;

  final TfArg<String>? pythonVersion;

  final TfArg<num>? schedulerCount;

  final TfArg<String>? webServerPluginsMode;

  final ComposerEnvironmentConfigSoftwareConfigCloudDataLineageIntegration?
  cloudDataLineageIntegration;

  Map<String, Object?> encode() => {
    'airflow_config_overrides': ?airflowConfigOverrides?.toTfJson(),
    'env_variables': ?envVariables?.toTfJson(),
    'image_version': ?imageVersion?.toTfJson(),
    'pypi_packages': ?pypiPackages?.toTfJson(),
    'python_version': ?pythonVersion?.toTfJson(),
    'scheduler_count': ?schedulerCount?.toTfJson(),
    'web_server_plugins_mode': ?webServerPluginsMode?.toTfJson(),
    'cloud_data_lineage_integration': ?cloudDataLineageIntegration?.encode(),
  };
}

/// Typed helper for the `config.software_config.cloud_data_lineage_integration` block of
/// `google_composer_environment` (derived from provider schema).
@immutable
final class ComposerEnvironmentConfigSoftwareConfigCloudDataLineageIntegration {
  const ComposerEnvironmentConfigSoftwareConfigCloudDataLineageIntegration({
    required this.enabled,
  });

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `config.web_server_config` block of
/// `google_composer_environment` (derived from provider schema).
@immutable
final class ComposerEnvironmentConfigWebServerConfig {
  const ComposerEnvironmentConfigWebServerConfig({required this.machineType});

  final TfArg<String> machineType;

  Map<String, Object?> encode() => {'machine_type': machineType.toTfJson()};
}

/// Typed helper for the `config.web_server_network_access_control` block of
/// `google_composer_environment` (derived from provider schema).
@immutable
final class ComposerEnvironmentConfigWebServerNetworkAccessControl {
  const ComposerEnvironmentConfigWebServerNetworkAccessControl({
    this.allowedIpRange,
  });

  final List<
    ComposerEnvironmentConfigWebServerNetworkAccessControlAllowedIpRange
  >?
  allowedIpRange;

  Map<String, Object?> encode() => {
    if (allowedIpRange != null)
      'allowed_ip_range': [for (final e in allowedIpRange!) e.encode()],
  };
}

/// Typed helper for the `config.web_server_network_access_control.allowed_ip_range` block of
/// `google_composer_environment` (derived from provider schema).
@immutable
final class ComposerEnvironmentConfigWebServerNetworkAccessControlAllowedIpRange {
  const ComposerEnvironmentConfigWebServerNetworkAccessControlAllowedIpRange({
    this.description,
    required this.value,
  });

  final TfArg<String>? description;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `config.workloads_config` block of
/// `google_composer_environment` (derived from provider schema).
@immutable
final class ComposerEnvironmentConfigWorkloadsConfig {
  const ComposerEnvironmentConfigWorkloadsConfig({
    this.dagProcessor,
    this.scheduler,
    this.triggerer,
    this.webServer,
    this.worker,
  });

  final ComposerEnvironmentConfigWorkloadsConfigDagProcessor? dagProcessor;

  final ComposerEnvironmentConfigWorkloadsConfigScheduler? scheduler;

  final ComposerEnvironmentConfigWorkloadsConfigTriggerer? triggerer;

  final ComposerEnvironmentConfigWorkloadsConfigWebServer? webServer;

  final ComposerEnvironmentConfigWorkloadsConfigWorker? worker;

  Map<String, Object?> encode() => {
    'dag_processor': ?dagProcessor?.encode(),
    'scheduler': ?scheduler?.encode(),
    'triggerer': ?triggerer?.encode(),
    'web_server': ?webServer?.encode(),
    'worker': ?worker?.encode(),
  };
}

/// Typed helper for the `config.workloads_config.dag_processor` block of
/// `google_composer_environment` (derived from provider schema).
@immutable
final class ComposerEnvironmentConfigWorkloadsConfigDagProcessor {
  const ComposerEnvironmentConfigWorkloadsConfigDagProcessor({
    this.count,
    this.cpu,
    this.memoryGb,
    this.storageGb,
  });

  final TfArg<num>? count;

  final TfArg<num>? cpu;

  final TfArg<num>? memoryGb;

  final TfArg<num>? storageGb;

  Map<String, Object?> encode() => {
    'count': ?count?.toTfJson(),
    'cpu': ?cpu?.toTfJson(),
    'memory_gb': ?memoryGb?.toTfJson(),
    'storage_gb': ?storageGb?.toTfJson(),
  };
}

/// Typed helper for the `config.workloads_config.scheduler` block of
/// `google_composer_environment` (derived from provider schema).
@immutable
final class ComposerEnvironmentConfigWorkloadsConfigScheduler {
  const ComposerEnvironmentConfigWorkloadsConfigScheduler({
    this.count,
    this.cpu,
    this.memoryGb,
    this.storageGb,
  });

  final TfArg<num>? count;

  final TfArg<num>? cpu;

  final TfArg<num>? memoryGb;

  final TfArg<num>? storageGb;

  Map<String, Object?> encode() => {
    'count': ?count?.toTfJson(),
    'cpu': ?cpu?.toTfJson(),
    'memory_gb': ?memoryGb?.toTfJson(),
    'storage_gb': ?storageGb?.toTfJson(),
  };
}

/// Typed helper for the `config.workloads_config.triggerer` block of
/// `google_composer_environment` (derived from provider schema).
@immutable
final class ComposerEnvironmentConfigWorkloadsConfigTriggerer {
  const ComposerEnvironmentConfigWorkloadsConfigTriggerer({
    required this.count,
    required this.cpu,
    required this.memoryGb,
  });

  final TfArg<num> count;

  final TfArg<num> cpu;

  final TfArg<num> memoryGb;

  Map<String, Object?> encode() => {
    'count': count.toTfJson(),
    'cpu': cpu.toTfJson(),
    'memory_gb': memoryGb.toTfJson(),
  };
}

/// Typed helper for the `config.workloads_config.web_server` block of
/// `google_composer_environment` (derived from provider schema).
@immutable
final class ComposerEnvironmentConfigWorkloadsConfigWebServer {
  const ComposerEnvironmentConfigWorkloadsConfigWebServer({
    this.cpu,
    this.memoryGb,
    this.storageGb,
  });

  final TfArg<num>? cpu;

  final TfArg<num>? memoryGb;

  final TfArg<num>? storageGb;

  Map<String, Object?> encode() => {
    'cpu': ?cpu?.toTfJson(),
    'memory_gb': ?memoryGb?.toTfJson(),
    'storage_gb': ?storageGb?.toTfJson(),
  };
}

/// Typed helper for the `config.workloads_config.worker` block of
/// `google_composer_environment` (derived from provider schema).
@immutable
final class ComposerEnvironmentConfigWorkloadsConfigWorker {
  const ComposerEnvironmentConfigWorkloadsConfigWorker({
    this.cpu,
    this.maxCount,
    this.memoryGb,
    this.minCount,
    this.storageGb,
  });

  final TfArg<num>? cpu;

  final TfArg<num>? maxCount;

  final TfArg<num>? memoryGb;

  final TfArg<num>? minCount;

  final TfArg<num>? storageGb;

  Map<String, Object?> encode() => {
    'cpu': ?cpu?.toTfJson(),
    'max_count': ?maxCount?.toTfJson(),
    'memory_gb': ?memoryGb?.toTfJson(),
    'min_count': ?minCount?.toTfJson(),
    'storage_gb': ?storageGb?.toTfJson(),
  };
}

/// Typed helper for the `storage_config` block of
/// `google_composer_environment` (derived from provider schema).
@immutable
final class ComposerEnvironmentStorageConfig {
  const ComposerEnvironmentStorageConfig({required this.bucket});

  final RefTo<GoogleStorageBucket> bucket;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('name').toTfJson(),
  };
}

/// Factory wrapper for `google_composer_environment`.
///
/// Cloud Composer **environment** — managed Apache Airflow.
///
/// **Cost:** Cloud Billing Catalog service `1992-3666-B975` bills an
/// **environment fee** while the environment exists (us-central1 Small
/// SKU `6EA4-3652-173E` **$0.35/h**; Medium `9802-34D7-AFE2` **$0.55/h**;
/// Large `2C11-0523-61D9` **$0.85/h**) plus compute/storage. Destroy
/// stops the fee. Too expensive for apply-smoke — factories ship without
/// a quickstart.
///
/// Enable `composer.googleapis.com` via [GoogleProjectService] before
/// apply.
///
/// Example:
/// ```dart
/// GoogleComposerEnvironment(
///   localName: 'airflow',
///   name: TfArg.literal('terradart-composer'),
///   region: TfArg.literal('us-central1'),
///   config: ComposerEnvironmentConfig(
///     environmentSize: TfArg.literal('ENVIRONMENT_SIZE_SMALL'),
///   ),
/// );
/// ```
final class GoogleComposerEnvironment extends Resource {
  static const String tfType = 'google_composer_environment';

  GoogleComposerEnvironment({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    ComposerEnvironmentConfig? config,
    ComposerEnvironmentStorageConfig? storageConfig,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           if (config != null) 'config': TfArg.literal(config.encode()),
           if (storageConfig != null)
             'storage_config': TfArg.literal(storageConfig.encode()),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComposerEnvironmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComposerEnvironment>`.
  RefTo<GoogleComposerEnvironment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
