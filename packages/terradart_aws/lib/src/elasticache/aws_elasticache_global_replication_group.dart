// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elasticache_global_replication_group`.
const Set<String> _awsElasticacheGlobalReplicationGroupSensitive = <String>{};

/// Factory wrapper for `aws_elasticache_global_replication_group`.
final class AwsElasticacheGlobalReplicationGroup extends Resource {
  static const String tfType = 'aws_elasticache_global_replication_group';

  AwsElasticacheGlobalReplicationGroup({
    required super.localName,
    TfArg<bool>? automaticFailoverEnabled,
    TfArg<String>? cacheNodeType,
    TfArg<String>? engine,
    TfArg<String>? engineVersion,
    TfArg<String>? globalReplicationGroupDescription,
    required TfArg<String> globalReplicationGroupIdSuffix,
    TfArg<num>? numNodeGroups,
    TfArg<String>? parameterGroupName,
    required TfArg<String> primaryReplicationGroupId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (automaticFailoverEnabled != null)
             'automatic_failover_enabled': automaticFailoverEnabled,
           if (cacheNodeType != null) 'cache_node_type': cacheNodeType,
           if (engine != null) 'engine': engine,
           if (engineVersion != null) 'engine_version': engineVersion,
           if (globalReplicationGroupDescription != null)
             'global_replication_group_description':
                 globalReplicationGroupDescription,
           'global_replication_group_id_suffix': globalReplicationGroupIdSuffix,
           if (numNodeGroups != null) 'num_node_groups': numNodeGroups,
           if (parameterGroupName != null)
             'parameter_group_name': parameterGroupName,
           'primary_replication_group_id': primaryReplicationGroupId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsElasticacheGlobalReplicationGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `at_rest_encryption_enabled` attribute.
  TfRef<bool> get atRestEncryptionEnabled =>
      TfRef.attribute<bool>(this, 'at_rest_encryption_enabled');

  /// Reference to `auth_token_enabled` attribute.
  TfRef<bool> get authTokenEnabled =>
      TfRef.attribute<bool>(this, 'auth_token_enabled');

  /// Reference to `cluster_enabled` attribute.
  TfRef<bool> get clusterEnabled =>
      TfRef.attribute<bool>(this, 'cluster_enabled');

  /// Reference to `engine_version_actual` attribute.
  TfRef<String> get engineVersionActual =>
      TfRef.attribute<String>(this, 'engine_version_actual');

  /// Reference to `global_node_groups` attribute.
  TfRef<List<Map<String, Object?>>> get globalNodeGroups =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'global_node_groups');

  /// Reference to `global_replication_group_id` attribute.
  TfRef<String> get globalReplicationGroupId =>
      TfRef.attribute<String>(this, 'global_replication_group_id');

  /// Reference to `transit_encryption_enabled` attribute.
  TfRef<bool> get transitEncryptionEnabled =>
      TfRef.attribute<bool>(this, 'transit_encryption_enabled');
}
