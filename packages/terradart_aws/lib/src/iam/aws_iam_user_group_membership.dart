// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_user_group_membership`.
const Set<String> _awsIamUserGroupMembershipSensitive = <String>{};

/// Factory wrapper for `aws_iam_user_group_membership`.
final class AwsIamUserGroupMembership extends Resource {
  static const String tfType = 'aws_iam_user_group_membership';

  AwsIamUserGroupMembership({
    required super.localName,
    required TfArg<List<String>> groups,
    required TfArg<String> user,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'groups': groups, 'user': user});

  @override
  Set<String> get sensitiveFields => _awsIamUserGroupMembershipSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
