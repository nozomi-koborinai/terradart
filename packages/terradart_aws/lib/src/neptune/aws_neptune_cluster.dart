// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

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
sealed class NeptuneClusterClusterIdentifier {
  const NeptuneClusterClusterIdentifier();

  /// Sets `cluster_identifier`.
  const factory NeptuneClusterClusterIdentifier.clusterIdentifier(
    TfArg<String> clusterIdentifier,
  ) = NeptuneClusterClusterIdentifierClusterIdentifier;

  /// Sets `cluster_identifier_prefix`.
  const factory NeptuneClusterClusterIdentifier.clusterIdentifierPrefix(
    TfArg<String> clusterIdentifierPrefix,
  ) = NeptuneClusterClusterIdentifierClusterIdentifierPrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [NeptuneClusterClusterIdentifier.clusterIdentifier] choice: sets `cluster_identifier`.
final class NeptuneClusterClusterIdentifierClusterIdentifier
    extends NeptuneClusterClusterIdentifier {
  const NeptuneClusterClusterIdentifierClusterIdentifier(
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

/// The [NeptuneClusterClusterIdentifier.clusterIdentifierPrefix] choice: sets `cluster_identifier_prefix`.
final class NeptuneClusterClusterIdentifierClusterIdentifierPrefix
    extends NeptuneClusterClusterIdentifier {
  const NeptuneClusterClusterIdentifierClusterIdentifierPrefix(
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
    'max_capacity': ?maxCapacity?.toTfJson(),
    'min_capacity': ?minCapacity?.toTfJson(),
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
    NeptuneClusterClusterIdentifier? clusterIdentifier,
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
    RefTo<AwsKmsKey>? kmsKeyArn,
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
    TfArg<List<RefTo<AwsSecurityGroup>>>? vpcSecurityGroupIds,
    NeptuneClusterServerlessV2ScalingConfiguration?
    serverlessV2ScalingConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allow_major_version_upgrade': ?allowMajorVersionUpgrade,
           'apply_immediately': ?applyImmediately,
           'availability_zones': ?availabilityZones,
           'backup_retention_period': ?backupRetentionPeriod,
           ...?clusterIdentifier?.argMap,
           'copy_tags_to_snapshot': ?copyTagsToSnapshot,
           'deletion_protection': ?deletionProtection,
           if (enableCloudwatchLogsExports != null)
             'enable_cloudwatch_logs_exports': TfArg.literal([
               for (final e in enableCloudwatchLogsExports) e.toTfJson(),
             ]),
           'engine': ?engine,
           'engine_version': ?engineVersion,
           'final_snapshot_identifier': ?finalSnapshotIdentifier,
           'global_cluster_identifier': ?globalClusterIdentifier,
           'iam_database_authentication_enabled':
               ?iamDatabaseAuthenticationEnabled,
           'iam_roles': ?iamRoles,
           'kms_key_arn': ?kmsKeyArn?.encodeAs('arn'),
           'neptune_cluster_parameter_group_name':
               ?neptuneClusterParameterGroupName,
           'neptune_instance_parameter_group_name':
               ?neptuneInstanceParameterGroupName,
           'neptune_subnet_group_name': ?neptuneSubnetGroupName,
           'port': ?port,
           'preferred_backup_window': ?preferredBackupWindow,
           'preferred_maintenance_window': ?preferredMaintenanceWindow,
           'region': ?region,
           'replication_source_identifier': ?replicationSourceIdentifier,
           'skip_final_snapshot': ?skipFinalSnapshot,
           'snapshot_identifier': ?snapshotIdentifier,
           'storage_encrypted': ?storageEncrypted,
           'storage_type': ?storageType,
           'tags': ?tags,
           'vpc_security_group_ids': ?vpcSecurityGroupIds?.encodeAs('id'),
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNeptuneCluster>`.
  RefTo<AwsNeptuneCluster> get ref => RefTo.of(this);

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
