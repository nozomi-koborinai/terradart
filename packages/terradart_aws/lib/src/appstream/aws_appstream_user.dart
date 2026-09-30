// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appstream_user`.
const Set<String> _awsAppstreamUserSensitive = <String>{};

/// Appstream User Authentication enum for `authentication_type`.
enum AppstreamUserAuthenticationType implements TerraformEnum {
  api('API'),
  saml('SAML'),
  userpool('USERPOOL'),
  awsAd('AWS_AD');

  const AppstreamUserAuthenticationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_appstream_user`.
final class AwsAppstreamUser extends Resource {
  static const String tfType = 'aws_appstream_user';

  AwsAppstreamUser({
    required super.localName,
    required TfArg<AppstreamUserAuthenticationType> authenticationType,
    TfArg<bool>? enabled,
    TfArg<String>? firstName,
    TfArg<String>? lastName,
    TfArg<String>? region,
    TfArg<bool>? sendEmailNotification,
    required TfArg<String> userName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authentication_type': authenticationType,
           'enabled': ?enabled,
           'first_name': ?firstName,
           'last_name': ?lastName,
           'region': ?region,
           'send_email_notification': ?sendEmailNotification,
           'user_name': userName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppstreamUserSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppstreamUser>`.
  RefTo<AwsAppstreamUser> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `authentication_type` attribute.
  TfRef<String> get authenticationTypeRef =>
      TfRef.attribute<String>(this, 'authentication_type');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabledRef => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `first_name` attribute.
  TfRef<String> get firstNameRef => TfRef.attribute<String>(this, 'first_name');

  /// Reference to `last_name` attribute.
  TfRef<String> get lastNameRef => TfRef.attribute<String>(this, 'last_name');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `send_email_notification` attribute.
  TfRef<bool> get sendEmailNotificationRef =>
      TfRef.attribute<bool>(this, 'send_email_notification');

  /// Reference to `user_name` attribute.
  TfRef<String> get userNameRef => TfRef.attribute<String>(this, 'user_name');
}
