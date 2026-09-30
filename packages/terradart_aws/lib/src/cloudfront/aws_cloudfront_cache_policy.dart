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
    'enable_accept_encoding_brotli': ?enableAcceptEncodingBrotli?.toTfJson(),
    'enable_accept_encoding_gzip': ?enableAcceptEncodingGzip?.toTfJson(),
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

  final TfArg<
    CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookieBehavior
  >
  cookieBehavior;

  final CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookies?
  cookies;

  Map<String, Object?> encode() => {
    'cookie_behavior': cookieBehavior.toTfJson(),
    'cookies': ?cookies?.encode(),
  };
}

/// `cookie_behavior` — derived from the provider schema description.
enum CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookieBehavior
    implements TerraformEnum {
  none('none'),
  whitelist('whitelist'),
  allexcept('allExcept'),
  all('all');

  const CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookieBehavior(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies` block of
/// `aws_cloudfront_cache_policy` (derived from provider schema).
@immutable
final class CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookies {
  const CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookies({
    this.items,
  });

  final TfArg<List<String>>? items;

  Map<String, Object?> encode() => {'items': ?items?.toTfJson()};
}

/// Typed helper for the `parameters_in_cache_key_and_forwarded_to_origin.headers_config` block of
/// `aws_cloudfront_cache_policy` (derived from provider schema).
@immutable
final class CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig {
  const CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig({
    this.headerBehavior,
    this.headers,
  });

  final TfArg<
    CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeaderBehavior
  >?
  headerBehavior;

  final CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeaders?
  headers;

  Map<String, Object?> encode() => {
    'header_behavior': ?headerBehavior?.toTfJson(),
    'headers': ?headers?.encode(),
  };
}

/// `header_behavior` — derived from the provider schema description.
enum CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeaderBehavior
    implements TerraformEnum {
  none('none'),
  whitelist('whitelist');

  const CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeaderBehavior(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers` block of
/// `aws_cloudfront_cache_policy` (derived from provider schema).
@immutable
final class CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeaders {
  const CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeaders({
    this.items,
  });

  final TfArg<List<String>>? items;

  Map<String, Object?> encode() => {'items': ?items?.toTfJson()};
}

/// Typed helper for the `parameters_in_cache_key_and_forwarded_to_origin.query_strings_config` block of
/// `aws_cloudfront_cache_policy` (derived from provider schema).
@immutable
final class CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig {
  const CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig({
    required this.queryStringBehavior,
    this.queryStrings,
  });

  final TfArg<
    CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryStringBehavior
  >
  queryStringBehavior;

  final CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryStrings?
  queryStrings;

  Map<String, Object?> encode() => {
    'query_string_behavior': queryStringBehavior.toTfJson(),
    'query_strings': ?queryStrings?.encode(),
  };
}

/// `query_string_behavior` — derived from the provider schema description.
enum CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryStringBehavior
    implements TerraformEnum {
  none('none'),
  whitelist('whitelist'),
  allexcept('allExcept'),
  all('all');

  const CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryStringBehavior(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings` block of
/// `aws_cloudfront_cache_policy` (derived from provider schema).
@immutable
final class CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryStrings {
  const CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryStrings({
    this.items,
  });

  final TfArg<List<String>>? items;

  Map<String, Object?> encode() => {'items': ?items?.toTfJson()};
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
           'comment': ?comment,
           'default_ttl': ?defaultTtl,
           'max_ttl': ?maxTtl,
           'min_ttl': ?minTtl,
           'name': name,
           'parameters_in_cache_key_and_forwarded_to_origin': TfArg.literal(
             parametersInCacheKeyAndForwardedToOrigin.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudfrontCachePolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudfrontCachePolicy>`.
  RefTo<AwsCloudfrontCachePolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `comment` attribute.
  TfRef<String> get commentRef => TfRef.attribute<String>(this, 'comment');

  /// Reference to `default_ttl` attribute.
  TfRef<num> get defaultTtlRef => TfRef.attribute<num>(this, 'default_ttl');

  /// Reference to `max_ttl` attribute.
  TfRef<num> get maxTtlRef => TfRef.attribute<num>(this, 'max_ttl');

  /// Reference to `min_ttl` attribute.
  TfRef<num> get minTtlRef => TfRef.attribute<num>(this, 'min_ttl');
}
