// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_group_policies_exclusive`.
const Set<String> _awsIamGroupPoliciesExclusiveSensitive = <String>{};

/// Factory wrapper for `aws_iam_group_policies_exclusive`.
final class AwsIamGroupPoliciesExclusive extends Resource {
  static const String tfType = 'aws_iam_group_policies_exclusive';

  AwsIamGroupPoliciesExclusive({
    required super.localName,
    required TfArg<String> groupName,
    required TfArg<List<String>> policyNames,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'group_name': groupName, 'policy_names': policyNames},
       );

  @override
  Set<String> get sensitiveFields => _awsIamGroupPoliciesExclusiveSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIamGroupPoliciesExclusive>`.
  RefTo<AwsIamGroupPoliciesExclusive> get ref => RefTo.of(this);

  /// Reference to `group_name` attribute.
  TfRef<String> get groupNameRef => TfRef.attribute<String>(this, 'group_name');

  /// Reference to `policy_names` attribute.
  TfRef<List<String>> get policyNamesRef =>
      TfRef.attribute<List<String>>(this, 'policy_names');
}
