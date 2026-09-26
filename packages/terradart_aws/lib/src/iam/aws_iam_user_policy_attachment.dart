// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_user_policy_attachment`.
const Set<String> _awsIamUserPolicyAttachmentSensitive = <String>{};

/// Factory wrapper for `aws_iam_user_policy_attachment`.
final class AwsIamUserPolicyAttachment extends Resource {
  static const String tfType = 'aws_iam_user_policy_attachment';

  AwsIamUserPolicyAttachment({
    required super.localName,
    required TfArg<String> policyArn,
    required TfArg<String> user,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'policy_arn': policyArn, 'user': user},
       );

  @override
  Set<String> get sensitiveFields => _awsIamUserPolicyAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
