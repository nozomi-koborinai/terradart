// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_origin_request_policy`.
const Set<String> _awsCloudfrontOriginRequestPolicySensitive = <String>{};

/// Factory wrapper for `aws_cloudfront_origin_request_policy`.
final class DataAwsCloudfrontOriginRequestPolicy extends Data {
  static const String tfType = 'aws_cloudfront_origin_request_policy';

  DataAwsCloudfrontOriginRequestPolicy({
    required super.localName,
    TfArg<String>? name,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {if (name != null) 'name': name});

  @override
  Set<String> get sensitiveFields => _awsCloudfrontOriginRequestPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `comment` attribute.
  TfRef<String> get comment => TfRef.attribute<String>(this, 'comment');

  /// Reference to `cookies_config` attribute.
  TfRef<List<Map<String, Object?>>> get cookiesConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cookies_config');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `headers_config` attribute.
  TfRef<List<Map<String, Object?>>> get headersConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'headers_config');

  /// Reference to `query_strings_config` attribute.
  TfRef<List<Map<String, Object?>>> get queryStringsConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'query_strings_config');
}
