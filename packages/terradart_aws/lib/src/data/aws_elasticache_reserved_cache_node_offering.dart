// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elasticache_reserved_cache_node_offering`.
const Set<String> _awsElasticacheReservedCacheNodeOfferingSensitive =
    <String>{};

/// Factory wrapper for `aws_elasticache_reserved_cache_node_offering`.
final class DataAwsElasticacheReservedCacheNodeOffering extends Data {
  static const String tfType = 'aws_elasticache_reserved_cache_node_offering';

  DataAwsElasticacheReservedCacheNodeOffering({
    required super.localName,
    required TfArg<String> cacheNodeType,
    required TfArg<String> duration,
    required TfArg<String> offeringType,
    required TfArg<String> productDescription,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cache_node_type': cacheNodeType,
           'duration': duration,
           'offering_type': offeringType,
           'product_description': productDescription,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsElasticacheReservedCacheNodeOfferingSensitive;

  /// Reference to `fixed_price` attribute.
  TfRef<num> get fixedPrice => TfRef.attribute<num>(this, 'fixed_price');

  /// Reference to `offering_id` attribute.
  TfRef<String> get offeringId => TfRef.attribute<String>(this, 'offering_id');
}
