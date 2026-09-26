// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_response_headers_policy`.
const Set<String> _awsCloudfrontResponseHeadersPolicySensitive = <String>{};

/// Factory wrapper for `aws_cloudfront_response_headers_policy`.
final class DataAwsCloudfrontResponseHeadersPolicy extends Data {
  static const String tfType = 'aws_cloudfront_response_headers_policy';

  DataAwsCloudfrontResponseHeadersPolicy({
    required super.localName,
    TfArg<String>? name,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {if (name != null) 'name': name});

  @override
  Set<String> get sensitiveFields =>
      _awsCloudfrontResponseHeadersPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `comment` attribute.
  TfRef<String> get comment => TfRef.attribute<String>(this, 'comment');

  /// Reference to `cors_config` attribute.
  TfRef<List<Map<String, Object?>>> get corsConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cors_config');

  /// Reference to `custom_headers_config` attribute.
  TfRef<List<Map<String, Object?>>> get customHeadersConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'custom_headers_config',
      );

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `remove_headers_config` attribute.
  TfRef<List<Map<String, Object?>>> get removeHeadersConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'remove_headers_config',
      );

  /// Reference to `security_headers_config` attribute.
  TfRef<List<Map<String, Object?>>> get securityHeadersConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'security_headers_config',
      );

  /// Reference to `server_timing_headers_config` attribute.
  TfRef<List<Map<String, Object?>>> get serverTimingHeadersConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'server_timing_headers_config',
      );
}
