// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssoadmin_permission_set_inline_policy`.
const Set<String> _awsSsoadminPermissionSetInlinePolicySensitive = <String>{};

/// Factory wrapper for `aws_ssoadmin_permission_set_inline_policy`.
final class AwsSsoadminPermissionSetInlinePolicy extends Resource {
  static const String tfType = 'aws_ssoadmin_permission_set_inline_policy';

  AwsSsoadminPermissionSetInlinePolicy({
    required super.localName,
    required TfArg<String> inlinePolicy,
    required TfArg<String> instanceArn,
    required TfArg<String> permissionSetArn,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'inline_policy': inlinePolicy,
           'instance_arn': instanceArn,
           'permission_set_arn': permissionSetArn,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSsoadminPermissionSetInlinePolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
