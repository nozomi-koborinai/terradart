// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_policy_attachment`.
const Set<String> _awsIamPolicyAttachmentSensitive = <String>{};

/// Factory wrapper for `aws_iam_policy_attachment`.
final class AwsIamPolicyAttachment extends Resource {
  static const String tfType = 'aws_iam_policy_attachment';

  AwsIamPolicyAttachment({
    required super.localName,
    TfArg<List<String>>? groups,
    required TfArg<String> name,
    required TfArg<String> policyArn,
    TfArg<List<String>>? roles,
    TfArg<List<String>>? users,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (groups != null) 'groups': groups,
           'name': name,
           'policy_arn': policyArn,
           if (roles != null) 'roles': roles,
           if (users != null) 'users': users,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamPolicyAttachmentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
