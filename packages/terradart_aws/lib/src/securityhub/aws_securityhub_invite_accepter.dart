// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securityhub_invite_accepter`.
const Set<String> _awsSecurityhubInviteAccepterSensitive = <String>{};

/// Factory wrapper for `aws_securityhub_invite_accepter`.
final class AwsSecurityhubInviteAccepter extends Resource {
  static const String tfType = 'aws_securityhub_invite_accepter';

  AwsSecurityhubInviteAccepter({
    required super.localName,
    required TfArg<String> masterId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'master_id': masterId, 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields => _awsSecurityhubInviteAccepterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSecurityhubInviteAccepter>`.
  RefTo<AwsSecurityhubInviteAccepter> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `invitation_id` attribute.
  TfRef<String> get invitationId =>
      TfRef.attribute<String>(this, 'invitation_id');

  /// Reference to `master_id` attribute.
  TfRef<String> get masterId => TfRef.attribute<String>(this, 'master_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
