// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_elasticache_serverless_cache`.
const Set<String> _awsElasticacheServerlessCacheSensitive = <String>{};

/// Elasticache Serverless Cache Network enum for `network_type`.
enum ElasticacheServerlessCacheNetworkType implements TerraformEnum {
  ipv4('ipv4'),
  ipv6('ipv6'),
  dualStack('dual_stack');

  const ElasticacheServerlessCacheNetworkType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `cache_usage_limits` block of
/// `aws_elasticache_serverless_cache` (derived from provider schema).
@immutable
final class ElasticacheServerlessCacheCacheUsageLimits {
  const ElasticacheServerlessCacheCacheUsageLimits({
    this.dataStorage,
    this.ecpuPerSecond,
  });

  final List<ElasticacheServerlessCacheCacheUsageLimitsDataStorage>?
  dataStorage;

  final List<ElasticacheServerlessCacheCacheUsageLimitsEcpuPerSecond>?
  ecpuPerSecond;

  Map<String, Object?> encode() => {
    if (dataStorage != null)
      'data_storage': [for (final e in dataStorage!) e.encode()],
    if (ecpuPerSecond != null)
      'ecpu_per_second': [for (final e in ecpuPerSecond!) e.encode()],
  };
}

/// Typed helper for the `cache_usage_limits.data_storage` block of
/// `aws_elasticache_serverless_cache` (derived from provider schema).
@immutable
final class ElasticacheServerlessCacheCacheUsageLimitsDataStorage {
  const ElasticacheServerlessCacheCacheUsageLimitsDataStorage({
    this.maximum,
    this.minimum,
    required this.unit,
  });

  final TfArg<num>? maximum;

  final TfArg<num>? minimum;

  final TfArg<ElasticacheServerlessCacheCacheUsageLimitsDataStorageUnit> unit;

  Map<String, Object?> encode() => {
    'maximum': ?maximum?.toTfJson(),
    'minimum': ?minimum?.toTfJson(),
    'unit': unit.toTfJson(),
  };
}

/// `unit` — derived from the provider schema description.
enum ElasticacheServerlessCacheCacheUsageLimitsDataStorageUnit
    implements TerraformEnum {
  gb('GB');

  const ElasticacheServerlessCacheCacheUsageLimitsDataStorageUnit(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `cache_usage_limits.ecpu_per_second` block of
/// `aws_elasticache_serverless_cache` (derived from provider schema).
@immutable
final class ElasticacheServerlessCacheCacheUsageLimitsEcpuPerSecond {
  const ElasticacheServerlessCacheCacheUsageLimitsEcpuPerSecond({
    this.maximum,
    this.minimum,
  });

  final TfArg<num>? maximum;

  final TfArg<num>? minimum;

  Map<String, Object?> encode() => {
    'maximum': ?maximum?.toTfJson(),
    'minimum': ?minimum?.toTfJson(),
  };
}

/// Factory wrapper for `aws_elasticache_serverless_cache`.
final class AwsElasticacheServerlessCache extends Resource {
  static const String tfType = 'aws_elasticache_serverless_cache';

  AwsElasticacheServerlessCache({
    required super.localName,
    TfArg<String>? dailySnapshotTime,
    TfArg<String>? description,
    required TfArg<String> engine,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<String>? majorEngineVersion,
    required TfArg<String> name,
    TfArg<ElasticacheServerlessCacheNetworkType>? networkType,
    TfArg<String>? region,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds,
    TfArg<List<String>>? snapshotArnsToRestore,
    TfArg<num>? snapshotRetentionLimit,
    TfArg<List<RefTo<AwsSubnet>>>? subnetIds,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? userGroupId,
    List<ElasticacheServerlessCacheCacheUsageLimits>? cacheUsageLimits,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'daily_snapshot_time': ?dailySnapshotTime,
           'description': ?description,
           'engine': engine,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'major_engine_version': ?majorEngineVersion,
           'name': name,
           'network_type': ?networkType,
           'region': ?region,
           'security_group_ids': ?securityGroupIds?.encodeAs('id'),
           'snapshot_arns_to_restore': ?snapshotArnsToRestore,
           'snapshot_retention_limit': ?snapshotRetentionLimit,
           'subnet_ids': ?subnetIds?.encodeAs('id'),
           'tags': ?tags,
           'user_group_id': ?userGroupId,
           if (cacheUsageLimits != null)
             'cache_usage_limits': TfArg.literal([
               for (final e in cacheUsageLimits) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElasticacheServerlessCacheSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsElasticacheServerlessCache>`.
  RefTo<AwsElasticacheServerlessCache> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `endpoint` attribute.
  TfRef<List<Map<String, Object?>>> get endpoint =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'endpoint');

  /// Reference to `full_engine_version` attribute.
  TfRef<String> get fullEngineVersion =>
      TfRef.attribute<String>(this, 'full_engine_version');

  /// Reference to `reader_endpoint` attribute.
  TfRef<List<Map<String, Object?>>> get readerEndpoint =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'reader_endpoint');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `daily_snapshot_time` attribute.
  TfRef<String> get dailySnapshotTimeRef =>
      TfRef.attribute<String>(this, 'daily_snapshot_time');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `engine` attribute.
  TfRef<String> get engineRef => TfRef.attribute<String>(this, 'engine');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyIdRef => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `major_engine_version` attribute.
  TfRef<String> get majorEngineVersionRef =>
      TfRef.attribute<String>(this, 'major_engine_version');

  /// Reference to `network_type` attribute.
  TfRef<String> get networkTypeRef =>
      TfRef.attribute<String>(this, 'network_type');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_group_ids` attribute.
  TfRef<List<String>> get securityGroupIdsRef =>
      TfRef.attribute<List<String>>(this, 'security_group_ids');

  /// Reference to `snapshot_arns_to_restore` attribute.
  TfRef<List<String>> get snapshotArnsToRestoreRef =>
      TfRef.attribute<List<String>>(this, 'snapshot_arns_to_restore');

  /// Reference to `snapshot_retention_limit` attribute.
  TfRef<num> get snapshotRetentionLimitRef =>
      TfRef.attribute<num>(this, 'snapshot_retention_limit');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIdsRef =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `user_group_id` attribute.
  TfRef<String> get userGroupIdRef =>
      TfRef.attribute<String>(this, 'user_group_id');
}
