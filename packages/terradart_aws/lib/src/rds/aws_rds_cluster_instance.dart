// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rds_cluster_instance`.
const Set<String> _awsRdsClusterInstanceSensitive = <String>{};

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
    TfArg<String>? identifier,
    TfArg<String>? identifierPrefix,
    required TfArg<String> instanceClass,
    TfArg<num>? monitoringInterval,
    TfArg<String>? monitoringRoleArn,
    TfArg<bool>? performanceInsightsEnabled,
    TfArg<String>? performanceInsightsKmsKeyId,
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
           if (applyImmediately != null) 'apply_immediately': applyImmediately,
           if (autoMinorVersionUpgrade != null)
             'auto_minor_version_upgrade': autoMinorVersionUpgrade,
           if (availabilityZone != null) 'availability_zone': availabilityZone,
           if (caCertIdentifier != null) 'ca_cert_identifier': caCertIdentifier,
           'cluster_identifier': clusterIdentifier,
           if (copyTagsToSnapshot != null)
             'copy_tags_to_snapshot': copyTagsToSnapshot,
           if (customIamInstanceProfile != null)
             'custom_iam_instance_profile': customIamInstanceProfile,
           if (dbParameterGroupName != null)
             'db_parameter_group_name': dbParameterGroupName,
           if (dbSubnetGroupName != null)
             'db_subnet_group_name': dbSubnetGroupName,
           'engine': engine,
           if (engineVersion != null) 'engine_version': engineVersion,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           if (identifier != null) 'identifier': identifier,
           if (identifierPrefix != null) 'identifier_prefix': identifierPrefix,
           'instance_class': instanceClass,
           if (monitoringInterval != null)
             'monitoring_interval': monitoringInterval,
           if (monitoringRoleArn != null)
             'monitoring_role_arn': monitoringRoleArn,
           if (performanceInsightsEnabled != null)
             'performance_insights_enabled': performanceInsightsEnabled,
           if (performanceInsightsKmsKeyId != null)
             'performance_insights_kms_key_id': performanceInsightsKmsKeyId,
           if (performanceInsightsRetentionPeriod != null)
             'performance_insights_retention_period':
                 performanceInsightsRetentionPeriod,
           if (preferredBackupWindow != null)
             'preferred_backup_window': preferredBackupWindow,
           if (preferredMaintenanceWindow != null)
             'preferred_maintenance_window': preferredMaintenanceWindow,
           if (promotionTier != null) 'promotion_tier': promotionTier,
           if (publiclyAccessible != null)
             'publicly_accessible': publiclyAccessible,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (warningEventCategories != null)
             'warning_event_categories': warningEventCategories,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsClusterInstanceSensitive;

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
