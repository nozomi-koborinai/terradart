// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_group_policy_attachments_exclusive`.
const Set<String> _awsIamGroupPolicyAttachmentsExclusiveSensitive = <String>{};

/// Factory wrapper for `aws_iam_group_policy_attachments_exclusive`.
final class AwsIamGroupPolicyAttachmentsExclusive extends Resource {
  static const String tfType = 'aws_iam_group_policy_attachments_exclusive';

  AwsIamGroupPolicyAttachmentsExclusive({
    required super.localName,
    required TfArg<String> groupName,
    required TfArg<List<String>> policyArns,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'group_name': groupName, 'policy_arns': policyArns},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsIamGroupPolicyAttachmentsExclusiveSensitive;
}
