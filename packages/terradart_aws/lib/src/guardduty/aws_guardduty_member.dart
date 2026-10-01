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
           'disable_email_notification': ?disableEmailNotification,
           'email': email,
           'invitation_message': ?invitationMessage,
           'invite': ?invite,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGuarddutyMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGuarddutyMember>`.
  RefTo<AwsGuarddutyMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `relationship_status` attribute.
  TfRef<String> get relationshipStatus =>
      TfRef.attribute<String>(this, 'relationship_status');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `detector_id` attribute.
  TfRef<String> get detectorId => TfRef.attribute<String>(this, 'detector_id');

  /// Reference to `disable_email_notification` attribute.
  TfRef<bool> get disableEmailNotification =>
      TfRef.attribute<bool>(this, 'disable_email_notification');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `invitation_message` attribute.
  TfRef<String> get invitationMessage =>
      TfRef.attribute<String>(this, 'invitation_message');

  /// Reference to `invite` attribute.
  TfRef<bool> get invite => TfRef.attribute<bool>(this, 'invite');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
