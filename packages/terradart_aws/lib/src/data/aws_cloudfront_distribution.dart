// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_distribution`.
const Set<String> _awsCloudfrontDistributionSensitive = <String>{};

/// Factory wrapper for `aws_cloudfront_distribution`.
final class DataAwsCloudfrontDistribution extends Data {
  static const String tfType = 'aws_cloudfront_distribution';

  DataAwsCloudfrontDistribution({
    required super.localName,
    required TfArg<String> id,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'id': id, if (tags != null) 'tags': tags},
       );

  @override
  Set<String> get sensitiveFields => _awsCloudfrontDistributionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `aliases` attribute.
  TfRef<List<String>> get aliases =>
      TfRef.attribute<List<String>>(this, 'aliases');

  /// Reference to `anycast_ip_list_id` attribute.
  TfRef<String> get anycastIpListId =>
      TfRef.attribute<String>(this, 'anycast_ip_list_id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `hosted_zone_id` attribute.
  TfRef<String> get hostedZoneId =>
      TfRef.attribute<String>(this, 'hosted_zone_id');

  /// Reference to `in_progress_validation_batches` attribute.
  TfRef<num> get inProgressValidationBatches =>
      TfRef.attribute<num>(this, 'in_progress_validation_batches');

  /// Reference to `last_modified_time` attribute.
  TfRef<String> get lastModifiedTime =>
      TfRef.attribute<String>(this, 'last_modified_time');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `web_acl_id` attribute.
  TfRef<String> get webAclId => TfRef.attribute<String>(this, 'web_acl_id');
}
