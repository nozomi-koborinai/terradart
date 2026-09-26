// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_role_policy`.
const Set<String> _awsIamRolePolicySensitive = <String>{};

/// Factory wrapper for `aws_iam_role_policy`.
final class AwsIamRolePolicy extends Resource {
  static const String tfType = 'aws_iam_role_policy';

  AwsIamRolePolicy({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    required TfArg<String> policy,
    required TfArg<String> role,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           'policy': policy,
           'role': role,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamRolePolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
