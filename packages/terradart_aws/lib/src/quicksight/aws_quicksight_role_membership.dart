// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_role_membership`.
const Set<String> _awsQuicksightRoleMembershipSensitive = <String>{};

/// Factory wrapper for `aws_quicksight_role_membership`.
final class AwsQuicksightRoleMembership extends Resource {
  static const String tfType = 'aws_quicksight_role_membership';

  AwsQuicksightRoleMembership({
    required super.localName,
    TfArg<String>? awsAccountId,
    required TfArg<String> memberName,
    TfArg<String>? namespace,
    TfArg<String>? region,
    required TfArg<String> role,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (awsAccountId != null) 'aws_account_id': awsAccountId,
           'member_name': memberName,
           if (namespace != null) 'namespace': namespace,
           if (region != null) 'region': region,
           'role': role,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightRoleMembershipSensitive;
}
