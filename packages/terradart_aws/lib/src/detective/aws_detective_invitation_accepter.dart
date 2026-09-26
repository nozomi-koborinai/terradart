// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_detective_invitation_accepter`.
const Set<String> _awsDetectiveInvitationAccepterSensitive = <String>{};

/// Factory wrapper for `aws_detective_invitation_accepter`.
final class AwsDetectiveInvitationAccepter extends Resource {
  static const String tfType = 'aws_detective_invitation_accepter';

  AwsDetectiveInvitationAccepter({
    required super.localName,
    required TfArg<String> graphArn,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'graph_arn': graphArn, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsDetectiveInvitationAccepterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
