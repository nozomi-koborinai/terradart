// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elasticache_serverless_cache`.
const Set<String> _awsElasticacheServerlessCacheSensitive = <String>{};

/// Factory wrapper for `aws_elasticache_serverless_cache`.
final class DataAwsElasticacheServerlessCache extends Data {
  static const String tfType = 'aws_elasticache_serverless_cache';

  DataAwsElasticacheServerlessCache({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsElasticacheServerlessCacheSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cache_usage_limits` attribute.
  TfRef<Map<String, Object?>> get cacheUsageLimits =>
      TfRef.attribute<Map<String, Object?>>(this, 'cache_usage_limits');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `daily_snapshot_time` attribute.
  TfRef<String> get dailySnapshotTime =>
      TfRef.attribute<String>(this, 'daily_snapshot_time');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `endpoint` attribute.
  TfRef<Map<String, Object?>> get endpoint =>
      TfRef.attribute<Map<String, Object?>>(this, 'endpoint');

  /// Reference to `engine` attribute.
  TfRef<String> get engine => TfRef.attribute<String>(this, 'engine');

  /// Reference to `full_engine_version` attribute.
  TfRef<String> get fullEngineVersion =>
      TfRef.attribute<String>(this, 'full_engine_version');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `major_engine_version` attribute.
  TfRef<String> get majorEngineVersion =>
      TfRef.attribute<String>(this, 'major_engine_version');

  /// Reference to `reader_endpoint` attribute.
  TfRef<Map<String, Object?>> get readerEndpoint =>
      TfRef.attribute<Map<String, Object?>>(this, 'reader_endpoint');

  /// Reference to `security_group_ids` attribute.
  TfRef<List<String>> get securityGroupIds =>
      TfRef.attribute<List<String>>(this, 'security_group_ids');

  /// Reference to `snapshot_retention_limit` attribute.
  TfRef<num> get snapshotRetentionLimit =>
      TfRef.attribute<num>(this, 'snapshot_retention_limit');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIds =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `user_group_id` attribute.
  TfRef<String> get userGroupId =>
      TfRef.attribute<String>(this, 'user_group_id');
}
