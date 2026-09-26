// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_cache_policy`.
const Set<String> _awsCloudfrontCachePolicySensitive = <String>{};

/// Factory wrapper for `aws_cloudfront_cache_policy`.
final class DataAwsCloudfrontCachePolicy extends Data {
  static const String tfType = 'aws_cloudfront_cache_policy';

  DataAwsCloudfrontCachePolicy({
    required super.localName,
    TfArg<String>? name,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {if (name != null) 'name': name});

  @override
  Set<String> get sensitiveFields => _awsCloudfrontCachePolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `comment` attribute.
  TfRef<String> get comment => TfRef.attribute<String>(this, 'comment');

  /// Reference to `default_ttl` attribute.
  TfRef<num> get defaultTtl => TfRef.attribute<num>(this, 'default_ttl');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `max_ttl` attribute.
  TfRef<num> get maxTtl => TfRef.attribute<num>(this, 'max_ttl');

  /// Reference to `min_ttl` attribute.
  TfRef<num> get minTtl => TfRef.attribute<num>(this, 'min_ttl');

  /// Reference to `parameters_in_cache_key_and_forwarded_to_origin` attribute.
  TfRef<List<Map<String, Object?>>>
  get parametersInCacheKeyAndForwardedToOrigin =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'parameters_in_cache_key_and_forwarded_to_origin',
      );
}
