// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_policy.dart' show AwsIamPolicy;
import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_iam_role_policy_attachments_exclusive`.
const Set<String> _awsIamRolePolicyAttachmentsExclusiveSensitive = <String>{};

/// Factory wrapper for `aws_iam_role_policy_attachments_exclusive`.
final class AwsIamRolePolicyAttachmentsExclusive extends Resource {
  static const String tfType = 'aws_iam_role_policy_attachments_exclusive';

  AwsIamRolePolicyAttachmentsExclusive(
    super.localName, {
    required TfArg<List<RefTo<AwsIamPolicy>>> policyArns,
    required RefTo<AwsIamRole> roleName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy_arns': policyArns.encodeAs('arn'),
           'role_name': roleName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsIamRolePolicyAttachmentsExclusiveSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIamRolePolicyAttachmentsExclusive>`.
  RefTo<AwsIamRolePolicyAttachmentsExclusive> get ref => RefTo.of(this);

  /// Reference to `policy_arns` attribute.
  TfRef<List<String>> get policyArns =>
      TfRef.attribute<List<String>>(this, 'policy_arns');

  /// Reference to `role_name` attribute.
  TfRef<String> get roleName => TfRef.attribute<String>(this, 'role_name');
}
