// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssoadmin_application_assignments`.
const Set<String> _awsSsoadminApplicationAssignmentsSensitive = <String>{};

/// Factory wrapper for `aws_ssoadmin_application_assignments`.
final class DataAwsSsoadminApplicationAssignments extends Data {
  static const String tfType = 'aws_ssoadmin_application_assignments';

  DataAwsSsoadminApplicationAssignments({
    required super.localName,
    required TfArg<String> applicationArn,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_arn': applicationArn,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSsoadminApplicationAssignmentsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_assignments` attribute.
  TfRef<List<Map<String, Object?>>> get applicationAssignments =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'application_assignments',
      );
}
