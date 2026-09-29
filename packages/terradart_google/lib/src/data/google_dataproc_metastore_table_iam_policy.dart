// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../dataproc/google_dataproc_metastore_table_iam_policy.dart';

/// Sensitive field paths for `google_dataproc_metastore_table_iam_policy`.
const Set<String> _googleDataprocMetastoreTableIamPolicySensitive = <String>{};

/// Factory wrapper for `google_dataproc_metastore_table_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleDataprocMetastoreTableIamPolicy extends Data {
  static const String tfType = 'google_dataproc_metastore_table_iam_policy';

  DataGoogleDataprocMetastoreTableIamPolicy({
    required super.localName,
    required TfArg<String> databaseId,
    TfArg<String>? location,
    TfArg<String>? project,
    required TfArg<String> serviceId,
    required TfArg<String> table,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database_id': databaseId,
           'location': ?location,
           'project': ?project,
           'service_id': serviceId,
           'table': table,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataprocMetastoreTableIamPolicySensitive;

  /// A reference to the `google_dataproc_metastore_table_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleDataprocMetastoreTableIamPolicy>`.
  RefTo<GoogleDataprocMetastoreTableIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
