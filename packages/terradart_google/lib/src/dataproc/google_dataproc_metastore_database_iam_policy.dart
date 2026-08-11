// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_metastore_database_iam_policy`.
const Set<String> _googleDataprocMetastoreDatabaseIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_dataproc_metastore_database_iam_policy`.
///
/// Authoritative IAM policy for a Dataproc Metastore database.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleDataprocMetastoreDatabaseIamMember] for single-principal grants.
final class GoogleDataprocMetastoreDatabaseIamPolicy extends Resource {
  static const String tfType = 'google_dataproc_metastore_database_iam_policy';

  GoogleDataprocMetastoreDatabaseIamPolicy({
    required super.localName,
    required TfArg<String> serviceId,
    required TfArg<String> database,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service_id': serviceId,
           'database': database,
           'policy_data': policyData,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataprocMetastoreDatabaseIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
