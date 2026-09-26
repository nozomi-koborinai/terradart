// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_group_membership`.
const Set<String> _awsQuicksightGroupMembershipSensitive = <String>{};

/// Factory wrapper for `aws_quicksight_group_membership`.
final class AwsQuicksightGroupMembership extends Resource {
  static const String tfType = 'aws_quicksight_group_membership';

  AwsQuicksightGroupMembership({
    required super.localName,
    TfArg<String>? awsAccountId,
    required TfArg<String> groupName,
    required TfArg<String> memberName,
    TfArg<String>? namespace,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (awsAccountId != null) 'aws_account_id': awsAccountId,
           'group_name': groupName,
           'member_name': memberName,
           if (namespace != null) 'namespace': namespace,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightGroupMembershipSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
