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

  final CloudfrontOriginRequestPolicyCookieBehavior cookieBehavior;

  final CloudfrontOriginRequestPolicyCookies? cookies;

  Map<String, Object?> encode() => {
    'cookie_behavior': cookieBehavior.toTfJson(),
    'cookies': ?cookies?.encode(),
  };
}

/// `cookie_behavior` — derived from the provider schema description.
extension type const CloudfrontOriginRequestPolicyCookieBehavior._(
  TfArg<String> _
) implements TfArg<String> {
  CloudfrontOriginRequestPolicyCookieBehavior.variable(String name)
    : this._(TfArg.variable(name));
  CloudfrontOriginRequestPolicyCookieBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const CloudfrontOriginRequestPolicyCookieBehavior.arg(TfArg<String> arg)
    : this._(arg);

  static const none = CloudfrontOriginRequestPolicyCookieBehavior._(
    TfArgLiteral('none'),
  );
  static const whitelist = CloudfrontOriginRequestPolicyCookieBehavior._(
    TfArgLiteral('whitelist'),
  );
  static const all = CloudfrontOriginRequestPolicyCookieBehavior._(
    TfArgLiteral('all'),
  );
  static const allexcept = CloudfrontOriginRequestPolicyCookieBehavior._(
    TfArgLiteral('allExcept'),
  );

  static const List<CloudfrontOriginRequestPolicyCookieBehavior> values = [
    none,
    whitelist,
    all,
    allexcept,
  ];
}

/// Typed helper for the `cookies_config.cookies` block of
/// `aws_cloudfront_origin_request_policy` (derived from provider schema).
@immutable
final class CloudfrontOriginRequestPolicyCookies {
  const CloudfrontOriginRequestPolicyCookies({this.items});

  final TfArg<List<String>>? items;

  Map<String, Object?> encode() => {'items': ?items?.toTfJson()};
}

/// Typed helper for the `headers_config` block of
/// `aws_cloudfront_origin_request_policy` (derived from provider schema).
@immutable
final class CloudfrontOriginRequestPolicyHeadersConfig {
  const CloudfrontOriginRequestPolicyHeadersConfig({
    this.headerBehavior,
    this.headers,
  });

  final CloudfrontOriginRequestPolicyHeaderBehavior? headerBehavior;

  final CloudfrontOriginRequestPolicyHeaders? headers;

  Map<String, Object?> encode() => {
    'header_behavior': ?headerBehavior?.toTfJson(),
    'headers': ?headers?.encode(),
  };
}

/// `header_behavior` — derived from the provider schema description.
extension type const CloudfrontOriginRequestPolicyHeaderBehavior._(
  TfArg<String> _
) implements TfArg<String> {
  CloudfrontOriginRequestPolicyHeaderBehavior.variable(String name)
    : this._(TfArg.variable(name));
  CloudfrontOriginRequestPolicyHeaderBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const CloudfrontOriginRequestPolicyHeaderBehavior.arg(TfArg<String> arg)
    : this._(arg);

  static const none = CloudfrontOriginRequestPolicyHeaderBehavior._(
    TfArgLiteral('none'),
  );
  static const whitelist = CloudfrontOriginRequestPolicyHeaderBehavior._(
    TfArgLiteral('whitelist'),
  );
  static const allviewer = CloudfrontOriginRequestPolicyHeaderBehavior._(
    TfArgLiteral('allViewer'),
  );
  static const allviewerandwhitelistcloudfront =
      CloudfrontOriginRequestPolicyHeaderBehavior._(
        TfArgLiteral('allViewerAndWhitelistCloudFront'),
      );
  static const allexcept = CloudfrontOriginRequestPolicyHeaderBehavior._(
    TfArgLiteral('allExcept'),
  );

  static const List<CloudfrontOriginRequestPolicyHeaderBehavior> values = [
    none,
    whitelist,
    allviewer,
    allviewerandwhitelistcloudfront,
    allexcept,
  ];
}

/// Typed helper for the `headers_config.headers` block of
/// `aws_cloudfront_origin_request_policy` (derived from provider schema).
@immutable
final class CloudfrontOriginRequestPolicyHeaders {
  const CloudfrontOriginRequestPolicyHeaders({this.items});

  final TfArg<List<String>>? items;

  Map<String, Object?> encode() => {'items': ?items?.toTfJson()};
}

/// Typed helper for the `query_strings_config` block of
/// `aws_cloudfront_origin_request_policy` (derived from provider schema).
@immutable
final class CloudfrontOriginRequestPolicyQueryStringsConfig {
  const CloudfrontOriginRequestPolicyQueryStringsConfig({
    required this.queryStringBehavior,
    this.queryStrings,
  });

  final CloudfrontOriginRequestPolicyQueryStringBehavior queryStringBehavior;

  final CloudfrontOriginRequestPolicyQueryStrings? queryStrings;

  Map<String, Object?> encode() => {
    'query_string_behavior': queryStringBehavior.toTfJson(),
    'query_strings': ?queryStrings?.encode(),
  };
}

/// `query_string_behavior` — derived from the provider schema description.
extension type const CloudfrontOriginRequestPolicyQueryStringBehavior._(
  TfArg<String> _
) implements TfArg<String> {
  CloudfrontOriginRequestPolicyQueryStringBehavior.variable(String name)
    : this._(TfArg.variable(name));
  CloudfrontOriginRequestPolicyQueryStringBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const CloudfrontOriginRequestPolicyQueryStringBehavior.arg(TfArg<String> arg)
    : this._(arg);

  static const none = CloudfrontOriginRequestPolicyQueryStringBehavior._(
    TfArgLiteral('none'),
  );
  static const whitelist = CloudfrontOriginRequestPolicyQueryStringBehavior._(
    TfArgLiteral('whitelist'),
  );
  static const all = CloudfrontOriginRequestPolicyQueryStringBehavior._(
    TfArgLiteral('all'),
  );
  static const allexcept = CloudfrontOriginRequestPolicyQueryStringBehavior._(
    TfArgLiteral('allExcept'),
  );

  static const List<CloudfrontOriginRequestPolicyQueryStringBehavior> values = [
    none,
    whitelist,
    all,
    allexcept,
  ];
}

/// Typed helper for the `query_strings_config.query_strings` block of
/// `aws_cloudfront_origin_request_policy` (derived from provider schema).
@immutable
final class CloudfrontOriginRequestPolicyQueryStrings {
  const CloudfrontOriginRequestPolicyQueryStrings({this.items});

  final TfArg<List<String>>? items;

  Map<String, Object?> encode() => {'items': ?items?.toTfJson()};
}

/// Factory wrapper for `aws_cloudfront_origin_request_policy`.
final class AwsCloudfrontOriginRequestPolicy extends Resource {
  static const String tfType = 'aws_cloudfront_origin_request_policy';

  AwsCloudfrontOriginRequestPolicy(
    super.localName, {
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
           'comment': ?comment,
           'name': name,
           'cookies_config': TfArg.literal(cookiesConfig.encode()),
           'headers_config': TfArg.literal(headersConfig.encode()),
           'query_strings_config': TfArg.literal(queryStringsConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudfrontOriginRequestPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudfrontOriginRequestPolicy>`.
  RefTo<AwsCloudfrontOriginRequestPolicy> get ref => RefTo.of(this);

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
}
