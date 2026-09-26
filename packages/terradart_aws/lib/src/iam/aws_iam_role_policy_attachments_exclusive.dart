// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_role_policy_attachments_exclusive`.
const Set<String> _awsIamRolePolicyAttachmentsExclusiveSensitive = <String>{};

/// Factory wrapper for `aws_iam_role_policy_attachments_exclusive`.
final class AwsIamRolePolicyAttachmentsExclusive extends Resource {
  static const String tfType = 'aws_iam_role_policy_attachments_exclusive';

  AwsIamRolePolicyAttachmentsExclusive({
    required super.localName,
    required TfArg<List<String>> policyArns,
    required TfArg<String> roleName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'policy_arns': policyArns, 'role_name': roleName},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsIamRolePolicyAttachmentsExclusiveSensitive;
}
