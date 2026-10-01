// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appstream_user_stack_association`.
const Set<String> _awsAppstreamUserStackAssociationSensitive = <String>{};

/// Appstream User Stack Association Authentication enum for `authentication_type`.
enum AppstreamUserStackAssociationAuthenticationType implements TerraformEnum {
  api('API'),
  saml('SAML'),
  userpool('USERPOOL'),
  awsAd('AWS_AD');

  const AppstreamUserStackAssociationAuthenticationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_appstream_user_stack_association`.
final class AwsAppstreamUserStackAssociation extends Resource {
  static const String tfType = 'aws_appstream_user_stack_association';

  AwsAppstreamUserStackAssociation(
    super.localName, {
    required TfArg<AppstreamUserStackAssociationAuthenticationType>
    authenticationType,
    TfArg<String>? region,
    TfArg<bool>? sendEmailNotification,
    required TfArg<String> stackName,
    required TfArg<String> userName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authentication_type': authenticationType,
           'region': ?region,
           'send_email_notification': ?sendEmailNotification,
           'stack_name': stackName,
           'user_name': userName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppstreamUserStackAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppstreamUserStackAssociation>`.
  RefTo<AwsAppstreamUserStackAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authentication_type` attribute.
  TfRef<String> get authenticationType =>
      TfRef.attribute<String>(this, 'authentication_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `send_email_notification` attribute.
  TfRef<bool> get sendEmailNotification =>
      TfRef.attribute<bool>(this, 'send_email_notification');

  /// Reference to `stack_name` attribute.
  TfRef<String> get stackName => TfRef.attribute<String>(this, 'stack_name');

  /// Reference to `user_name` attribute.
  TfRef<String> get userName => TfRef.attribute<String>(this, 'user_name');
}
