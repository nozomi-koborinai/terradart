// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_role_policy_attachment`.
const Set<String> _awsIamRolePolicyAttachmentSensitive = <String>{};

/// Factory wrapper for `aws_iam_role_policy_attachment`.
///
/// Attaches one managed IAM policy to an [AwsIamRole]. Additive: other
/// attachments on the role are left alone.
///
/// `role` takes the role **name** (`TfArg.ref(role.nameRef)`), not its ARN.
/// AWS-managed policies use ARNs such as
/// `arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole`.
final class AwsIamRolePolicyAttachment extends Resource {
  static const String tfType = 'aws_iam_role_policy_attachment';

  AwsIamRolePolicyAttachment({
    required super.localName,
    required TfArg<String> role,
    required TfArg<String> policyArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'role': role, 'policy_arn': policyArn},
       );

  @override
  Set<String> get sensitiveFields => _awsIamRolePolicyAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
