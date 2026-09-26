// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssoadmin_managed_policy_attachment`.
const Set<String> _awsSsoadminManagedPolicyAttachmentSensitive = <String>{};

/// Factory wrapper for `aws_ssoadmin_managed_policy_attachment`.
final class AwsSsoadminManagedPolicyAttachment extends Resource {
  static const String tfType = 'aws_ssoadmin_managed_policy_attachment';

  AwsSsoadminManagedPolicyAttachment({
    required super.localName,
    required TfArg<String> instanceArn,
    required TfArg<String> managedPolicyArn,
    required TfArg<String> permissionSetArn,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_arn': instanceArn,
           'managed_policy_arn': managedPolicyArn,
           'permission_set_arn': permissionSetArn,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSsoadminManagedPolicyAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `managed_policy_name` attribute.
  TfRef<String> get managedPolicyName =>
      TfRef.attribute<String>(this, 'managed_policy_name');
}
