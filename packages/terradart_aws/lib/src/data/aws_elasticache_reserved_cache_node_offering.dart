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

  DataAwsElasticacheReservedCacheNodeOffering(
    super.localName, {
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
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsElasticacheReservedCacheNodeOfferingSensitive;

  /// Reference to `fixed_price` attribute.
  TfRef<num> get fixedPrice => TfRef.attribute<num>(this, 'fixed_price');

  /// Reference to `offering_id` attribute.
  TfRef<String> get offeringId => TfRef.attribute<String>(this, 'offering_id');

  /// Reference to `cache_node_type` attribute.
  TfRef<String> get cacheNodeType =>
      TfRef.attribute<String>(this, 'cache_node_type');

  /// Reference to `duration` attribute.
  TfRef<String> get duration => TfRef.attribute<String>(this, 'duration');

  /// Reference to `offering_type` attribute.
  TfRef<String> get offeringType =>
      TfRef.attribute<String>(this, 'offering_type');

  /// Reference to `product_description` attribute.
  TfRef<String> get productDescription =>
      TfRef.attribute<String>(this, 'product_description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
