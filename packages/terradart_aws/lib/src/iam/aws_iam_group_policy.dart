// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_group_policy`.
const Set<String> _awsIamGroupPolicySensitive = <String>{};

/// Factory wrapper for `aws_iam_group_policy`.
final class AwsIamGroupPolicy extends Resource {
  static const String tfType = 'aws_iam_group_policy';

  AwsIamGroupPolicy({
    required super.localName,
    required TfArg<String> group,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    required TfArg<String> policy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'group': group,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           'policy': policy,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamGroupPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
