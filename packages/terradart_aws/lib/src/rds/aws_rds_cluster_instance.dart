// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_rds_cluster_instance`.
const Set<String> _awsRdsClusterInstanceSensitive = <String>{};

/// At most one of `identifier`, `identifier_prefix` on `aws_rds_cluster_instance`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.identifier(...)`.
sealed class RdsClusterInstanceIdentifier {
  const RdsClusterInstanceIdentifier();

  /// Sets `identifier`.
  const factory RdsClusterInstanceIdentifier.identifier(
    TfArg<String> identifier,
  ) = RdsClusterInstanceIdentifierChoice;

  /// Sets `identifier_prefix`.
  const factory RdsClusterInstanceIdentifier.identifierPrefix(
    TfArg<String> identifierPrefix,
  ) = RdsClusterInstanceIdentifierPrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RdsClusterInstanceIdentifier.identifier] choice: sets `identifier`.
final class RdsClusterInstanceIdentifierChoice
    extends RdsClusterInstanceIdentifier {
  const RdsClusterInstanceIdentifierChoice(this.identifier);

  final TfArg<String> identifier;

  @override
  String get blockKey => 'identifier';

  @override
  Map<String, Object?> encode() => {'identifier': identifier.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'identifier': identifier};
}

/// The [RdsClusterInstanceIdentifier.identifierPrefix] choice: sets `identifier_prefix`.
final class RdsClusterInstanceIdentifierPrefix
    extends RdsClusterInstanceIdentifier {
  const RdsClusterInstanceIdentifierPrefix(this.identifierPrefix);

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

/// Factory wrapper for `aws_rds_cluster_instance`.
final class AwsRdsClusterInstance extends Resource {
  static const String tfType = 'aws_rds_cluster_instance';

  AwsRdsClusterInstance({
    required super.localName,
    TfArg<bool>? applyImmediately,
    TfArg<bool>? autoMinorVersionUpgrade,
    TfArg<String>? availabilityZone,
    TfArg<String>? caCertIdentifier,
    required TfArg<String> clusterIdentifier,
    TfArg<bool>? copyTagsToSnapshot,
    TfArg<String>? customIamInstanceProfile,
    TfArg<String>? dbParameterGroupName,
    TfArg<String>? dbSubnetGroupName,
    required TfArg<String> engine,
    TfArg<String>? engineVersion,
    TfArg<bool>? forceDestroy,
    RdsClusterInstanceIdentifier? identifier,
    required TfArg<String> instanceClass,
    TfArg<num>? monitoringInterval,
    TfArg<String>? monitoringRoleArn,
    TfArg<bool>? performanceInsightsEnabled,
    RefTo<AwsKmsKey>? performanceInsightsKmsKeyId,
    TfArg<num>? performanceInsightsRetentionPeriod,
    TfArg<String>? preferredBackupWindow,
    TfArg<String>? preferredMaintenanceWindow,
    TfArg<num>? promotionTier,
    TfArg<bool>? publiclyAccessible,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? warningEventCategories,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'apply_immediately': ?applyImmediately,
           'auto_minor_version_upgrade': ?autoMinorVersionUpgrade,
           'availability_zone': ?availabilityZone,
           'ca_cert_identifier': ?caCertIdentifier,
           'cluster_identifier': clusterIdentifier,
           'copy_tags_to_snapshot': ?copyTagsToSnapshot,
           'custom_iam_instance_profile': ?customIamInstanceProfile,
           'db_parameter_group_name': ?dbParameterGroupName,
           'db_subnet_group_name': ?dbSubnetGroupName,
           'engine': engine,
           'engine_version': ?engineVersion,
           'force_destroy': ?forceDestroy,
           ...?identifier?.argMap,
           'instance_class': instanceClass,
           'monitoring_interval': ?monitoringInterval,
           'monitoring_role_arn': ?monitoringRoleArn,
           'performance_insights_enabled': ?performanceInsightsEnabled,
           'performance_insights_kms_key_id': ?performanceInsightsKmsKeyId
               ?.encodeAs('arn'),
           'performance_insights_retention_period':
               ?performanceInsightsRetentionPeriod,
           'preferred_backup_window': ?preferredBackupWindow,
           'preferred_maintenance_window': ?preferredMaintenanceWindow,
           'promotion_tier': ?promotionTier,
           'publicly_accessible': ?publiclyAccessible,
           'region': ?region,
           'tags': ?tags,
           'warning_event_categories': ?warningEventCategories,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsClusterInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRdsClusterInstance>`.
  RefTo<AwsRdsClusterInstance> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `dbi_resource_id` attribute.
  TfRef<String> get dbiResourceId =>
      TfRef.attribute<String>(this, 'dbi_resource_id');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `engine_version_actual` attribute.
  TfRef<String> get engineVersionActual =>
      TfRef.attribute<String>(this, 'engine_version_actual');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `network_type` attribute.
  TfRef<String> get networkType =>
      TfRef.attribute<String>(this, 'network_type');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `storage_encrypted` attribute.
  TfRef<bool> get storageEncrypted =>
      TfRef.attribute<bool>(this, 'storage_encrypted');

  /// Reference to `writer` attribute.
  TfRef<bool> get writer => TfRef.attribute<bool>(this, 'writer');
}
