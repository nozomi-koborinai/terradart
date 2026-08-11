// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_catalog_entry_group_iam_member`.
const Set<String> _googleDataCatalogEntryGroupIamMemberSensitive = <String>{};

/// Factory wrapper for `google_data_catalog_entry_group_iam_member`.
///
/// Additive IAM grant on a [GoogleDataCatalogEntryGroup]. Prefer this over
/// binding/policy when adding one (`role`, `member`) tuple.
final class GoogleDataCatalogEntryGroupIamMember extends Resource {
  static const String tfType = 'google_data_catalog_entry_group_iam_member';

  GoogleDataCatalogEntryGroupIamMember({
    required super.localName,
    required TfArg<String> entryGroup,
    required TfArg<String> role,
    required TfArg<String> member,
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
           'member': member,
           if (condition != null) 'condition': condition,
           if (region != null) 'region': region,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataCatalogEntryGroupIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
