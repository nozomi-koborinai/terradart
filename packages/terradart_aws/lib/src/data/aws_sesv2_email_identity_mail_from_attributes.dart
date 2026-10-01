// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../sesv2/aws_sesv2_email_identity_mail_from_attributes.dart';

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
         argMap: {'email_identity': emailIdentity, 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSesv2EmailIdentityMailFromAttributesSensitive;

  /// A reference to the `aws_sesv2_email_identity_mail_from_attributes` this data source reads, for
  /// arguments typed `RefTo<AwsSesv2EmailIdentityMailFromAttributes>`.
  RefTo<AwsSesv2EmailIdentityMailFromAttributes> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `behavior_on_mx_failure` attribute.
  TfRef<String> get behaviorOnMxFailure =>
      TfRef.attribute<String>(this, 'behavior_on_mx_failure');

  /// Reference to `mail_from_domain` attribute.
  TfRef<String> get mailFromDomain =>
      TfRef.attribute<String>(this, 'mail_from_domain');

  /// Reference to `email_identity` attribute.
  TfRef<String> get emailIdentity =>
      TfRef.attribute<String>(this, 'email_identity');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
