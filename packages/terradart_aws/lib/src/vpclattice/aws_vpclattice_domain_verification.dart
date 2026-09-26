// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpclattice_domain_verification`.
const Set<String> _awsVpclatticeDomainVerificationSensitive = <String>{};

/// Factory wrapper for `aws_vpclattice_domain_verification`.
final class AwsVpclatticeDomainVerification extends Resource {
  static const String tfType = 'aws_vpclattice_domain_verification';

  AwsVpclatticeDomainVerification({
    required super.localName,
    required TfArg<String> domainName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_name': domainName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpclatticeDomainVerificationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `last_verified_time` attribute.
  TfRef<String> get lastVerifiedTime =>
      TfRef.attribute<String>(this, 'last_verified_time');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `txt_record_name` attribute.
  TfRef<String> get txtRecordName =>
      TfRef.attribute<String>(this, 'txt_record_name');

  /// Reference to `txt_record_value` attribute.
  TfRef<String> get txtRecordValue =>
      TfRef.attribute<String>(this, 'txt_record_value');
}
