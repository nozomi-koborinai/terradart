// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sesv2_email_identity_policy`.
const Set<String> _awsSesv2EmailIdentityPolicySensitive = <String>{};

/// Factory wrapper for `aws_sesv2_email_identity_policy`.
final class AwsSesv2EmailIdentityPolicy extends Resource {
  static const String tfType = 'aws_sesv2_email_identity_policy';

  AwsSesv2EmailIdentityPolicy(
    super.localName, {
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
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSesv2EmailIdentityPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSesv2EmailIdentityPolicy>`.
  RefTo<AwsSesv2EmailIdentityPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `email_identity` attribute.
  TfRef<String> get emailIdentity =>
      TfRef.attribute<String>(this, 'email_identity');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `policy_name` attribute.
  TfRef<String> get policyName => TfRef.attribute<String>(this, 'policy_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
