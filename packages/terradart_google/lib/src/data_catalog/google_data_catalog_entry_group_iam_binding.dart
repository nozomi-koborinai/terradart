// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_catalog_entry_group_iam_binding`.
const Set<String> _googleDataCatalogEntryGroupIamBindingSensitive = <String>{};

/// Factory wrapper for `google_data_catalog_entry_group_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Data Catalog entry
/// group.
///
/// Replaces the entire member list for that role on the entry group. Prefer
/// [GoogleDataCatalogEntryGroupIamMember] when adding one principal without
/// touching existing bindings.
final class GoogleDataCatalogEntryGroupIamBinding extends Resource {
  static const String tfType = 'google_data_catalog_entry_group_iam_binding';

  GoogleDataCatalogEntryGroupIamBinding({
    required super.localName,
    required TfArg<String> entryGroup,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'entry_group': entryGroup,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (region != null) 'region': region,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataCatalogEntryGroupIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
