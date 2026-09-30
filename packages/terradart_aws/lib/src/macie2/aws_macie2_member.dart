// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_macie2_member`.
const Set<String> _awsMacie2MemberSensitive = <String>{};

/// Macie2 Member enum for `status`.
enum Macie2MemberStatus implements TerraformEnum {
  paused('PAUSED'),
  enabled('ENABLED');

  const Macie2MemberStatus(this.terraformValue);
  @override
  final String terraformValue;
}

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
    TfArg<Macie2MemberStatus>? status,
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
           'invitation_disable_email_notification':
               ?invitationDisableEmailNotification,
           'invitation_message': ?invitationMessage,
           'invite': ?invite,
           'region': ?region,
           'status': ?status,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMacie2MemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMacie2Member>`.
  RefTo<AwsMacie2Member> get ref => RefTo.of(this);

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `email` attribute.
  TfRef<String> get emailRef => TfRef.attribute<String>(this, 'email');

  /// Reference to `invitation_disable_email_notification` attribute.
  TfRef<bool> get invitationDisableEmailNotificationRef =>
      TfRef.attribute<bool>(this, 'invitation_disable_email_notification');

  /// Reference to `invitation_message` attribute.
  TfRef<String> get invitationMessageRef =>
      TfRef.attribute<String>(this, 'invitation_message');

  /// Reference to `invite` attribute.
  TfRef<bool> get inviteRef => TfRef.attribute<bool>(this, 'invite');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `status` attribute.
  TfRef<String> get statusRef => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
