// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_dataproc_metastore_service`.
const Set<String> _googleDataprocMetastoreServiceSensitive = <String>{};

/// Terraform `deletion_policy` for Dataproc Metastore services.
enum DataprocMetastoreServiceDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const DataprocMetastoreServiceDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Service tier for `google_dataproc_metastore_service.tier`.
enum DataprocMetastoreServiceTier implements TerraformEnum {
  developer('DEVELOPER'),
  enterprise('ENTERPRISE');

  const DataprocMetastoreServiceTier(this.terraformValue);
  @override
  final String terraformValue;
}

/// Database engine for `google_dataproc_metastore_service.database_type`.
enum DataprocMetastoreServiceDatabaseType implements TerraformEnum {
  mysql('MYSQL'),
  spanner('SPANNER');

  const DataprocMetastoreServiceDatabaseType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Release channel for `google_dataproc_metastore_service.release_channel`.
enum DataprocMetastoreServiceReleaseChannel implements TerraformEnum {
  canary('CANARY'),
  stable('STABLE');

  const DataprocMetastoreServiceReleaseChannel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Endpoint protocol for `hive_metastore_config.endpoint_protocol`.
enum DataprocMetastoreServiceEndpointProtocol implements TerraformEnum {
  thrift('THRIFT'),
  grpc('GRPC');

  const DataprocMetastoreServiceEndpointProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `tier`, `scaling_config` on `google_dataproc_metastore_service`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.tier(...)`.
sealed class DataprocMetastoreServiceCapacity {
  const DataprocMetastoreServiceCapacity();

  /// Sets `tier`.
  const factory DataprocMetastoreServiceCapacity.tier(
    TfArg<DataprocMetastoreServiceTier> tier,
  ) = DataprocMetastoreServiceCapacityTier;

  /// Sets `scaling_config`.
  const factory DataprocMetastoreServiceCapacity.scalingConfig(
    DataprocMetastoreServiceScalingConfig scalingConfig,
  ) = DataprocMetastoreServiceCapacityScalingConfig;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DataprocMetastoreServiceCapacity.tier] choice: sets `tier`.
final class DataprocMetastoreServiceCapacityTier
    extends DataprocMetastoreServiceCapacity {
  const DataprocMetastoreServiceCapacityTier(this.tier);

  final TfArg<DataprocMetastoreServiceTier> tier;

  @override
  String get blockKey => 'tier';

  @override
  Map<String, Object?> encode() => {'tier': tier.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'tier': tier};
}

/// The [DataprocMetastoreServiceCapacity.scalingConfig] choice: sets `scaling_config`.
final class DataprocMetastoreServiceCapacityScalingConfig
    extends DataprocMetastoreServiceCapacity {
  const DataprocMetastoreServiceCapacityScalingConfig(this.scalingConfig);

  final DataprocMetastoreServiceScalingConfig scalingConfig;

  @override
  String get blockKey => 'scaling_config';

  @override
  Map<String, Object?> encode() => {'scaling_config': scalingConfig.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'scaling_config': TfArg.literal(scalingConfig.encode()),
  };
}

/// Typed helper for the `encryption_config` block of
/// `google_dataproc_metastore_service` (derived from provider schema).
@immutable
final class DataprocMetastoreServiceEncryptionConfig {
  const DataprocMetastoreServiceEncryptionConfig({required this.kmsKey});

  final RefTo<GoogleKmsCryptoKey> kmsKey;

  Map<String, Object?> encode() => {
    'kms_key': kmsKey.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `hive_metastore_config` block of
/// `google_dataproc_metastore_service` (derived from provider schema).
@immutable
final class DataprocMetastoreServiceHiveMetastoreConfig {
  const DataprocMetastoreServiceHiveMetastoreConfig({
    this.configOverrides,
    this.endpointProtocol,
    required this.version,
    this.auxiliaryVersions,
    this.kerberosConfig,
  });

  final TfArg<Map<String, String>>? configOverrides;

  final TfArg<DataprocMetastoreServiceEndpointProtocol>? endpointProtocol;

  final TfArg<String> version;

  final List<DataprocMetastoreServiceAuxiliaryVersions>? auxiliaryVersions;

  final DataprocMetastoreServiceKerberosConfig? kerberosConfig;

  Map<String, Object?> encode() => {
    'config_overrides': ?configOverrides?.toTfJson(),
    'endpoint_protocol': ?endpointProtocol?.toTfJson(),
    'version': version.toTfJson(),
    if (auxiliaryVersions != null)
      'auxiliary_versions': [for (final e in auxiliaryVersions!) e.encode()],
    'kerberos_config': ?kerberosConfig?.encode(),
  };
}

/// Typed helper for the `hive_metastore_config.auxiliary_versions` block of
/// `google_dataproc_metastore_service` (derived from provider schema).
@immutable
final class DataprocMetastoreServiceAuxiliaryVersions {
  const DataprocMetastoreServiceAuxiliaryVersions({
    this.configOverrides,
    required this.key,
    required this.version,
  });

  final TfArg<Map<String, String>>? configOverrides;

  final TfArg<String> key;

  final TfArg<String> version;

  Map<String, Object?> encode() => {
    'config_overrides': ?configOverrides?.toTfJson(),
    'key': key.toTfJson(),
    'version': version.toTfJson(),
  };
}

/// Typed helper for the `hive_metastore_config.kerberos_config` block of
/// `google_dataproc_metastore_service` (derived from provider schema).
@immutable
final class DataprocMetastoreServiceKerberosConfig {
  const DataprocMetastoreServiceKerberosConfig({
    required this.krb5ConfigGcsUri,
    required this.principal,
    required this.keytab,
  });

  final TfArg<String> krb5ConfigGcsUri;

  final TfArg<String> principal;

  final DataprocMetastoreServiceKeytab keytab;

  Map<String, Object?> encode() => {
    'krb5_config_gcs_uri': krb5ConfigGcsUri.toTfJson(),
    'principal': principal.toTfJson(),
    'keytab': keytab.encode(),
  };
}

/// Typed helper for the `hive_metastore_config.kerberos_config.keytab` block of
/// `google_dataproc_metastore_service` (derived from provider schema).
@immutable
final class DataprocMetastoreServiceKeytab {
  const DataprocMetastoreServiceKeytab({required this.cloudSecret});

  final TfArg<String> cloudSecret;

  Map<String, Object?> encode() => {'cloud_secret': cloudSecret.toTfJson()};
}

/// Typed helper for the `maintenance_window` block of
/// `google_dataproc_metastore_service` (derived from provider schema).
@immutable
final class DataprocMetastoreServiceMaintenanceWindow {
  const DataprocMetastoreServiceMaintenanceWindow({
    required this.dayOfWeek,
    required this.hourOfDay,
  });

  final TfArg<DataprocMetastoreServiceDayOfWeek> dayOfWeek;

  final TfArg<num> hourOfDay;

  Map<String, Object?> encode() => {
    'day_of_week': dayOfWeek.toTfJson(),
    'hour_of_day': hourOfDay.toTfJson(),
  };
}

/// `day_of_week` — derived from the provider schema description.
enum DataprocMetastoreServiceDayOfWeek implements TerraformEnum {
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const DataprocMetastoreServiceDayOfWeek(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `metadata_integration` block of
/// `google_dataproc_metastore_service` (derived from provider schema).
@immutable
final class DataprocMetastoreServiceMetadataIntegration {
  const DataprocMetastoreServiceMetadataIntegration({
    required this.dataCatalogConfig,
  });

  final DataprocMetastoreServiceDataCatalogConfig dataCatalogConfig;

  Map<String, Object?> encode() => {
    'data_catalog_config': dataCatalogConfig.encode(),
  };
}

/// Typed helper for the `metadata_integration.data_catalog_config` block of
/// `google_dataproc_metastore_service` (derived from provider schema).
@immutable
final class DataprocMetastoreServiceDataCatalogConfig {
  const DataprocMetastoreServiceDataCatalogConfig({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `network_config` block of
/// `google_dataproc_metastore_service` (derived from provider schema).
@immutable
final class DataprocMetastoreServiceNetworkConfig {
  const DataprocMetastoreServiceNetworkConfig({required this.consumers});

  final List<DataprocMetastoreServiceConsumers> consumers;

  Map<String, Object?> encode() => {
    'consumers': [for (final e in consumers) e.encode()],
  };
}

/// Typed helper for the `network_config.consumers` block of
/// `google_dataproc_metastore_service` (derived from provider schema).
@immutable
final class DataprocMetastoreServiceConsumers {
  const DataprocMetastoreServiceConsumers({required this.subnetwork});

  final RefTo<GoogleComputeSubnetwork> subnetwork;

  Map<String, Object?> encode() => {
    'subnetwork': subnetwork.encodeAs('id').toTfJson(),
  };
}

/// Exactly one of `instance_size`, `scaling_factor`, `autoscaling_config` on the `scaling_config` block of `google_dataproc_metastore_service`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.instanceSize(...)`.
sealed class DataprocMetastoreServiceScalingConfig {
  const DataprocMetastoreServiceScalingConfig();

