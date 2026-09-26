// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssoadmin_application_assignment_configuration`.
const Set<String> _awsSsoadminApplicationAssignmentConfigurationSensitive =
    <String>{};

/// Factory wrapper for `aws_ssoadmin_application_assignment_configuration`.
final class AwsSsoadminApplicationAssignmentConfiguration extends Resource {
  static const String tfType =
      'aws_ssoadmin_application_assignment_configuration';

  AwsSsoadminApplicationAssignmentConfiguration({
    required super.localName,
    required TfArg<String> applicationArn,
    required TfArg<bool> assignmentRequired,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_arn': applicationArn,
           'assignment_required': assignmentRequired,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSsoadminApplicationAssignmentConfigurationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
