// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ses_domain_identity`.
const Set<String> _awsSesDomainIdentitySensitive = <String>{};

/// Factory wrapper for `aws_ses_domain_identity`.
final class DataAwsSesDomainIdentity extends Data {
  static const String tfType = 'aws_ses_domain_identity';

  DataAwsSesDomainIdentity({
    required super.localName,
    required TfArg<String> domain,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'domain': domain, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsSesDomainIdentitySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `verification_token` attribute.
  TfRef<String> get verificationToken =>
      TfRef.attribute<String>(this, 'verification_token');
}