  /// Sets `instance_size`.
  const factory DataprocMetastoreServiceScalingConfig.instanceSize(
    TfArg<DataprocMetastoreServiceInstanceSize> instanceSize,
  ) = DataprocMetastoreServiceScalingConfigInstanceSize;

  /// Sets `scaling_factor`.
  const factory DataprocMetastoreServiceScalingConfig.scalingFactor(
    TfArg<num> scalingFactor,
  ) = DataprocMetastoreServiceScalingConfigScalingFactor;

  /// Sets `autoscaling_config`.
  const factory DataprocMetastoreServiceScalingConfig.autoscalingConfig(
    DataprocMetastoreServiceAutoscalingConfig autoscalingConfig,
  ) = DataprocMetastoreServiceScalingConfigAutoscalingConfig;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [DataprocMetastoreServiceScalingConfig.instanceSize] choice: sets `instance_size`.
final class DataprocMetastoreServiceScalingConfigInstanceSize
    extends DataprocMetastoreServiceScalingConfig {
  const DataprocMetastoreServiceScalingConfigInstanceSize(this.instanceSize);

  final TfArg<DataprocMetastoreServiceInstanceSize> instanceSize;

  @override
  String get blockKey => 'instance_size';

  @override
  Map<String, Object?> encode() => {'instance_size': instanceSize.toTfJson()};
}

/// The [DataprocMetastoreServiceScalingConfig.scalingFactor] choice: sets `scaling_factor`.
final class DataprocMetastoreServiceScalingConfigScalingFactor
    extends DataprocMetastoreServiceScalingConfig {
  const DataprocMetastoreServiceScalingConfigScalingFactor(this.scalingFactor);

  final TfArg<num> scalingFactor;

  @override
  String get blockKey => 'scaling_factor';

  @override
  Map<String, Object?> encode() => {'scaling_factor': scalingFactor.toTfJson()};
}

/// The [DataprocMetastoreServiceScalingConfig.autoscalingConfig] choice: sets `autoscaling_config`.
final class DataprocMetastoreServiceScalingConfigAutoscalingConfig
    extends DataprocMetastoreServiceScalingConfig {
  const DataprocMetastoreServiceScalingConfigAutoscalingConfig(
    this.autoscalingConfig,
  );

  final DataprocMetastoreServiceAutoscalingConfig autoscalingConfig;

  @override
  String get blockKey => 'autoscaling_config';

  @override
  Map<String, Object?> encode() => {
    'autoscaling_config': autoscalingConfig.encode(),
  };
}

/// `instance_size` — derived from the provider schema description.
enum DataprocMetastoreServiceInstanceSize implements TerraformEnum {
  extraSmall('EXTRA_SMALL'),
  small('SMALL'),
  medium('MEDIUM'),
  large('LARGE'),
  extraLarge('EXTRA_LARGE');

