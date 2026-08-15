// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_metastore_database_iam_policy`.
const Set<String> _googleDataprocMetastoreDatabaseIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_dataproc_metastore_database_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleDataprocMetastoreDatabaseIamPolicy extends Data {
  static const String tfType = 'google_dataproc_metastore_database_iam_policy';

  DataGoogleDataprocMetastoreDatabaseIamPolicy({
    required super.localName,
    required TfArg<String> database,
    TfArg<String>? location,
    TfArg<String>? project,
    required TfArg<String> serviceId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database': database,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
           'service_id': serviceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataprocMetastoreDatabaseIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
