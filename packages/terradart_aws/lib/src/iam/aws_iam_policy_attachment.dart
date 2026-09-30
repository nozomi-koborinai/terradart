// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

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
    TfArg<List<RefTo<AwsIamRole>>>? roles,
    TfArg<List<String>>? users,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'groups': ?groups,
           'name': name,
           'policy_arn': policyArn,
           'roles': ?roles?.encodeAs('name'),
           'users': ?users,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamPolicyAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIamPolicyAttachment>`.
  RefTo<AwsIamPolicyAttachment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `groups` attribute.
  TfRef<List<String>> get groupsRef =>
      TfRef.attribute<List<String>>(this, 'groups');

  /// Reference to `policy_arn` attribute.
  TfRef<String> get policyArnRef => TfRef.attribute<String>(this, 'policy_arn');

  /// Reference to `roles` attribute.
  TfRef<List<String>> get rolesRef =>
      TfRef.attribute<List<String>>(this, 'roles');

  /// Reference to `users` attribute.
  TfRef<List<String>> get usersRef =>
      TfRef.attribute<List<String>>(this, 'users');
}
