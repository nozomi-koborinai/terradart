// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    TfArg<String>? kmsKeyArn,
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
    TfArg<List<String>>? securityGroupIds,
    MemorydbClusterSnapshot? snapshot,
    TfArg<num>? snapshotRetentionLimit,
    TfArg<String>? snapshotWindow,
    TfArg<String>? snsTopicArn,
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
           if (autoMinorVersionUpgrade != null)
             'auto_minor_version_upgrade': autoMinorVersionUpgrade,
           if (dataTiering != null) 'data_tiering': dataTiering,
           if (description != null) 'description': description,
           if (engine != null) 'engine': engine,
           if (engineVersion != null) 'engine_version': engineVersion,
           if (finalSnapshotName != null)
             'final_snapshot_name': finalSnapshotName,
           if (ipDiscovery != null) 'ip_discovery': ipDiscovery,
           if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn,
           if (maintenanceWindow != null)
             'maintenance_window': maintenanceWindow,
           if (multiRegionClusterName != null)
             'multi_region_cluster_name': multiRegionClusterName,
           ...?name?.argMap,
           if (networkType != null) 'network_type': networkType,
           'node_type': nodeType,
           if (numReplicasPerShard != null)
             'num_replicas_per_shard': numReplicasPerShard,
           if (numShards != null) 'num_shards': numShards,
           if (parameterGroupName != null)
             'parameter_group_name': parameterGroupName,
           if (port != null) 'port': port,
           if (region != null) 'region': region,
           if (securityGroupIds != null) 'security_group_ids': securityGroupIds,
           ...?snapshot?.argMap,
           if (snapshotRetentionLimit != null)
             'snapshot_retention_limit': snapshotRetentionLimit,
           if (snapshotWindow != null) 'snapshot_window': snapshotWindow,
           if (snsTopicArn != null) 'sns_topic_arn': snsTopicArn,
           if (subnetGroupName != null) 'subnet_group_name': subnetGroupName,
           if (tags != null) 'tags': tags,
           if (tlsEnabled != null) 'tls_enabled': tlsEnabled,
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
}
