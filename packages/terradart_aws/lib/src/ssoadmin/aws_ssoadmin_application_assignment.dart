// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssoadmin_application_assignment`.
const Set<String> _awsSsoadminApplicationAssignmentSensitive = <String>{};

/// Factory wrapper for `aws_ssoadmin_application_assignment`.
final class AwsSsoadminApplicationAssignment extends Resource {
  static const String tfType = 'aws_ssoadmin_application_assignment';

  AwsSsoadminApplicationAssignment({
    required super.localName,
    required TfArg<String> applicationArn,
    required TfArg<String> principalId,
    required TfArg<String> principalType,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_arn': applicationArn,
           'principal_id': principalId,
           'principal_type': principalType,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsoadminApplicationAssignmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
