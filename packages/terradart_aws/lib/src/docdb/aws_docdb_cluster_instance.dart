// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_docdb_cluster_instance`.
const Set<String> _awsDocdbClusterInstanceSensitive = <String>{};

/// Docdb Cluster Instance enum for `engine`.
enum DocdbClusterInstanceEngine implements TerraformEnum {
  docdb('docdb');

  const DocdbClusterInstanceEngine(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `identifier`, `identifier_prefix` on `aws_docdb_cluster_instance`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.identifier(...)`.
sealed class DocdbClusterInstanceIdentifier {
  const DocdbClusterInstanceIdentifier();

  /// Sets `identifier`.
  const factory DocdbClusterInstanceIdentifier.identifier(
    TfArg<String> identifier,
  ) = DocdbClusterInstanceIdentifierIdentifier;

  /// Sets `identifier_prefix`.
  const factory DocdbClusterInstanceIdentifier.identifierPrefix(
    TfArg<String> identifierPrefix,
  ) = DocdbClusterInstanceIdentifierIdentifierPrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DocdbClusterInstanceIdentifier.identifier] choice: sets `identifier`.
final class DocdbClusterInstanceIdentifierIdentifier
    extends DocdbClusterInstanceIdentifier {
  const DocdbClusterInstanceIdentifierIdentifier(this.identifier);

  final TfArg<String> identifier;

  @override
  String get blockKey => 'identifier';

  @override
  Map<String, Object?> encode() => {'identifier': identifier.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'identifier': identifier};
}

/// The [DocdbClusterInstanceIdentifier.identifierPrefix] choice: sets `identifier_prefix`.
final class DocdbClusterInstanceIdentifierIdentifierPrefix
    extends DocdbClusterInstanceIdentifier {
  const DocdbClusterInstanceIdentifierIdentifierPrefix(this.identifierPrefix);

  final TfArg<String> identifierPrefix;

  @override
  String get blockKey => 'identifier_prefix';

  @override
  Map<String, Object?> encode() => {
    'identifier_prefix': identifierPrefix.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'identifier_prefix': identifierPrefix,
  };
}

/// Factory wrapper for `aws_docdb_cluster_instance`.
final class AwsDocdbClusterInstance extends Resource {
  static const String tfType = 'aws_docdb_cluster_instance';

  AwsDocdbClusterInstance({
    required super.localName,
    TfArg<bool>? applyImmediately,
    TfArg<bool>? autoMinorVersionUpgrade,
    TfArg<String>? availabilityZone,
    TfArg<String>? caCertIdentifier,
    TfArg<String>? certificateRotationRestart,
    required TfArg<String> clusterIdentifier,
    TfArg<bool>? copyTagsToSnapshot,
    TfArg<bool>? enablePerformanceInsights,
    TfArg<DocdbClusterInstanceEngine>? engine,
    DocdbClusterInstanceIdentifier? identifier,
    required TfArg<String> instanceClass,
    TfArg<String>? performanceInsightsKmsKeyId,
    TfArg<String>? preferredMaintenanceWindow,
    TfArg<num>? promotionTier,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (applyImmediately != null) 'apply_immediately': applyImmediately,
           if (autoMinorVersionUpgrade != null)
             'auto_minor_version_upgrade': autoMinorVersionUpgrade,
           if (availabilityZone != null) 'availability_zone': availabilityZone,
           if (caCertIdentifier != null) 'ca_cert_identifier': caCertIdentifier,
           if (certificateRotationRestart != null)
             'certificate_rotation_restart': certificateRotationRestart,
           'cluster_identifier': clusterIdentifier,
           if (copyTagsToSnapshot != null)
             'copy_tags_to_snapshot': copyTagsToSnapshot,
           if (enablePerformanceInsights != null)
             'enable_performance_insights': enablePerformanceInsights,
           if (engine != null) 'engine': engine,
           ...?identifier?.argMap,
           'instance_class': instanceClass,
           if (performanceInsightsKmsKeyId != null)
             'performance_insights_kms_key_id': performanceInsightsKmsKeyId,
           if (preferredMaintenanceWindow != null)
             'preferred_maintenance_window': preferredMaintenanceWindow,
           if (promotionTier != null) 'promotion_tier': promotionTier,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDocdbClusterInstanceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `db_subnet_group_name` attribute.
  TfRef<String> get dbSubnetGroupName =>
      TfRef.attribute<String>(this, 'db_subnet_group_name');

  /// Reference to `dbi_resource_id` attribute.
  TfRef<String> get dbiResourceId =>
      TfRef.attribute<String>(this, 'dbi_resource_id');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersion =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `preferred_backup_window` attribute.
  TfRef<String> get preferredBackupWindow =>
      TfRef.attribute<String>(this, 'preferred_backup_window');

  /// Reference to `publicly_accessible` attribute.
  TfRef<bool> get publiclyAccessible =>
      TfRef.attribute<bool>(this, 'publicly_accessible');

  /// Reference to `storage_encrypted` attribute.
  TfRef<bool> get storageEncrypted =>
      TfRef.attribute<bool>(this, 'storage_encrypted');

  /// Reference to `writer` attribute.
  TfRef<bool> get writer => TfRef.attribute<bool>(this, 'writer');
}
