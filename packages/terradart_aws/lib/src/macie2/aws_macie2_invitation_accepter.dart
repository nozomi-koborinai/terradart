// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_macie2_invitation_accepter`.
const Set<String> _awsMacie2InvitationAccepterSensitive = <String>{};

/// Factory wrapper for `aws_macie2_invitation_accepter`.
final class AwsMacie2InvitationAccepter extends Resource {
  static const String tfType = 'aws_macie2_invitation_accepter';

  AwsMacie2InvitationAccepter({
    required super.localName,
    required TfArg<String> administratorAccountId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'administrator_account_id': administratorAccountId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMacie2InvitationAccepterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `invitation_id` attribute.
  TfRef<String> get invitationId =>
      TfRef.attribute<String>(this, 'invitation_id');
}
