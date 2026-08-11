// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_metastore_database_iam_member`.
const Set<String> _googleDataprocMetastoreDatabaseIamMemberSensitive =
    <String>{};

/// Factory wrapper for `google_dataproc_metastore_database_iam_member`.
final class GoogleDataprocMetastoreDatabaseIamMember extends Resource {
  static const String tfType = 'google_dataproc_metastore_database_iam_member';

  GoogleDataprocMetastoreDatabaseIamMember({
    required super.localName,
    required TfArg<String> serviceId,
    required TfArg<String> database,
    required TfArg<String> role,
    required TfArg<String> member,
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
           'member': member,
           if (location != null) 'location': location,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataprocMetastoreDatabaseIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
