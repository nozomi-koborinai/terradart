// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_neptune_cluster_instance`.
const Set<String> _awsNeptuneClusterInstanceSensitive = <String>{};

/// Factory wrapper for `aws_neptune_cluster_instance`.
final class AwsNeptuneClusterInstance extends Resource {
  static const String tfType = 'aws_neptune_cluster_instance';

  AwsNeptuneClusterInstance({
    required super.localName,
    TfArg<bool>? applyImmediately,
    TfArg<bool>? autoMinorVersionUpgrade,
    TfArg<String>? availabilityZone,
    required TfArg<String> clusterIdentifier,
    TfArg<String>? engine,
    TfArg<String>? engineVersion,
    TfArg<String>? identifier,
    TfArg<String>? identifierPrefix,
    required TfArg<String> instanceClass,
    TfArg<String>? neptuneParameterGroupName,
    TfArg<String>? neptuneSubnetGroupName,
    TfArg<num>? port,
    TfArg<String>? preferredBackupWindow,
    TfArg<String>? preferredMaintenanceWindow,
    TfArg<num>? promotionTier,
    TfArg<bool>? publiclyAccessible,
    TfArg<String>? region,
    TfArg<bool>? skipFinalSnapshot,
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
           'cluster_identifier': clusterIdentifier,
           if (engine != null) 'engine': engine,
           if (engineVersion != null) 'engine_version': engineVersion,
           if (identifier != null) 'identifier': identifier,
           if (identifierPrefix != null) 'identifier_prefix': identifierPrefix,
           'instance_class': instanceClass,
           if (neptuneParameterGroupName != null)
             'neptune_parameter_group_name': neptuneParameterGroupName,
           if (neptuneSubnetGroupName != null)
             'neptune_subnet_group_name': neptuneSubnetGroupName,
           if (port != null) 'port': port,
           if (preferredBackupWindow != null)
             'preferred_backup_window': preferredBackupWindow,
           if (preferredMaintenanceWindow != null)
             'preferred_maintenance_window': preferredMaintenanceWindow,
           if (promotionTier != null) 'promotion_tier': promotionTier,
           if (publiclyAccessible != null)
             'publicly_accessible': publiclyAccessible,
           if (region != null) 'region': region,
           if (skipFinalSnapshot != null)
             'skip_final_snapshot': skipFinalSnapshot,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNeptuneClusterInstanceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address` attribute.
  TfRef<String> get address => TfRef.attribute<String>(this, 'address');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `dbi_resource_id` attribute.
  TfRef<String> get dbiResourceId =>
      TfRef.attribute<String>(this, 'dbi_resource_id');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArn => TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `storage_encrypted` attribute.
  TfRef<bool> get storageEncrypted =>
      TfRef.attribute<bool>(this, 'storage_encrypted');

  /// Reference to `storage_type` attribute.
  TfRef<String> get storageType =>
      TfRef.attribute<String>(this, 'storage_type');

  /// Reference to `writer` attribute.
  TfRef<bool> get writer => TfRef.attribute<bool>(this, 'writer');
}
