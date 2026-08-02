// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_connection_iam_binding`.
const Set<String> _googleBigqueryConnectionIamBindingSensitive = <String>{};

/// Factory wrapper for `google_bigquery_connection_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a BigQuery connection.
///
/// Replaces the entire member list for that role on the connection. Prefer
/// [GoogleBigqueryConnectionIamMember] when adding one principal without
/// touching existing bindings.
final class GoogleBigqueryConnectionIamBinding extends Resource {
  static const String tfType = 'google_bigquery_connection_iam_binding';

  GoogleBigqueryConnectionIamBinding({
    required super.localName,
    required TfArg<String> connectionId,
    TfArg<String>? location,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_id': connectionId,
           if (location != null) 'location': location,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryConnectionIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
