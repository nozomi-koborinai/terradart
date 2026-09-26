// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudfront_distribution_tenant`.
const Set<String> _awsCloudfrontDistributionTenantSensitive = <String>{};

/// Factory wrapper for `aws_cloudfront_distribution_tenant`.
final class DataAwsCloudfrontDistributionTenant extends Data {
  static const String tfType = 'aws_cloudfront_distribution_tenant';

  DataAwsCloudfrontDistributionTenant({
    required super.localName,
    TfArg<String>? arn,
    TfArg<String>? domain,
    TfArg<String>? name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (arn != null) 'arn': arn,
           if (domain != null) 'domain': domain,
           if (name != null) 'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudfrontDistributionTenantSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connection_group_id` attribute.
  TfRef<String> get connectionGroupId =>
      TfRef.attribute<String>(this, 'connection_group_id');

  /// Reference to `customizations` attribute.
  TfRef<List<Map<String, Object?>>> get customizations =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'customizations');

  /// Reference to `distribution_id` attribute.
  TfRef<String> get distributionId =>
      TfRef.attribute<String>(this, 'distribution_id');

  /// Reference to `domains` attribute.
  TfRef<List<Map<String, Object?>>> get domains =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'domains');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `managed_certificate_request` attribute.
  TfRef<List<Map<String, Object?>>> get managedCertificateRequest =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'managed_certificate_request',
      );

  /// Reference to `parameters` attribute.
  TfRef<List<Map<String, Object?>>> get parameters =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'parameters');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
