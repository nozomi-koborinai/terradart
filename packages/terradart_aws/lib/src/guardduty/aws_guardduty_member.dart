// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_guardduty_member`.
const Set<String> _awsGuarddutyMemberSensitive = <String>{};

/// Factory wrapper for `aws_guardduty_member`.
final class AwsGuarddutyMember extends Resource {
  static const String tfType = 'aws_guardduty_member';

  AwsGuarddutyMember({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> detectorId,
    TfArg<bool>? disableEmailNotification,
    required TfArg<String> email,
    TfArg<String>? invitationMessage,
    TfArg<bool>? invite,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'detector_id': detectorId,
           if (disableEmailNotification != null)
             'disable_email_notification': disableEmailNotification,
           'email': email,
           if (invitationMessage != null)
             'invitation_message': invitationMessage,
           if (invite != null) 'invite': invite,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGuarddutyMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `relationship_status` attribute.
  TfRef<String> get relationshipStatus =>
      TfRef.attribute<String>(this, 'relationship_status');
}
