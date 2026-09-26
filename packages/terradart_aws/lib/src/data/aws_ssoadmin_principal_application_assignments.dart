// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssoadmin_principal_application_assignments`.
const Set<String> _awsSsoadminPrincipalApplicationAssignmentsSensitive =
    <String>{};

/// Typed helper for the `application_assignments` block of
/// `aws_ssoadmin_principal_application_assignments` (derived from provider schema).
@immutable
final class DataSsoadminPrincipalApplicationAssignmentsApplicationAssignments {
  const DataSsoadminPrincipalApplicationAssignmentsApplicationAssignments();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `aws_ssoadmin_principal_application_assignments`.
final class DataAwsSsoadminPrincipalApplicationAssignments extends Data {
  static const String tfType = 'aws_ssoadmin_principal_application_assignments';

  DataAwsSsoadminPrincipalApplicationAssignments({
    required super.localName,
    required TfArg<String> instanceArn,
    required TfArg<String> principalId,
    required TfArg<String> principalType,
    TfArg<String>? region,
    List<DataSsoadminPrincipalApplicationAssignmentsApplicationAssignments>?
    applicationAssignments,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_arn': instanceArn,
           'principal_id': principalId,
           'principal_type': principalType,
           if (region != null) 'region': region,
           if (applicationAssignments != null)
             'application_assignments': TfArg.literal([
               for (final e in applicationAssignments) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSsoadminPrincipalApplicationAssignmentsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
