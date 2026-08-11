// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_metastore_table_iam_policy`.
const Set<String> _googleDataprocMetastoreTableIamPolicySensitive = <String>{};

/// Factory wrapper for `google_dataproc_metastore_table_iam_policy`.
///
/// Authoritative IAM policy for a Dataproc Metastore table.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleDataprocMetastoreTableIamMember] for single-principal grants.
final class GoogleDataprocMetastoreTableIamPolicy extends Resource {
  static const String tfType = 'google_dataproc_metastore_table_iam_policy';

  GoogleDataprocMetastoreTableIamPolicy({
    required super.localName,
    required TfArg<String> serviceId,
    required TfArg<String> databaseId,
    required TfArg<String> table,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service_id': serviceId,
           'database_id': databaseId,
           'table': table,
           'policy_data': policyData,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataprocMetastoreTableIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
