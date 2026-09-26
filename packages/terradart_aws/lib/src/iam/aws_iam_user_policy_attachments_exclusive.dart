// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_user_policy_attachments_exclusive`.
const Set<String> _awsIamUserPolicyAttachmentsExclusiveSensitive = <String>{};

/// Factory wrapper for `aws_iam_user_policy_attachments_exclusive`.
final class AwsIamUserPolicyAttachmentsExclusive extends Resource {
  static const String tfType = 'aws_iam_user_policy_attachments_exclusive';

  AwsIamUserPolicyAttachmentsExclusive({
    required super.localName,
    required TfArg<List<String>> policyArns,
    required TfArg<String> userName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'policy_arns': policyArns, 'user_name': userName},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsIamUserPolicyAttachmentsExclusiveSensitive;
}
