// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_iam_role_policies_exclusive`.
const Set<String> _awsIamRolePoliciesExclusiveSensitive = <String>{};

/// Factory wrapper for `aws_iam_role_policies_exclusive`.
final class AwsIamRolePoliciesExclusive extends Resource {
  static const String tfType = 'aws_iam_role_policies_exclusive';

  AwsIamRolePoliciesExclusive({
    required super.localName,
    required TfArg<List<String>> policyNames,
    required RefTo<AwsIamRole> roleName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy_names': policyNames,
           'role_name': roleName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamRolePoliciesExclusiveSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIamRolePoliciesExclusive>`.
  RefTo<AwsIamRolePoliciesExclusive> get ref => RefTo.of(this);

  /// Reference to `policy_names` attribute.
  TfRef<List<String>> get policyNamesRef =>
      TfRef.attribute<List<String>>(this, 'policy_names');

  /// Reference to `role_name` attribute.
  TfRef<String> get roleNameRef => TfRef.attribute<String>(this, 'role_name');
}
