// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sesv2_email_identity_policy`.
const Set<String> _awsSesv2EmailIdentityPolicySensitive = <String>{};

/// Factory wrapper for `aws_sesv2_email_identity_policy`.
final class AwsSesv2EmailIdentityPolicy extends Resource {
  static const String tfType = 'aws_sesv2_email_identity_policy';

  AwsSesv2EmailIdentityPolicy({
    required super.localName,
    required TfArg<String> emailIdentity,
    required TfArg<String> policy,
    required TfArg<String> policyName,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'email_identity': emailIdentity,
           'policy': policy,
           'policy_name': policyName,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSesv2EmailIdentityPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
