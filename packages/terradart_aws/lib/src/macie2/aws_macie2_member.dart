// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_macie2_member`.
const Set<String> _awsMacie2MemberSensitive = <String>{};

/// Factory wrapper for `aws_macie2_member`.
final class AwsMacie2Member extends Resource {
  static const String tfType = 'aws_macie2_member';

  AwsMacie2Member({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> email,
    TfArg<bool>? invitationDisableEmailNotification,
    TfArg<String>? invitationMessage,
    TfArg<bool>? invite,
    TfArg<String>? region,
    TfArg<String>? status,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'email': email,
           if (invitationDisableEmailNotification != null)
             'invitation_disable_email_notification':
                 invitationDisableEmailNotification,
           if (invitationMessage != null)
             'invitation_message': invitationMessage,
           if (invite != null) 'invite': invite,
           if (region != null) 'region': region,
           if (status != null) 'status': status,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMacie2MemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `administrator_account_id` attribute.
  TfRef<String> get administratorAccountId =>
      TfRef.attribute<String>(this, 'administrator_account_id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `invited_at` attribute.
  TfRef<String> get invitedAt => TfRef.attribute<String>(this, 'invited_at');

  /// Reference to `master_account_id` attribute.
  TfRef<String> get masterAccountId =>
      TfRef.attribute<String>(this, 'master_account_id');

  /// Reference to `relationship_status` attribute.
  TfRef<String> get relationshipStatus =>
      TfRef.attribute<String>(this, 'relationship_status');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
