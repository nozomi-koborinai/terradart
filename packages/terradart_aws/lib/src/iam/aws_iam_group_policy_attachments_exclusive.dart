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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIamGroupPolicyAttachmentsExclusive>`.
  RefTo<AwsIamGroupPolicyAttachmentsExclusive> get ref => RefTo.of(this);

  /// Reference to `group_name` attribute.
  TfRef<String> get groupNameRef => TfRef.attribute<String>(this, 'group_name');

  /// Reference to `policy_arns` attribute.
  TfRef<List<String>> get policyArnsRef =>
      TfRef.attribute<List<String>>(this, 'policy_arns');
}
