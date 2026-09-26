// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elasticache_service_update_actions`.
const Set<String> _awsElasticacheServiceUpdateActionsSensitive = <String>{};

/// Factory wrapper for `aws_elasticache_service_update_actions`.
final class DataAwsElasticacheServiceUpdateActions extends Data {
  static const String tfType = 'aws_elasticache_service_update_actions';

  DataAwsElasticacheServiceUpdateActions({
    required super.localName,
    TfArg<String>? cacheClusterId,
    TfArg<String>? region,
    TfArg<String>? replicationGroupId,
    TfArg<List<String>>? serviceUpdateStatus,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (cacheClusterId != null) 'cache_cluster_id': cacheClusterId,
           if (region != null) 'region': region,
           if (replicationGroupId != null)
             'replication_group_id': replicationGroupId,
           if (serviceUpdateStatus != null)
             'service_update_status': serviceUpdateStatus,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsElasticacheServiceUpdateActionsSensitive;

  /// Reference to `update_actions` attribute.
  TfRef<List<Map<String, Object?>>> get updateActions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'update_actions');
}
