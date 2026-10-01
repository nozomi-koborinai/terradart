// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_iam_role_policy_attachment`.
const Set<String> _awsIamRolePolicyAttachmentSensitive = <String>{};

/// Factory wrapper for `aws_iam_role_policy_attachment`.
///
/// Attaches one managed IAM policy to an [AwsIamRole]. Additive: other
/// attachments on the role are left alone.
///
/// `role` takes the role (`role.ref`) and emits its **name**, not its ARN.
/// AWS-managed policies use ARNs such as
/// `arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole`.
final class AwsIamRolePolicyAttachment extends Resource {
  static const String tfType = 'aws_iam_role_policy_attachment';

  AwsIamRolePolicyAttachment({
    required super.localName,
    required TfArg<String> policyArn,
    required RefTo<AwsIamRole> role,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'policy_arn': policyArn, 'role': role.encodeAs('name')},
       );

  @override
  Set<String> get sensitiveFields => _awsIamRolePolicyAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIamRolePolicyAttachment>`.
  RefTo<AwsIamRolePolicyAttachment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `policy_arn` attribute.
  TfRef<String> get policyArn => TfRef.attribute<String>(this, 'policy_arn');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
