// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elasticache_serverless_cache`.
const Set<String> _awsElasticacheServerlessCacheSensitive = <String>{};

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

  final TfArg<String> unit;

  Map<String, Object?> encode() => {
    if (maximum != null) 'maximum': maximum!.toTfJson(),
    if (minimum != null) 'minimum': minimum!.toTfJson(),
    'unit': unit.toTfJson(),
  };
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
    if (maximum != null) 'maximum': maximum!.toTfJson(),
    if (minimum != null) 'minimum': minimum!.toTfJson(),
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
    TfArg<String>? kmsKeyId,
    TfArg<String>? majorEngineVersion,
    required TfArg<String> name,
    TfArg<String>? networkType,
    TfArg<String>? region,
    TfArg<List<String>>? securityGroupIds,
    TfArg<List<String>>? snapshotArnsToRestore,
    TfArg<num>? snapshotRetentionLimit,
    TfArg<List<String>>? subnetIds,
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
           if (dailySnapshotTime != null)
             'daily_snapshot_time': dailySnapshotTime,
           if (description != null) 'description': description,
           'engine': engine,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (majorEngineVersion != null)
             'major_engine_version': majorEngineVersion,
           'name': name,
           if (networkType != null) 'network_type': networkType,
           if (region != null) 'region': region,
           if (securityGroupIds != null) 'security_group_ids': securityGroupIds,
           if (snapshotArnsToRestore != null)
             'snapshot_arns_to_restore': snapshotArnsToRestore,
           if (snapshotRetentionLimit != null)
             'snapshot_retention_limit': snapshotRetentionLimit,
           if (subnetIds != null) 'subnet_ids': subnetIds,
           if (tags != null) 'tags': tags,
           if (userGroupId != null) 'user_group_id': userGroupId,
           if (cacheUsageLimits != null)
             'cache_usage_limits': TfArg.literal([
               for (final e in cacheUsageLimits) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElasticacheServerlessCacheSensitive;

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
}
