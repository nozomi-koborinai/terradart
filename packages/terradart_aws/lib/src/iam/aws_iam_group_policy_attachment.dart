// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_policy.dart' show AwsIamPolicy;

/// Sensitive field paths for `aws_iam_group_policy_attachment`.
const Set<String> _awsIamGroupPolicyAttachmentSensitive = <String>{};

/// Factory wrapper for `aws_iam_group_policy_attachment`.
final class AwsIamGroupPolicyAttachment extends Resource {
  static const String tfType = 'aws_iam_group_policy_attachment';

  AwsIamGroupPolicyAttachment(
    super.localName, {
    required TfArg<String> group,
    required RefTo<AwsIamPolicy> policyArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'group': group, 'policy_arn': policyArn.encodeAs('arn')},
       );

  @override
  Set<String> get sensitiveFields => _awsIamGroupPolicyAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIamGroupPolicyAttachment>`.
  RefTo<AwsIamGroupPolicyAttachment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `group` attribute.
  TfRef<String> get group => TfRef.attribute<String>(this, 'group');

  /// Reference to `policy_arn` attribute.
  TfRef<String> get policyArn => TfRef.attribute<String>(this, 'policy_arn');
}
