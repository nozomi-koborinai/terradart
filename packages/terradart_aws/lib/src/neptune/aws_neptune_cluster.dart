// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_neptune_cluster`.
const Set<String> _awsNeptuneClusterSensitive = <String>{};

/// Neptune Cluster Enable Cloudwatch Logs enum for `enable_cloudwatch_logs_exports`.
enum NeptuneClusterEnableCloudwatchLogsExports implements TerraformEnum {
  audit('audit'),
  slowquery('slowquery');

  const NeptuneClusterEnableCloudwatchLogsExports(this.terraformValue);
  @override
  final String terraformValue;
}

/// Neptune Cluster enum for `engine`.
enum NeptuneClusterEngine implements TerraformEnum {
  neptune('neptune');

  const NeptuneClusterEngine(this.terraformValue);
  @override
  final String terraformValue;
}

/// Neptune Cluster Storage enum for `storage_type`.
enum NeptuneClusterStorageType implements TerraformEnum {
  standard('standard'),
  iopt1('iopt1');

  const NeptuneClusterStorageType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `cluster_identifier`, `cluster_identifier_prefix` on `aws_neptune_cluster`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.clusterIdentifier(...)`.
sealed class NeptuneClusterClusterIdentifierOrClusterIdentifierPrefix {
  const NeptuneClusterClusterIdentifierOrClusterIdentifierPrefix();

  /// Sets `cluster_identifier`.
  const factory NeptuneClusterClusterIdentifierOrClusterIdentifierPrefix.clusterIdentifier(
    TfArg<String> clusterIdentifier,
  ) = NeptuneClusterClusterIdentifierOrClusterIdentifierPrefixClusterIdentifier;

  /// Sets `cluster_identifier_prefix`.
  const factory NeptuneClusterClusterIdentifierOrClusterIdentifierPrefix.clusterIdentifierPrefix(
    TfArg<String> clusterIdentifierPrefix,
  ) = NeptuneClusterClusterIdentifierOrClusterIdentifierPrefixClusterIdentifierPrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [NeptuneClusterClusterIdentifierOrClusterIdentifierPrefix.clusterIdentifier] choice: sets `cluster_identifier`.
final class NeptuneClusterClusterIdentifierOrClusterIdentifierPrefixClusterIdentifier
    extends NeptuneClusterClusterIdentifierOrClusterIdentifierPrefix {
  const NeptuneClusterClusterIdentifierOrClusterIdentifierPrefixClusterIdentifier(
    this.clusterIdentifier,
  );

  final TfArg<String> clusterIdentifier;

  @override
  String get blockKey => 'cluster_identifier';

  @override
  Map<String, Object?> encode() => {
    'cluster_identifier': clusterIdentifier.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'cluster_identifier': clusterIdentifier,
  };
}

/// The [NeptuneClusterClusterIdentifierOrClusterIdentifierPrefix.clusterIdentifierPrefix] choice: sets `cluster_identifier_prefix`.
final class NeptuneClusterClusterIdentifierOrClusterIdentifierPrefixClusterIdentifierPrefix
    extends NeptuneClusterClusterIdentifierOrClusterIdentifierPrefix {
  const NeptuneClusterClusterIdentifierOrClusterIdentifierPrefixClusterIdentifierPrefix(
    this.clusterIdentifierPrefix,
  );

  final TfArg<String> clusterIdentifierPrefix;

  @override
  String get blockKey => 'cluster_identifier_prefix';

  @override
  Map<String, Object?> encode() => {
    'cluster_identifier_prefix': clusterIdentifierPrefix.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'cluster_identifier_prefix': clusterIdentifierPrefix,
  };
}

/// Typed helper for the `serverless_v2_scaling_configuration` block of
/// `aws_neptune_cluster` (derived from provider schema).
@immutable
final class NeptuneClusterServerlessV2ScalingConfiguration {
  const NeptuneClusterServerlessV2ScalingConfiguration({
    this.maxCapacity,
    this.minCapacity,
  });

  final TfArg<num>? maxCapacity;

  final TfArg<num>? minCapacity;

  Map<String, Object?> encode() => {
    if (maxCapacity != null) 'max_capacity': maxCapacity!.toTfJson(),
    if (minCapacity != null) 'min_capacity': minCapacity!.toTfJson(),
  };
}

/// Factory wrapper for `aws_neptune_cluster`.
final class AwsNeptuneCluster extends Resource {
  static const String tfType = 'aws_neptune_cluster';

  AwsNeptuneCluster({
    required super.localName,
    TfArg<bool>? allowMajorVersionUpgrade,
    TfArg<bool>? applyImmediately,
    TfArg<List<String>>? availabilityZones,
    TfArg<num>? backupRetentionPeriod,
    NeptuneClusterClusterIdentifierOrClusterIdentifierPrefix?
    clusterIdentifierOrClusterIdentifierPrefix,
    TfArg<bool>? copyTagsToSnapshot,
    TfArg<bool>? deletionProtection,
    List<TfArg<NeptuneClusterEnableCloudwatchLogsExports>>?
    enableCloudwatchLogsExports,
    TfArg<NeptuneClusterEngine>? engine,
    TfArg<String>? engineVersion,
    TfArg<String>? finalSnapshotIdentifier,
    TfArg<String>? globalClusterIdentifier,
    TfArg<bool>? iamDatabaseAuthenticationEnabled,
    TfArg<List<String>>? iamRoles,
    TfArg<String>? kmsKeyArn,
    TfArg<String>? neptuneClusterParameterGroupName,
    TfArg<String>? neptuneInstanceParameterGroupName,
    TfArg<String>? neptuneSubnetGroupName,
    TfArg<num>? port,
    TfArg<String>? preferredBackupWindow,
    TfArg<String>? preferredMaintenanceWindow,
    TfArg<String>? region,
    TfArg<String>? replicationSourceIdentifier,
    TfArg<bool>? skipFinalSnapshot,
    TfArg<String>? snapshotIdentifier,
    TfArg<bool>? storageEncrypted,
    TfArg<NeptuneClusterStorageType>? storageType,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? vpcSecurityGroupIds,
    NeptuneClusterServerlessV2ScalingConfiguration?
    serverlessV2ScalingConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (allowMajorVersionUpgrade != null)
             'allow_major_version_upgrade': allowMajorVersionUpgrade,
           if (applyImmediately != null) 'apply_immediately': applyImmediately,
           if (availabilityZones != null)
             'availability_zones': availabilityZones,
           if (backupRetentionPeriod != null)
             'backup_retention_period': backupRetentionPeriod,
           ...?clusterIdentifierOrClusterIdentifierPrefix?.argMap,
           if (copyTagsToSnapshot != null)
             'copy_tags_to_snapshot': copyTagsToSnapshot,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (enableCloudwatchLogsExports != null)
             'enable_cloudwatch_logs_exports': TfArg.literal([
               for (final e in enableCloudwatchLogsExports) e.toTfJson(),
             ]),
           if (engine != null) 'engine': engine,
           if (engineVersion != null) 'engine_version': engineVersion,
           if (finalSnapshotIdentifier != null)
             'final_snapshot_identifier': finalSnapshotIdentifier,
           if (globalClusterIdentifier != null)
             'global_cluster_identifier': globalClusterIdentifier,
           if (iamDatabaseAuthenticationEnabled != null)
             'iam_database_authentication_enabled':
                 iamDatabaseAuthenticationEnabled,
           if (iamRoles != null) 'iam_roles': iamRoles,
           if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn,
           if (neptuneClusterParameterGroupName != null)
             'neptune_cluster_parameter_group_name':
                 neptuneClusterParameterGroupName,
           if (neptuneInstanceParameterGroupName != null)
             'neptune_instance_parameter_group_name':
                 neptuneInstanceParameterGroupName,
           if (neptuneSubnetGroupName != null)
             'neptune_subnet_group_name': neptuneSubnetGroupName,
           if (port != null) 'port': port,
           if (preferredBackupWindow != null)
             'preferred_backup_window': preferredBackupWindow,
           if (preferredMaintenanceWindow != null)
             'preferred_maintenance_window': preferredMaintenanceWindow,
           if (region != null) 'region': region,
           if (replicationSourceIdentifier != null)
             'replication_source_identifier': replicationSourceIdentifier,
           if (skipFinalSnapshot != null)
             'skip_final_snapshot': skipFinalSnapshot,
           if (snapshotIdentifier != null)
             'snapshot_identifier': snapshotIdentifier,
           if (storageEncrypted != null) 'storage_encrypted': storageEncrypted,
           if (storageType != null) 'storage_type': storageType,
           if (tags != null) 'tags': tags,
           if (vpcSecurityGroupIds != null)
             'vpc_security_group_ids': vpcSecurityGroupIds,
           if (serverlessV2ScalingConfiguration != null)
             'serverless_v2_scaling_configuration': TfArg.literal(
               serverlessV2ScalingConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNeptuneClusterSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cluster_members` attribute.
  TfRef<List<String>> get clusterMembers =>
      TfRef.attribute<List<String>>(this, 'cluster_members');

  /// Reference to `cluster_resource_id` attribute.
  TfRef<String> get clusterResourceId =>
      TfRef.attribute<String>(this, 'cluster_resource_id');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `hosted_zone_id` attribute.
  TfRef<String> get hostedZoneId =>
      TfRef.attribute<String>(this, 'hosted_zone_id');

  /// Reference to `reader_endpoint` attribute.
  TfRef<String> get readerEndpoint =>
      TfRef.attribute<String>(this, 'reader_endpoint');
}
