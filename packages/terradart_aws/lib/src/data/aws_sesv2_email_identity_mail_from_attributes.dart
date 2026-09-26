// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sesv2_email_identity_mail_from_attributes`.
const Set<String> _awsSesv2EmailIdentityMailFromAttributesSensitive =
    <String>{};

/// Factory wrapper for `aws_sesv2_email_identity_mail_from_attributes`.
final class DataAwsSesv2EmailIdentityMailFromAttributes extends Data {
  static const String tfType = 'aws_sesv2_email_identity_mail_from_attributes';

  DataAwsSesv2EmailIdentityMailFromAttributes({
    required super.localName,
    required TfArg<String> emailIdentity,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'email_identity': emailIdentity,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSesv2EmailIdentityMailFromAttributesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `behavior_on_mx_failure` attribute.
  TfRef<String> get behaviorOnMxFailure =>
      TfRef.attribute<String>(this, 'behavior_on_mx_failure');

  /// Reference to `mail_from_domain` attribute.
  TfRef<String> get mailFromDomain =>
      TfRef.attribute<String>(this, 'mail_from_domain');
}
