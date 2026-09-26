// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssoadmin_account_assignment`.
const Set<String> _awsSsoadminAccountAssignmentSensitive = <String>{};

/// Factory wrapper for `aws_ssoadmin_account_assignment`.
final class AwsSsoadminAccountAssignment extends Resource {
  static const String tfType = 'aws_ssoadmin_account_assignment';

  AwsSsoadminAccountAssignment({
    required super.localName,
    required TfArg<String> instanceArn,
    required TfArg<String> permissionSetArn,
    required TfArg<String> principalId,
    required TfArg<String> principalType,
    TfArg<String>? region,
    required TfArg<String> targetId,
    required TfArg<String> targetType,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_arn': instanceArn,
           'permission_set_arn': permissionSetArn,
           'principal_id': principalId,
           'principal_type': principalType,
           if (region != null) 'region': region,
           'target_id': targetId,
           'target_type': targetType,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsoadminAccountAssignmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
