// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_origin_request_policy`.
const Set<String> _awsCloudfrontOriginRequestPolicySensitive = <String>{};

/// Typed helper for the `cookies_config` block of
/// `aws_cloudfront_origin_request_policy` (derived from provider schema).
@immutable
final class CloudfrontOriginRequestPolicyCookiesConfig {
  const CloudfrontOriginRequestPolicyCookiesConfig({
    required this.cookieBehavior,
    this.cookies,
  });

  final TfArg<String> cookieBehavior;

  final CloudfrontOriginRequestPolicyCookiesConfigCookies? cookies;

  Map<String, Object?> encode() => {
    'cookie_behavior': cookieBehavior.toTfJson(),
    if (cookies != null) 'cookies': cookies!.encode(),
  };
}

/// Typed helper for the `cookies_config.cookies` block of
/// `aws_cloudfront_origin_request_policy` (derived from provider schema).
@immutable
final class CloudfrontOriginRequestPolicyCookiesConfigCookies {
  const CloudfrontOriginRequestPolicyCookiesConfigCookies({this.items});

  final TfArg<List<Object?>>? items;

  Map<String, Object?> encode() => {
    if (items != null) 'items': items!.toTfJson(),
  };
}

/// Typed helper for the `headers_config` block of
/// `aws_cloudfront_origin_request_policy` (derived from provider schema).
@immutable
final class CloudfrontOriginRequestPolicyHeadersConfig {
  const CloudfrontOriginRequestPolicyHeadersConfig({
    this.headerBehavior,
    this.headers,
  });

  final TfArg<String>? headerBehavior;

  final CloudfrontOriginRequestPolicyHeadersConfigHeaders? headers;

  Map<String, Object?> encode() => {
    if (headerBehavior != null) 'header_behavior': headerBehavior!.toTfJson(),
    if (headers != null) 'headers': headers!.encode(),
  };
}

/// Typed helper for the `headers_config.headers` block of
/// `aws_cloudfront_origin_request_policy` (derived from provider schema).
@immutable
final class CloudfrontOriginRequestPolicyHeadersConfigHeaders {
  const CloudfrontOriginRequestPolicyHeadersConfigHeaders({this.items});

  final TfArg<List<Object?>>? items;

  Map<String, Object?> encode() => {
    if (items != null) 'items': items!.toTfJson(),
  };
}

/// Typed helper for the `query_strings_config` block of
/// `aws_cloudfront_origin_request_policy` (derived from provider schema).
@immutable
final class CloudfrontOriginRequestPolicyQueryStringsConfig {
  const CloudfrontOriginRequestPolicyQueryStringsConfig({
    required this.queryStringBehavior,
    this.queryStrings,
  });

  final TfArg<String> queryStringBehavior;

  final CloudfrontOriginRequestPolicyQueryStringsConfigQueryStrings?
  queryStrings;

  Map<String, Object?> encode() => {
    'query_string_behavior': queryStringBehavior.toTfJson(),
    if (queryStrings != null) 'query_strings': queryStrings!.encode(),
  };
}

/// Typed helper for the `query_strings_config.query_strings` block of
/// `aws_cloudfront_origin_request_policy` (derived from provider schema).
@immutable
final class CloudfrontOriginRequestPolicyQueryStringsConfigQueryStrings {
  const CloudfrontOriginRequestPolicyQueryStringsConfigQueryStrings({
    this.items,
  });

  final TfArg<List<Object?>>? items;

  Map<String, Object?> encode() => {
    if (items != null) 'items': items!.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudfront_origin_request_policy`.
final class AwsCloudfrontOriginRequestPolicy extends Resource {
  static const String tfType = 'aws_cloudfront_origin_request_policy';

  AwsCloudfrontOriginRequestPolicy({
    required super.localName,
    TfArg<String>? comment,
    required TfArg<String> name,
    required CloudfrontOriginRequestPolicyCookiesConfig cookiesConfig,
    required CloudfrontOriginRequestPolicyHeadersConfig headersConfig,
    required CloudfrontOriginRequestPolicyQueryStringsConfig queryStringsConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (comment != null) 'comment': comment,
           'name': name,
           'cookies_config': TfArg.literal(cookiesConfig.encode()),
           'headers_config': TfArg.literal(headersConfig.encode()),
           'query_strings_config': TfArg.literal(queryStringsConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudfrontOriginRequestPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
