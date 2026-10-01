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

  final CloudfrontCachePolicyCookiesConfig cookiesConfig;

  final CloudfrontCachePolicyHeadersConfig headersConfig;

  final CloudfrontCachePolicyQueryStringsConfig queryStringsConfig;

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
final class CloudfrontCachePolicyCookiesConfig {
  const CloudfrontCachePolicyCookiesConfig({
    required this.cookieBehavior,
    this.cookies,
  });

  final CloudfrontCachePolicyCookieBehavior cookieBehavior;

  final CloudfrontCachePolicyCookies? cookies;

  Map<String, Object?> encode() => {
    'cookie_behavior': cookieBehavior.toTfJson(),
    'cookies': ?cookies?.encode(),
  };
}

/// `cookie_behavior` — derived from the provider schema description.
extension type const CloudfrontCachePolicyCookieBehavior._(TfArg<String> _)
    implements TfArg<String> {
  CloudfrontCachePolicyCookieBehavior.variable(String name)
    : this._(TfArg.variable(name));
  CloudfrontCachePolicyCookieBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const CloudfrontCachePolicyCookieBehavior.arg(TfArg<String> arg)
    : this._(arg);

  static const none = CloudfrontCachePolicyCookieBehavior._(
    TfArgLiteral('none'),
  );
  static const whitelist = CloudfrontCachePolicyCookieBehavior._(
    TfArgLiteral('whitelist'),
  );
  static const allexcept = CloudfrontCachePolicyCookieBehavior._(
    TfArgLiteral('allExcept'),
  );
  static const all = CloudfrontCachePolicyCookieBehavior._(TfArgLiteral('all'));

  static const List<CloudfrontCachePolicyCookieBehavior> values = [
    none,
    whitelist,
    allexcept,
    all,
  ];
}

/// Typed helper for the `parameters_in_cache_key_and_forwarded_to_origin.cookies_config.cookies` block of
/// `aws_cloudfront_cache_policy` (derived from provider schema).
@immutable
final class CloudfrontCachePolicyCookies {
  const CloudfrontCachePolicyCookies({this.items});

  final TfArg<List<String>>? items;

  Map<String, Object?> encode() => {'items': ?items?.toTfJson()};
}

/// Typed helper for the `parameters_in_cache_key_and_forwarded_to_origin.headers_config` block of
/// `aws_cloudfront_cache_policy` (derived from provider schema).
@immutable
final class CloudfrontCachePolicyHeadersConfig {
  const CloudfrontCachePolicyHeadersConfig({this.headerBehavior, this.headers});

  final CloudfrontCachePolicyHeaderBehavior? headerBehavior;

  final CloudfrontCachePolicyHeaders? headers;

  Map<String, Object?> encode() => {
    'header_behavior': ?headerBehavior?.toTfJson(),
    'headers': ?headers?.encode(),
  };
}

/// `header_behavior` — derived from the provider schema description.
extension type const CloudfrontCachePolicyHeaderBehavior._(TfArg<String> _)
    implements TfArg<String> {
  CloudfrontCachePolicyHeaderBehavior.variable(String name)
    : this._(TfArg.variable(name));
  CloudfrontCachePolicyHeaderBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const CloudfrontCachePolicyHeaderBehavior.arg(TfArg<String> arg)
    : this._(arg);

  static const none = CloudfrontCachePolicyHeaderBehavior._(
    TfArgLiteral('none'),
  );
  static const whitelist = CloudfrontCachePolicyHeaderBehavior._(
    TfArgLiteral('whitelist'),
  );

  static const List<CloudfrontCachePolicyHeaderBehavior> values = [
    none,
    whitelist,
  ];
}

/// Typed helper for the `parameters_in_cache_key_and_forwarded_to_origin.headers_config.headers` block of
/// `aws_cloudfront_cache_policy` (derived from provider schema).
@immutable
final class CloudfrontCachePolicyHeaders {
  const CloudfrontCachePolicyHeaders({this.items});

  final TfArg<List<String>>? items;

  Map<String, Object?> encode() => {'items': ?items?.toTfJson()};
}

/// Typed helper for the `parameters_in_cache_key_and_forwarded_to_origin.query_strings_config` block of
/// `aws_cloudfront_cache_policy` (derived from provider schema).
@immutable
final class CloudfrontCachePolicyQueryStringsConfig {
  const CloudfrontCachePolicyQueryStringsConfig({
    required this.queryStringBehavior,
    this.queryStrings,
  });

  final CloudfrontCachePolicyQueryStringBehavior queryStringBehavior;

  final CloudfrontCachePolicyQueryStrings? queryStrings;

  Map<String, Object?> encode() => {
    'query_string_behavior': queryStringBehavior.toTfJson(),
    'query_strings': ?queryStrings?.encode(),
  };
}

/// `query_string_behavior` — derived from the provider schema description.
extension type const CloudfrontCachePolicyQueryStringBehavior._(TfArg<String> _)
    implements TfArg<String> {
  CloudfrontCachePolicyQueryStringBehavior.variable(String name)
    : this._(TfArg.variable(name));
  CloudfrontCachePolicyQueryStringBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const CloudfrontCachePolicyQueryStringBehavior.arg(TfArg<String> arg)
    : this._(arg);

  static const none = CloudfrontCachePolicyQueryStringBehavior._(
    TfArgLiteral('none'),
  );
  static const whitelist = CloudfrontCachePolicyQueryStringBehavior._(
    TfArgLiteral('whitelist'),
  );
  static const allexcept = CloudfrontCachePolicyQueryStringBehavior._(
    TfArgLiteral('allExcept'),
  );
  static const all = CloudfrontCachePolicyQueryStringBehavior._(
    TfArgLiteral('all'),
  );

  static const List<CloudfrontCachePolicyQueryStringBehavior> values = [
    none,
    whitelist,
    allexcept,
    all,
  ];
}

/// Typed helper for the `parameters_in_cache_key_and_forwarded_to_origin.query_strings_config.query_strings` block of
/// `aws_cloudfront_cache_policy` (derived from provider schema).
@immutable
final class CloudfrontCachePolicyQueryStrings {
  const CloudfrontCachePolicyQueryStrings({this.items});

  final TfArg<List<String>>? items;

  Map<String, Object?> encode() => {'items': ?items?.toTfJson()};
}

/// Factory wrapper for `aws_cloudfront_cache_policy`.
final class AwsCloudfrontCachePolicy extends Resource {
  static const String tfType = 'aws_cloudfront_cache_policy';

  AwsCloudfrontCachePolicy(
    super.localName, {
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `comment` attribute.
  TfRef<String> get comment => TfRef.attribute<String>(this, 'comment');

  /// Reference to `default_ttl` attribute.
  TfRef<num> get defaultTtl => TfRef.attribute<num>(this, 'default_ttl');

  /// Reference to `max_ttl` attribute.
  TfRef<num> get maxTtl => TfRef.attribute<num>(this, 'max_ttl');

  /// Reference to `min_ttl` attribute.
  TfRef<num> get minTtl => TfRef.attribute<num>(this, 'min_ttl');
}