  const DataprocMetastoreServiceInstanceSize(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `scaling_config.autoscaling_config` block of
/// `google_dataproc_metastore_service` (derived from provider schema).
@immutable
final class DataprocMetastoreServiceAutoscalingConfig {
  const DataprocMetastoreServiceAutoscalingConfig({
    this.autoscalingEnabled,
    this.limitConfig,
  });

  final TfArg<bool>? autoscalingEnabled;

  final DataprocMetastoreServiceLimitConfig? limitConfig;

  Map<String, Object?> encode() => {
    'autoscaling_enabled': ?autoscalingEnabled?.toTfJson(),
    'limit_config': ?limitConfig?.encode(),
  };
}

/// Typed helper for the `scaling_config.autoscaling_config.limit_config` block of
/// `google_dataproc_metastore_service` (derived from provider schema).
@immutable
final class DataprocMetastoreServiceLimitConfig {
  const DataprocMetastoreServiceLimitConfig({
    this.maxScalingFactor,
    this.minScalingFactor,
  });

  final TfArg<num>? maxScalingFactor;

  final TfArg<num>? minScalingFactor;

  Map<String, Object?> encode() => {
    'max_scaling_factor': ?maxScalingFactor?.toTfJson(),
    'min_scaling_factor': ?minScalingFactor?.toTfJson(),
  };
}

/// Typed helper for the `scheduled_backup` block of
/// `google_dataproc_metastore_service` (derived from provider schema).
@immutable
final class DataprocMetastoreServiceScheduledBackup {
  const DataprocMetastoreServiceScheduledBackup({
    required this.backupLocation,
    this.cronSchedule,
    this.enabled,
    this.timeZone,
  });

  final TfArg<String> backupLocation;

  final TfArg<String>? cronSchedule;

  final TfArg<bool>? enabled;

  final TfArg<String>? timeZone;

  Map<String, Object?> encode() => {
    'backup_location': backupLocation.toTfJson(),
    'cron_schedule': ?cronSchedule?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'time_zone': ?timeZone?.toTfJson(),
  };
}

/// Typed helper for the `telemetry_config` block of
/// `google_dataproc_metastore_service` (derived from provider schema).
@immutable
final class DataprocMetastoreServiceTelemetryConfig {
  const DataprocMetastoreServiceTelemetryConfig({this.logFormat});

  final TfArg<DataprocMetastoreServiceLogFormat>? logFormat;

  Map<String, Object?> encode() => {'log_format': ?logFormat?.toTfJson()};
}

/// `log_format` — derived from the provider schema description.
enum DataprocMetastoreServiceLogFormat implements TerraformEnum {
  legacy('LEGACY'),
  json('JSON');

  const DataprocMetastoreServiceLogFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_dataproc_metastore_service`.
///
/// A managed metastore service that serves metadata queries.
///
/// Dataproc Metastore service — managed Apache Hive metastore.
///
/// Enable `metastore.googleapis.com` before apply. Prefer [tier]
/// `DEVELOPER` for smoke stacks (`ENTERPRISE` and scaling configs bill more).
/// Set [hiveMetastoreConfig] with a Hive schema [version] (e.g. `3.1.2`).
final class GoogleDataprocMetastoreService extends Resource {
  static const String tfType = 'google_dataproc_metastore_service';

  GoogleDataprocMetastoreService({
    required super.localName,
    required TfArg<String> serviceId,
    TfArg<String>? location,
    DataprocMetastoreServiceCapacity? capacity,
    TfArg<DataprocMetastoreServiceDatabaseType>? databaseType,
    TfArg<DataprocMetastoreServiceReleaseChannel>? releaseChannel,
    DataprocMetastoreServiceHiveMetastoreConfig? hiveMetastoreConfig,
    RefTo<GoogleComputeNetwork>? network,
    TfArg<num>? port,
    TfArg<Map<String, String>>? labels,
    TfArg<bool>? deletionProtection,
    TfArg<DataprocMetastoreServiceDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    TfArg<Map<String, String>>? tags,
    DataprocMetastoreServiceEncryptionConfig? encryptionConfig,
    DataprocMetastoreServiceMaintenanceWindow? maintenanceWindow,
    DataprocMetastoreServiceMetadataIntegration? metadataIntegration,
    DataprocMetastoreServiceNetworkConfig? networkConfig,
    DataprocMetastoreServiceScheduledBackup? scheduledBackup,
    DataprocMetastoreServiceTelemetryConfig? telemetryConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service_id': serviceId,
           'location': ?location,
           ...?capacity?.argMap,
           'database_type': ?databaseType,
           'release_channel': ?releaseChannel,
           if (hiveMetastoreConfig != null)
             'hive_metastore_config': TfArg.literal(
               hiveMetastoreConfig.encode(),
             ),
           'network': ?network?.encodeAs('id'),
           'port': ?port,
           'labels': ?labels,
           'deletion_protection': ?deletionProtection,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           'tags': ?tags,
           if (encryptionConfig != null)
             'encryption_config': TfArg.literal(encryptionConfig.encode()),
           if (maintenanceWindow != null)
             'maintenance_window': TfArg.literal(maintenanceWindow.encode()),
           if (metadataIntegration != null)
             'metadata_integration': TfArg.literal(
               metadataIntegration.encode(),
             ),
           if (networkConfig != null)
             'network_config': TfArg.literal(networkConfig.encode()),
           if (scheduledBackup != null)
             'scheduled_backup': TfArg.literal(scheduledBackup.encode()),
           if (telemetryConfig != null)
             'telemetry_config': TfArg.literal(telemetryConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataprocMetastoreServiceSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataprocMetastoreService>`.
  RefTo<GoogleDataprocMetastoreService> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `artifact_gcs_uri` attribute.
  TfRef<String> get artifactGcsUri =>
      TfRef.attribute<String>(this, 'artifact_gcs_uri');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `endpoint_uri` attribute.
  TfRef<String> get endpointUri =>
      TfRef.attribute<String>(this, 'endpoint_uri');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_message` attribute.
  TfRef<String> get stateMessage =>
      TfRef.attribute<String>(this, 'state_message');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `database_type` attribute.
  TfRef<String> get databaseType =>
      TfRef.attribute<String>(this, 'database_type');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `release_channel` attribute.
  TfRef<String> get releaseChannel =>
      TfRef.attribute<String>(this, 'release_channel');

  /// Reference to `service_id` attribute.
  TfRef<String> get serviceId => TfRef.attribute<String>(this, 'service_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tier` attribute.
  TfRef<String> get tier => TfRef.attribute<String>(this, 'tier');
}
