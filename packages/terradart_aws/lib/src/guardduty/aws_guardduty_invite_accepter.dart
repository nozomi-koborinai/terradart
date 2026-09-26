// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_guardduty_invite_accepter`.
const Set<String> _awsGuarddutyInviteAccepterSensitive = <String>{};

/// Factory wrapper for `aws_guardduty_invite_accepter`.
final class AwsGuarddutyInviteAccepter extends Resource {
  static const String tfType = 'aws_guardduty_invite_accepter';

  AwsGuarddutyInviteAccepter({
    required super.localName,
    required TfArg<String> detectorId,
    required TfArg<String> masterAccountId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'detector_id': detectorId,
           'master_account_id': masterAccountId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGuarddutyInviteAccepterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
