// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sesv2_email_identity_mail_from_attributes`.
const Set<String> _awsSesv2EmailIdentityMailFromAttributesSensitive =
    <String>{};

/// Factory wrapper for `aws_sesv2_email_identity_mail_from_attributes`.
final class AwsSesv2EmailIdentityMailFromAttributes extends Resource {
  static const String tfType = 'aws_sesv2_email_identity_mail_from_attributes';

  AwsSesv2EmailIdentityMailFromAttributes({
    required super.localName,
    TfArg<String>? behaviorOnMxFailure,
    required TfArg<String> emailIdentity,
    TfArg<String>? mailFromDomain,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (behaviorOnMxFailure != null)
             'behavior_on_mx_failure': behaviorOnMxFailure,
           'email_identity': emailIdentity,
           if (mailFromDomain != null) 'mail_from_domain': mailFromDomain,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSesv2EmailIdentityMailFromAttributesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
