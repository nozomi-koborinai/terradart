// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_lake_iam_binding`.
const Set<String> _googleDataplexLakeIamBindingSensitive = <String>{};

/// Factory wrapper for `google_dataplex_lake_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Dataplex lake.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleDataplexLakeIamMember] for additive grants.
final class GoogleDataplexLakeIamBinding extends Resource {
  static const String tfType = 'google_dataplex_lake_iam_binding';

  GoogleDataplexLakeIamBinding({
    required super.localName,
    required TfArg<String> lake,
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
           'lake': lake,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexLakeIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
