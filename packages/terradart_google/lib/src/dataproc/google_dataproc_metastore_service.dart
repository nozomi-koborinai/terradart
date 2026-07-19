// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

/// `hive_metastore_config` block on a Dataproc Metastore service.
@immutable
class DataprocMetastoreServiceHiveMetastoreConfig {
  const DataprocMetastoreServiceHiveMetastoreConfig({
    required this.version,
    this.configOverrides,
    this.endpointProtocol,
  });

  final TfArg<String> version;
  final TfArg<Map<String, String>>? configOverrides;
  final TfArg<DataprocMetastoreServiceEndpointProtocol>? endpointProtocol;

  Map<String, Object?> toArgMap() => {
    'version': version.toTfJson(),
    if (configOverrides != null)
      'config_overrides': configOverrides!.toTfJson(),
    if (endpointProtocol != null)
      'endpoint_protocol': endpointProtocol!.toTfJson(),
  };
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
    TfArg<DataprocMetastoreServiceTier>? tier,
    TfArg<DataprocMetastoreServiceDatabaseType>? databaseType,
    TfArg<DataprocMetastoreServiceReleaseChannel>? releaseChannel,
    DataprocMetastoreServiceHiveMetastoreConfig? hiveMetastoreConfig,
    TfArg<String>? network,
    TfArg<num>? port,
    TfArg<Map<String, String>>? labels,
    TfArg<bool>? deletionProtection,
    TfArg<DataprocMetastoreServiceDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service_id': serviceId,
           if (location != null) 'location': location,
           if (tier != null) 'tier': tier,
           if (databaseType != null) 'database_type': databaseType,
           if (releaseChannel != null) 'release_channel': releaseChannel,
           if (hiveMetastoreConfig != null)
             'hive_metastore_config': TfArg.literal([
               hiveMetastoreConfig.toArgMap(),
             ]),
           if (network != null) 'network': network,
           if (port != null) 'port': port,
           if (labels != null) 'labels': labels,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataprocMetastoreServiceSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
