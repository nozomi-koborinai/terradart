// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_role_membership`.
const Set<String> _awsQuicksightRoleMembershipSensitive = <String>{};

/// Quicksight Role Membership enum for `role`.
enum QuicksightRoleMembershipRole implements TerraformEnum {
  admin('ADMIN'),
  author('AUTHOR'),
  reader('READER'),
  adminPro('ADMIN_PRO'),
  authorPro('AUTHOR_PRO'),
  readerPro('READER_PRO');

  const QuicksightRoleMembershipRole(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_quicksight_role_membership`.
final class AwsQuicksightRoleMembership extends Resource {
  static const String tfType = 'aws_quicksight_role_membership';

  AwsQuicksightRoleMembership({
    required super.localName,
    TfArg<String>? awsAccountId,
    required TfArg<String> memberName,
    TfArg<String>? namespace,
    TfArg<String>? region,
    required TfArg<QuicksightRoleMembershipRole> role,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aws_account_id': ?awsAccountId,
           'member_name': memberName,
           'namespace': ?namespace,
           'region': ?region,
           'role': role,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightRoleMembershipSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsQuicksightRoleMembership>`.
  RefTo<AwsQuicksightRoleMembership> get ref => RefTo.of(this);
}
