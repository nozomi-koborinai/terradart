// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_policy`.
const Set<String> _awsIamPolicySensitive = <String>{};

/// Factory wrapper for `aws_iam_policy`.
final class AwsIamPolicy extends Resource {
  static const String tfType = 'aws_iam_policy';

  AwsIamPolicy({
    required super.localName,
    TfArg<num>? delayAfterPolicyCreationInMs,
    TfArg<String>? description,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<String>? path,
    required TfArg<String> policy,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (delayAfterPolicyCreationInMs != null)
             'delay_after_policy_creation_in_ms': delayAfterPolicyCreationInMs,
           if (description != null) 'description': description,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (path != null) 'path': path,
           'policy': policy,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `attachment_count` attribute.
  TfRef<num> get attachmentCount =>
      TfRef.attribute<num>(this, 'attachment_count');

  /// Reference to `policy_id` attribute.
  TfRef<String> get policyId => TfRef.attribute<String>(this, 'policy_id');
}
