// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_anycast_ip_list`.
const Set<String> _awsCloudfrontAnycastIpListSensitive = <String>{};

/// Factory wrapper for `aws_cloudfront_anycast_ip_list`.
final class AwsCloudfrontAnycastIpList extends Resource {
  static const String tfType = 'aws_cloudfront_anycast_ip_list';

  AwsCloudfrontAnycastIpList({
    required super.localName,
    required TfArg<num> ipCount,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'ip_count': ipCount,
           'name': name,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudfrontAnycastIpListSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `anycast_ips` attribute.
  TfRef<List<String>> get anycastIps =>
      TfRef.attribute<List<String>>(this, 'anycast_ips');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
