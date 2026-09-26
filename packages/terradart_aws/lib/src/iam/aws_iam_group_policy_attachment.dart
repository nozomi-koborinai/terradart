// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_group_policy_attachment`.
const Set<String> _awsIamGroupPolicyAttachmentSensitive = <String>{};

/// Factory wrapper for `aws_iam_group_policy_attachment`.
final class AwsIamGroupPolicyAttachment extends Resource {
  static const String tfType = 'aws_iam_group_policy_attachment';

  AwsIamGroupPolicyAttachment({
    required super.localName,
    required TfArg<String> group,
    required TfArg<String> policyArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'group': group, 'policy_arn': policyArn},
       );

  @override
  Set<String> get sensitiveFields => _awsIamGroupPolicyAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
