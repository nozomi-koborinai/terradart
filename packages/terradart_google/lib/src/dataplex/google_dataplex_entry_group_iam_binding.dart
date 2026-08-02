// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_entry_group_iam_binding`.
const Set<String> _googleDataplexEntryGroupIamBindingSensitive = <String>{};

/// Factory wrapper for `google_dataplex_entry_group_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Dataplex entry group.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleDataplexEntryGroupIamMember] for additive grants.
final class GoogleDataplexEntryGroupIamBinding extends Resource {
  static const String tfType = 'google_dataplex_entry_group_iam_binding';

  GoogleDataplexEntryGroupIamBinding({
    required super.localName,
    required TfArg<String> entryGroupId,
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
           'entry_group_id': entryGroupId,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataplexEntryGroupIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
