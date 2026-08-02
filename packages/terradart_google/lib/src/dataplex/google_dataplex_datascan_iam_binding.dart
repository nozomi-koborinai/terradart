// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_datascan_iam_binding`.
const Set<String> _googleDataplexDatascanIamBindingSensitive = <String>{};

/// Factory wrapper for `google_dataplex_datascan_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Dataplex data scan.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleDataplexDatascanIamMember] for additive grants.
final class GoogleDataplexDatascanIamBinding extends Resource {
  static const String tfType = 'google_dataplex_datascan_iam_binding';

  GoogleDataplexDatascanIamBinding({
    required super.localName,
    required TfArg<String> dataScanId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_scan_id': dataScanId,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexDatascanIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
