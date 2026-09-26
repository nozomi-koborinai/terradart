// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_connection_group`.
const Set<String> _awsCloudfrontConnectionGroupSensitive = <String>{};

/// Factory wrapper for `aws_cloudfront_connection_group`.
final class AwsCloudfrontConnectionGroup extends Resource {
  static const String tfType = 'aws_cloudfront_connection_group';

  AwsCloudfrontConnectionGroup({
    required super.localName,
    TfArg<String>? anycastIpListId,
    TfArg<bool>? enabled,
    TfArg<bool>? ipv6Enabled,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? waitForDeployment,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (anycastIpListId != null) 'anycast_ip_list_id': anycastIpListId,
           if (enabled != null) 'enabled': enabled,
           if (ipv6Enabled != null) 'ipv6_enabled': ipv6Enabled,
           'name': name,
           if (tags != null) 'tags': tags,
           if (waitForDeployment != null)
             'wait_for_deployment': waitForDeployment,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudfrontConnectionGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `is_default` attribute.
  TfRef<bool> get isDefault => TfRef.attribute<bool>(this, 'is_default');

  /// Reference to `last_modified_time` attribute.
  TfRef<String> get lastModifiedTime =>
      TfRef.attribute<String>(this, 'last_modified_time');

  /// Reference to `routing_endpoint` attribute.
  TfRef<String> get routingEndpoint =>
      TfRef.attribute<String>(this, 'routing_endpoint');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
