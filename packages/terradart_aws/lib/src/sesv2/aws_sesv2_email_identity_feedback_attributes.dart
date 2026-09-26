// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sesv2_email_identity_feedback_attributes`.
const Set<String> _awsSesv2EmailIdentityFeedbackAttributesSensitive =
    <String>{};

/// Factory wrapper for `aws_sesv2_email_identity_feedback_attributes`.
final class AwsSesv2EmailIdentityFeedbackAttributes extends Resource {
  static const String tfType = 'aws_sesv2_email_identity_feedback_attributes';

  AwsSesv2EmailIdentityFeedbackAttributes({
    required super.localName,
    TfArg<bool>? emailForwardingEnabled,
    required TfArg<String> emailIdentity,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (emailForwardingEnabled != null)
             'email_forwarding_enabled': emailForwardingEnabled,
           'email_identity': emailIdentity,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSesv2EmailIdentityFeedbackAttributesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
