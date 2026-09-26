// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_detective_member`.
const Set<String> _awsDetectiveMemberSensitive = <String>{};

/// Factory wrapper for `aws_detective_member`.
final class AwsDetectiveMember extends Resource {
  static const String tfType = 'aws_detective_member';

  AwsDetectiveMember({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<bool>? disableEmailNotification,
    required TfArg<String> emailAddress,
    required TfArg<String> graphArn,
    TfArg<String>? message,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (disableEmailNotification != null)
             'disable_email_notification': disableEmailNotification,
           'email_address': emailAddress,
           'graph_arn': graphArn,
           if (message != null) 'message': message,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDetectiveMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `administrator_id` attribute.
  TfRef<String> get administratorId =>
      TfRef.attribute<String>(this, 'administrator_id');

  /// Reference to `disabled_reason` attribute.
  TfRef<String> get disabledReason =>
      TfRef.attribute<String>(this, 'disabled_reason');

  /// Reference to `invited_time` attribute.
  TfRef<String> get invitedTime =>
      TfRef.attribute<String>(this, 'invited_time');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `updated_time` attribute.
  TfRef<String> get updatedTime =>
      TfRef.attribute<String>(this, 'updated_time');

  /// Reference to `volume_usage_in_bytes` attribute.
  TfRef<String> get volumeUsageInBytes =>
      TfRef.attribute<String>(this, 'volume_usage_in_bytes');
}
