// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_role_policies`.
const Set<String> _awsIamRolePoliciesSensitive = <String>{};

/// Factory wrapper for `aws_iam_role_policies`.
final class DataAwsIamRolePolicies extends Data {
  static const String tfType = 'aws_iam_role_policies';

  DataAwsIamRolePolicies({
    required super.localName,
    required TfArg<String> roleName,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'role_name': roleName});

  @override
  Set<String> get sensitiveFields => _awsIamRolePoliciesSensitive;

  /// Reference to `policy_names` attribute.
  TfRef<List<String>> get policyNames =>
      TfRef.attribute<List<String>>(this, 'policy_names');
}
