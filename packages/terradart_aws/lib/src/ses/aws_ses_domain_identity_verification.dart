// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ses_domain_identity_verification`.
const Set<String> _awsSesDomainIdentityVerificationSensitive = <String>{};

/// Factory wrapper for `aws_ses_domain_identity_verification`.
final class AwsSesDomainIdentityVerification extends Resource {
  static const String tfType = 'aws_ses_domain_identity_verification';

  AwsSesDomainIdentityVerification({
    required super.localName,
    required TfArg<String> domain,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'domain': domain, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsSesDomainIdentityVerificationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
