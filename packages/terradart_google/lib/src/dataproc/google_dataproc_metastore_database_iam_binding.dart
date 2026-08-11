// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_metastore_database_iam_binding`.
const Set<String> _googleDataprocMetastoreDatabaseIamBindingSensitive =
    <String>{};

/// Factory wrapper for `google_dataproc_metastore_database_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Dataproc Metastore database.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleDataprocMetastoreDatabaseIamMember] for additive grants.
final class GoogleDataprocMetastoreDatabaseIamBinding extends Resource {
  static const String tfType = 'google_dataproc_metastore_database_iam_binding';

  GoogleDataprocMetastoreDatabaseIamBinding({
    required super.localName,
    required TfArg<String> serviceId,
    required TfArg<String> database,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? location,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service_id': serviceId,
           'database': database,
           'role': role,
           'members': members,
           if (location != null) 'location': location,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataprocMetastoreDatabaseIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
