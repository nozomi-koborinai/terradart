// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_role_policy_attachments`.
const Set<String> _awsIamRolePolicyAttachmentsSensitive = <String>{};

/// Factory wrapper for `aws_iam_role_policy_attachments`.
final class DataAwsIamRolePolicyAttachments extends Data {
  static const String tfType = 'aws_iam_role_policy_attachments';

  DataAwsIamRolePolicyAttachments({
    required super.localName,
    TfArg<String>? pathPrefix,
    required TfArg<String> roleName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (pathPrefix != null) 'path_prefix': pathPrefix,
           'role_name': roleName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamRolePolicyAttachmentsSensitive;

  /// Reference to `attached_policies` attribute.
  TfRef<List<Map<String, Object?>>> get attachedPolicies =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'attached_policies');
}
