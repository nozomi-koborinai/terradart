// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_user_policy`.
const Set<String> _awsIamUserPolicySensitive = <String>{};

/// Factory wrapper for `aws_iam_user_policy`.
final class AwsIamUserPolicy extends Resource {
  static const String tfType = 'aws_iam_user_policy';

  AwsIamUserPolicy({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    required TfArg<String> policy,
    required TfArg<String> user,
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
           'user': user,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamUserPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
