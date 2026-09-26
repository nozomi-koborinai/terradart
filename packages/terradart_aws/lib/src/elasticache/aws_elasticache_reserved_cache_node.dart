// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elasticache_reserved_cache_node`.
const Set<String> _awsElasticacheReservedCacheNodeSensitive = <String>{};

/// Factory wrapper for `aws_elasticache_reserved_cache_node`.
final class AwsElasticacheReservedCacheNode extends Resource {
  static const String tfType = 'aws_elasticache_reserved_cache_node';

  AwsElasticacheReservedCacheNode({
    required super.localName,
    TfArg<num>? cacheNodeCount,
    TfArg<String>? region,
    required TfArg<String> reservedCacheNodesOfferingId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (cacheNodeCount != null) 'cache_node_count': cacheNodeCount,
           if (region != null) 'region': region,
           'reserved_cache_nodes_offering_id': reservedCacheNodesOfferingId,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElasticacheReservedCacheNodeSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cache_node_type` attribute.
  TfRef<String> get cacheNodeType =>
      TfRef.attribute<String>(this, 'cache_node_type');

  /// Reference to `duration` attribute.
  TfRef<String> get duration => TfRef.attribute<String>(this, 'duration');

  /// Reference to `fixed_price` attribute.
  TfRef<num> get fixedPrice => TfRef.attribute<num>(this, 'fixed_price');

  /// Reference to `offering_type` attribute.
  TfRef<String> get offeringType =>
      TfRef.attribute<String>(this, 'offering_type');

  /// Reference to `product_description` attribute.
  TfRef<String> get productDescription =>
      TfRef.attribute<String>(this, 'product_description');

  /// Reference to `recurring_charges` attribute.
  TfRef<List<Map<String, Object?>>> get recurringCharges =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'recurring_charges');

  /// Reference to `start_time` attribute.
  TfRef<String> get startTime => TfRef.attribute<String>(this, 'start_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `usage_price` attribute.
  TfRef<num> get usagePrice => TfRef.attribute<num>(this, 'usage_price');
}
