// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_role`.
const Set<String> _awsIamRoleSensitive = <String>{};

/// Typed helper for the `inline_policy` block of
/// `aws_iam_role` (derived from provider schema).
@immutable
final class IamRoleInlinePolicy {
  const IamRoleInlinePolicy({this.name, this.policy});

  final TfArg<String>? name;

  final TfArg<String>? policy;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (policy != null) 'policy': policy!.toTfJson(),
  };
}

/// Factory wrapper for `aws_iam_role`.
///
/// AWS **IAM role** — the identity a Lambda function, ECS task, or other
/// AWS service assumes at runtime.
///
/// `assumeRolePolicy` is the trust policy JSON. Build it with a
/// [DataAwsIamPolicyDocument] and pass `TfArg.ref(doc.json)`, so the
/// statements are typed Dart rather than a hand-written JSON string.
/// Attach managed policies with [AwsIamRolePolicyAttachment].
final class AwsIamRole extends Resource {
  static const String tfType = 'aws_iam_role';

  AwsIamRole({
    required super.localName,
    required TfArg<String> assumeRolePolicy,
    TfArg<String>? name,
    TfArg<String>? description,
    TfArg<String>? path,
    TfArg<String>? permissionsBoundary,
    TfArg<num>? maxSessionDuration,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'assume_role_policy': assumeRolePolicy,
           if (name != null) 'name': name,
           if (description != null) 'description': description,
           if (path != null) 'path': path,
           if (permissionsBoundary != null)
             'permissions_boundary': permissionsBoundary,
           if (maxSessionDuration != null)
             'max_session_duration': maxSessionDuration,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamRoleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `create_date` attribute.
  TfRef<String> get createDate => TfRef.attribute<String>(this, 'create_date');

  /// Reference to `unique_id` attribute.
  TfRef<String> get uniqueId => TfRef.attribute<String>(this, 'unique_id');
}
