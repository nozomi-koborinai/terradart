// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appstream_user`.
const Set<String> _awsAppstreamUserSensitive = <String>{};

/// Factory wrapper for `aws_appstream_user`.
final class AwsAppstreamUser extends Resource {
  static const String tfType = 'aws_appstream_user';

  AwsAppstreamUser({
    required super.localName,
    required TfArg<String> authenticationType,
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
           if (enabled != null) 'enabled': enabled,
           if (firstName != null) 'first_name': firstName,
           if (lastName != null) 'last_name': lastName,
           if (region != null) 'region': region,
           if (sendEmailNotification != null)
             'send_email_notification': sendEmailNotification,
           'user_name': userName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppstreamUserSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');
}
