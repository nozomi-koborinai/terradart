// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_user_policies_exclusive`.
const Set<String> _awsIamUserPoliciesExclusiveSensitive = <String>{};

/// Factory wrapper for `aws_iam_user_policies_exclusive`.
final class AwsIamUserPoliciesExclusive extends Resource {
  static const String tfType = 'aws_iam_user_policies_exclusive';

  AwsIamUserPoliciesExclusive({
    required super.localName,
    required TfArg<List<String>> policyNames,
    required TfArg<String> userName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'policy_names': policyNames, 'user_name': userName},
       );

  @override
  Set<String> get sensitiveFields => _awsIamUserPoliciesExclusiveSensitive;
}
