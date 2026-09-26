// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_cache_policy`.
const Set<String> _awsCloudfrontCachePolicySensitive = <String>{};

/// Typed helper for the `parameters_in_cache_key_and_forwarded_to_origin` block of
/// `aws_cloudfront_cache_policy` (derived from provider schema).
@immutable
final class CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOrigin {
  const CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOrigin({
    this.enableAcceptEncodingBrotli,
    this.enableAcceptEncodingGzip,
    required this.cookiesConfig,
    required this.headersConfig,
    required this.queryStringsConfig,
  });

  final TfArg<bool>? enableAcceptEncodingBrotli;

  final TfArg<bool>? enableAcceptEncodingGzip;

  final CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig
  cookiesConfig;

  final CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig
  headersConfig;

  final CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig
  queryStringsConfig;

  Map<String, Object?> encode() => {
    if (enableAcceptEncodingBrotli != null)
      'enable_accept_encoding_brotli': enableAcceptEncodingBrotli!.toTfJson(),
    if (enableAcceptEncodingGzip != null)
      'enable_accept_encoding_gzip': enableAcceptEncodingGzip!.toTfJson(),
    'cookies_config': cookiesConfig.encode(),
    'headers_config': headersConfig.encode(),
    'query_strings_config': queryStringsConfig.encode(),
  };
}

/// Typed helper for the `parameters_in_cache_key_and_forwarded_to_origin.cookies_config` block of
/// `aws_cloudfront_cache_policy` (derived from provider schema).
@immutable
final class CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig {
  const CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig({
    required this.cookieBehavior,
    this.cookies,
  });

  final TfArg<String> cookieBehavior;

  final CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookies?
  cookies;

  Map<String, Object?> encode() => {
    'cookie_behavior': cookieBehavior.toTfJson(),
    if (cookies != null) 'cookies': cookies!.encode(),
  };
}

/// Typed helper for the `parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies` block of
/// `aws_cloudfront_cache_policy` (derived from provider schema).
@immutable
final class CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookies {
  const CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookies({
    this.items,
  });

  final TfArg<List<Object?>>? items;

  Map<String, Object?> encode() => {
    if (items != null) 'items': items!.toTfJson(),
  };
}

/// Typed helper for the `parameters_in_cache_key_and_forwarded_to_origin.headers_config` block of
/// `aws_cloudfront_cache_policy` (derived from provider schema).
@immutable
final class CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig {
  const CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig({
    this.headerBehavior,
    this.headers,
  });

  final TfArg<String>? headerBehavior;

  final CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeaders?
  headers;

  Map<String, Object?> encode() => {
    if (headerBehavior != null) 'header_behavior': headerBehavior!.toTfJson(),
    if (headers != null) 'headers': headers!.encode(),
  };
}

/// Typed helper for the `parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers` block of
/// `aws_cloudfront_cache_policy` (derived from provider schema).
@immutable
final class CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeaders {
  const CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeaders({
    this.items,
  });

  final TfArg<List<Object?>>? items;

  Map<String, Object?> encode() => {
    if (items != null) 'items': items!.toTfJson(),
  };
}

/// Typed helper for the `parameters_in_cache_key_and_forwarded_to_origin.query_strings_config` block of
/// `aws_cloudfront_cache_policy` (derived from provider schema).
@immutable
final class CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig {
  const CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig({
    required this.queryStringBehavior,
    this.queryStrings,
  });

  final TfArg<String> queryStringBehavior;

  final CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryStrings?
  queryStrings;

  Map<String, Object?> encode() => {
    'query_string_behavior': queryStringBehavior.toTfJson(),
    if (queryStrings != null) 'query_strings': queryStrings!.encode(),
  };
}

/// Typed helper for the `parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings` block of
/// `aws_cloudfront_cache_policy` (derived from provider schema).
@immutable
final class CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryStrings {
  const CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryStrings({
    this.items,
  });

  final TfArg<List<Object?>>? items;

  Map<String, Object?> encode() => {
    if (items != null) 'items': items!.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudfront_cache_policy`.
final class AwsCloudfrontCachePolicy extends Resource {
  static const String tfType = 'aws_cloudfront_cache_policy';

  AwsCloudfrontCachePolicy({
    required super.localName,
    TfArg<String>? comment,
    TfArg<num>? defaultTtl,
    TfArg<num>? maxTtl,
    TfArg<num>? minTtl,
    required TfArg<String> name,
    required CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOrigin
    parametersInCacheKeyAndForwardedToOrigin,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (comment != null) 'comment': comment,
           if (defaultTtl != null) 'default_ttl': defaultTtl,
           if (maxTtl != null) 'max_ttl': maxTtl,
           if (minTtl != null) 'min_ttl': minTtl,
           'name': name,
           'parameters_in_cache_key_and_forwarded_to_origin': TfArg.literal(
             parametersInCacheKeyAndForwardedToOrigin.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudfrontCachePolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
