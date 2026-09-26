// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_connection_group`.
const Set<String> _awsCloudfrontConnectionGroupSensitive = <String>{};

/// Factory wrapper for `aws_cloudfront_connection_group`.
final class DataAwsCloudfrontConnectionGroup extends Data {
  static const String tfType = 'aws_cloudfront_connection_group';

  DataAwsCloudfrontConnectionGroup({
    required super.localName,
    TfArg<String>? routingEndpoint,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (routingEndpoint != null) 'routing_endpoint': routingEndpoint,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudfrontConnectionGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `anycast_ip_list_id` attribute.
  TfRef<String> get anycastIpListId =>
      TfRef.attribute<String>(this, 'anycast_ip_list_id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `ipv6_enabled` attribute.
  TfRef<bool> get ipv6Enabled => TfRef.attribute<bool>(this, 'ipv6_enabled');

  /// Reference to `is_default` attribute.
  TfRef<bool> get isDefault => TfRef.attribute<bool>(this, 'is_default');

  /// Reference to `last_modified_time` attribute.
  TfRef<String> get lastModifiedTime =>
      TfRef.attribute<String>(this, 'last_modified_time');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
