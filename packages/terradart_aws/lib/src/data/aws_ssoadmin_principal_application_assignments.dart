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
final class DataSsoadminPrincipalApplicationAssignments {
  const DataSsoadminPrincipalApplicationAssignments();

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
    List<DataSsoadminPrincipalApplicationAssignments>? applicationAssignments,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_arn': instanceArn,
           'principal_id': principalId,
           'principal_type': principalType,
           'region': ?region,
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

  /// Reference to `instance_arn` attribute.
  TfRef<String> get instanceArnRef =>
      TfRef.attribute<String>(this, 'instance_arn');

  /// Reference to `principal_id` attribute.
  TfRef<String> get principalIdRef =>
      TfRef.attribute<String>(this, 'principal_id');

  /// Reference to `principal_type` attribute.
  TfRef<String> get principalTypeRef =>
      TfRef.attribute<String>(this, 'principal_type');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
