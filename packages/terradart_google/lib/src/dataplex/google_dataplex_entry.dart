// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_entry`.
const Set<String> _googleDataplexEntrySensitive = <String>{};

/// Factory wrapper for `google_dataplex_entry`.
///
/// An entry represents a data asset for which you capture metadata, such as a
/// BigQuery table. The primary constituents of an entry are aspects, which
/// provide thematically coherent information. Examples include a table's
/// schema, sensitive data protection profile, data quality information, or a
/// simple tag.
///
/// **Important Considerations:**
///
/// * There is a limit of 99 aspects per entry. * The entry resource has to use
/// project numbers and not project IDs. Therefore, if a dependency was already
/// provisioned using project ID, it needs to be referenced explicitly as a
/// resource name containing the project number.
final class GoogleDataplexEntry extends Resource {
  static const String tfType = 'google_dataplex_entry';

  GoogleDataplexEntry({
    required super.localName,
    TfArg<String>? entryGroupId,
    TfArg<String>? entryId,
    required TfArg<String> entryType,
    TfArg<String>? location,
    TfArg<String>? fullyQualifiedName,
    TfArg<String>? parentEntry,
    TfArg<Map<String, dynamic>>? entrySource,
    TfArg<List<Map<String, dynamic>>>? aspects,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (entryGroupId != null) 'entry_group_id': entryGroupId,
           if (entryId != null) 'entry_id': entryId,
           'entry_type': entryType,
           if (location != null) 'location': location,
           if (fullyQualifiedName != null)
             'fully_qualified_name': fullyQualifiedName,
           if (parentEntry != null) 'parent_entry': parentEntry,
           if (entrySource != null) 'entry_source': entrySource,
           if (aspects != null) 'aspects': aspects,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexEntrySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
