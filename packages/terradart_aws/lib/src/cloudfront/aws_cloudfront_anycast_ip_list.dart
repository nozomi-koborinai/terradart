// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_anycast_ip_list`.
const Set<String> _awsCloudfrontAnycastIpListSensitive = <String>{};

/// Factory wrapper for `aws_cloudfront_anycast_ip_list`.
final class AwsCloudfrontAnycastIpList extends Resource {
  static const String tfType = 'aws_cloudfront_anycast_ip_list';

  AwsCloudfrontAnycastIpList(
    super.localName, {
    required TfArg<num> ipCount,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'ip_count': ipCount, 'name': name, 'tags': ?tags},
       );

  @override
  Set<String> get sensitiveFields => _awsCloudfrontAnycastIpListSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudfrontAnycastIpList>`.
  RefTo<AwsCloudfrontAnycastIpList> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `ip_count` attribute.
  TfRef<num> get ipCount => TfRef.attribute<num>(this, 'ip_count');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
