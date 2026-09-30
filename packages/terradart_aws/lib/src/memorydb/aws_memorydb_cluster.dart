// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../sns/aws_sns_topic.dart' show AwsSnsTopic;

/// Sensitive field paths for `aws_memorydb_cluster`.
const Set<String> _awsMemorydbClusterSensitive = <String>{};

/// Memorydb Cluster enum for `engine`.
enum MemorydbClusterEngine implements TerraformEnum {
  redis('redis'),
  valkey('valkey');

  const MemorydbClusterEngine(this.terraformValue);
  @override
  final String terraformValue;
}

/// Memorydb Cluster Ip enum for `ip_discovery`.
enum MemorydbClusterIpDiscovery implements TerraformEnum {
  ipv4('ipv4'),
  ipv6('ipv6');

  const MemorydbClusterIpDiscovery(this.terraformValue);
  @override
  final String terraformValue;
}

/// Memorydb Cluster Network enum for `network_type`.
enum MemorydbClusterNetworkType implements TerraformEnum {
  ipv4('ipv4'),
  ipv6('ipv6'),
  dualStack('dual_stack');

  const MemorydbClusterNetworkType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `name`, `name_prefix` on `aws_memorydb_cluster`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class MemorydbClusterName {
  const MemorydbClusterName();

  /// Sets `name`.
  const factory MemorydbClusterName.name(TfArg<String> name) =
      MemorydbClusterNameChoice;

  /// Sets `name_prefix`.
  const factory MemorydbClusterName.namePrefix(TfArg<String> namePrefix) =
      MemorydbClusterNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [MemorydbClusterName.name] choice: sets `name`.
final class MemorydbClusterNameChoice extends MemorydbClusterName {
  const MemorydbClusterNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [MemorydbClusterName.namePrefix] choice: sets `name_prefix`.
final class MemorydbClusterNamePrefix extends MemorydbClusterName {
  const MemorydbClusterNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// At most one of `snapshot_arns`, `snapshot_name` on `aws_memorydb_cluster`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.snapshotArns(...)`.
sealed class MemorydbClusterSnapshot {
  const MemorydbClusterSnapshot();

  /// Sets `snapshot_arns`.
  const factory MemorydbClusterSnapshot.snapshotArns(
    TfArg<List<String>> snapshotArns,
  ) = MemorydbClusterSnapshotArns;

  /// Sets `snapshot_name`.
  const factory MemorydbClusterSnapshot.snapshotName(
    TfArg<String> snapshotName,
  ) = MemorydbClusterSnapshotName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [MemorydbClusterSnapshot.snapshotArns] choice: sets `snapshot_arns`.
final class MemorydbClusterSnapshotArns extends MemorydbClusterSnapshot {
  const MemorydbClusterSnapshotArns(this.snapshotArns);

  final TfArg<List<String>> snapshotArns;

  @override
  String get blockKey => 'snapshot_arns';

  @override
  Map<String, Object?> encode() => {'snapshot_arns': snapshotArns.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'snapshot_arns': snapshotArns};
}

/// The [MemorydbClusterSnapshot.snapshotName] choice: sets `snapshot_name`.
final class MemorydbClusterSnapshotName extends MemorydbClusterSnapshot {
  const MemorydbClusterSnapshotName(this.snapshotName);

  final TfArg<String> snapshotName;

  @override
  String get blockKey => 'snapshot_name';

  @override
  Map<String, Object?> encode() => {'snapshot_name': snapshotName.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'snapshot_name': snapshotName};
}

/// Factory wrapper for `aws_memorydb_cluster`.
final class AwsMemorydbCluster extends Resource {
  static const String tfType = 'aws_memorydb_cluster';

  AwsMemorydbCluster({
    required super.localName,
    required TfArg<String> aclName,
    TfArg<bool>? autoMinorVersionUpgrade,
    TfArg<bool>? dataTiering,
    TfArg<String>? description,
    TfArg<MemorydbClusterEngine>? engine,
    TfArg<String>? engineVersion,
    TfArg<String>? finalSnapshotName,
    TfArg<MemorydbClusterIpDiscovery>? ipDiscovery,
    RefTo<AwsKmsKey>? kmsKeyArn,
    TfArg<String>? maintenanceWindow,
    TfArg<String>? multiRegionClusterName,
    MemorydbClusterName? name,
    TfArg<MemorydbClusterNetworkType>? networkType,
    required TfArg<String> nodeType,
    TfArg<num>? numReplicasPerShard,
    TfArg<num>? numShards,
    TfArg<String>? parameterGroupName,
    TfArg<num>? port,
    TfArg<String>? region,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds,
    MemorydbClusterSnapshot? snapshot,
    TfArg<num>? snapshotRetentionLimit,
    TfArg<String>? snapshotWindow,
    RefTo<AwsSnsTopic>? snsTopicArn,
    TfArg<String>? subnetGroupName,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? tlsEnabled,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'acl_name': aclName,
           'auto_minor_version_upgrade': ?autoMinorVersionUpgrade,
           'data_tiering': ?dataTiering,
           'description': ?description,
           'engine': ?engine,
           'engine_version': ?engineVersion,
           'final_snapshot_name': ?finalSnapshotName,
           'ip_discovery': ?ipDiscovery,
           'kms_key_arn': ?kmsKeyArn?.encodeAs('arn'),
           'maintenance_window': ?maintenanceWindow,
           'multi_region_cluster_name': ?multiRegionClusterName,
           ...?name?.argMap,
           'network_type': ?networkType,
           'node_type': nodeType,
           'num_replicas_per_shard': ?numReplicasPerShard,
           'num_shards': ?numShards,
           'parameter_group_name': ?parameterGroupName,
           'port': ?port,
           'region': ?region,
           'security_group_ids': ?securityGroupIds?.encodeAs('id'),
           ...?snapshot?.argMap,
           'snapshot_retention_limit': ?snapshotRetentionLimit,
           'snapshot_window': ?snapshotWindow,
           'sns_topic_arn': ?snsTopicArn?.encodeAs('arn'),
           'subnet_group_name': ?subnetGroupName,
           'tags': ?tags,
           'tls_enabled': ?tlsEnabled,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMemorydbClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMemorydbCluster>`.
  RefTo<AwsMemorydbCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cluster_endpoint` attribute.
  TfRef<List<Map<String, Object?>>> get clusterEndpoint =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cluster_endpoint');

  /// Reference to `engine_patch_version` attribute.
  TfRef<String> get enginePatchVersion =>
      TfRef.attribute<String>(this, 'engine_patch_version');

  /// Reference to `shards` attribute.
  TfRef<List<Map<String, Object?>>> get shards =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'shards');

  /// Reference to `acl_name` attribute.
  TfRef<String> get aclNameRef => TfRef.attribute<String>(this, 'acl_name');

  /// Reference to `auto_minor_version_upgrade` attribute.
  TfRef<bool> get autoMinorVersionUpgradeRef =>
      TfRef.attribute<bool>(this, 'auto_minor_version_upgrade');

  /// Reference to `data_tiering` attribute.
  TfRef<bool> get dataTieringRef => TfRef.attribute<bool>(this, 'data_tiering');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `engine` attribute.
  TfRef<String> get engineRef => TfRef.attribute<String>(this, 'engine');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersionRef =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `final_snapshot_name` attribute.
  TfRef<String> get finalSnapshotNameRef =>
      TfRef.attribute<String>(this, 'final_snapshot_name');

  /// Reference to `ip_discovery` attribute.
  TfRef<String> get ipDiscoveryRef =>
      TfRef.attribute<String>(this, 'ip_discovery');

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArnRef =>
      TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `maintenance_window` attribute.
  TfRef<String> get maintenanceWindowRef =>
      TfRef.attribute<String>(this, 'maintenance_window');

  /// Reference to `multi_region_cluster_name` attribute.
  TfRef<String> get multiRegionClusterNameRef =>
      TfRef.attribute<String>(this, 'multi_region_cluster_name');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefixRef =>
      TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `network_type` attribute.
  TfRef<String> get networkTypeRef =>
      TfRef.attribute<String>(this, 'network_type');

  /// Reference to `node_type` attribute.
  TfRef<String> get nodeTypeRef => TfRef.attribute<String>(this, 'node_type');

  /// Reference to `num_replicas_per_shard` attribute.
  TfRef<num> get numReplicasPerShardRef =>
      TfRef.attribute<num>(this, 'num_replicas_per_shard');

  /// Reference to `num_shards` attribute.
  TfRef<num> get numShardsRef => TfRef.attribute<num>(this, 'num_shards');

  /// Reference to `parameter_group_name` attribute.
  TfRef<String> get parameterGroupNameRef =>
      TfRef.attribute<String>(this, 'parameter_group_name');

  /// Reference to `port` attribute.
  TfRef<num> get portRef => TfRef.attribute<num>(this, 'port');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_group_ids` attribute.
  TfRef<List<String>> get securityGroupIdsRef =>
      TfRef.attribute<List<String>>(this, 'security_group_ids');

  /// Reference to `snapshot_arns` attribute.
  TfRef<List<String>> get snapshotArnsRef =>
      TfRef.attribute<List<String>>(this, 'snapshot_arns');

  /// Reference to `snapshot_name` attribute.
  TfRef<String> get snapshotNameRef =>
      TfRef.attribute<String>(this, 'snapshot_name');

  /// Reference to `snapshot_retention_limit` attribute.
  TfRef<num> get snapshotRetentionLimitRef =>
      TfRef.attribute<num>(this, 'snapshot_retention_limit');

  /// Reference to `snapshot_window` attribute.
  TfRef<String> get snapshotWindowRef =>
      TfRef.attribute<String>(this, 'snapshot_window');

  /// Reference to `sns_topic_arn` attribute.
  TfRef<String> get snsTopicArnRef =>
      TfRef.attribute<String>(this, 'sns_topic_arn');

  /// Reference to `subnet_group_name` attribute.
  TfRef<String> get subnetGroupNameRef =>
      TfRef.attribute<String>(this, 'subnet_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tls_enabled` attribute.
  TfRef<bool> get tlsEnabledRef => TfRef.attribute<bool>(this, 'tls_enabled');
}
