// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sesv2_email_identity_mail_from_attributes`.
const Set<String> _awsSesv2EmailIdentityMailFromAttributesSensitive =
    <String>{};

/// Sesv2 Email Identity Mail From Attributes Behavior On Mx enum for `behavior_on_mx_failure`.
enum Sesv2EmailIdentityMailFromAttributesBehaviorOnMxFailure
    implements TerraformEnum {
  useDefaultValue('USE_DEFAULT_VALUE'),
  rejectMessage('REJECT_MESSAGE');

  const Sesv2EmailIdentityMailFromAttributesBehaviorOnMxFailure(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_sesv2_email_identity_mail_from_attributes`.
final class AwsSesv2EmailIdentityMailFromAttributes extends Resource {
  static const String tfType = 'aws_sesv2_email_identity_mail_from_attributes';

  AwsSesv2EmailIdentityMailFromAttributes(
    super.localName, {
    TfArg<Sesv2EmailIdentityMailFromAttributesBehaviorOnMxFailure>?
    behaviorOnMxFailure,
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
           'behavior_on_mx_failure': ?behaviorOnMxFailure,
           'email_identity': emailIdentity,
           'mail_from_domain': ?mailFromDomain,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSesv2EmailIdentityMailFromAttributesSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSesv2EmailIdentityMailFromAttributes>`.
  RefTo<AwsSesv2EmailIdentityMailFromAttributes> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `behavior_on_mx_failure` attribute.
  TfRef<String> get behaviorOnMxFailure =>
      TfRef.attribute<String>(this, 'behavior_on_mx_failure');

  /// Reference to `email_identity` attribute.
  TfRef<String> get emailIdentity =>
      TfRef.attribute<String>(this, 'email_identity');

  /// Reference to `mail_from_domain` attribute.
  TfRef<String> get mailFromDomain =>
      TfRef.attribute<String>(this, 'mail_from_domain');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
