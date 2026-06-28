// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_entry_link`.
const Set<String> _googleDataplexEntryLinkSensitive = <String>{};

/// Factory wrapper for `google_dataplex_entry_link`.
///
/// EntryLink represents a link between two Entries.
final class GoogleDataplexEntryLink extends Resource {
  static const String tfType = 'google_dataplex_entry_link';

  GoogleDataplexEntryLink({
    required super.localName,
    required TfArg<String> entryGroupId,
    required TfArg<String> entryLinkId,
    required TfArg<String> entryLinkType,
    required TfArg<String> location,
    required TfArg<List<Map<String, dynamic>>> entryReferences,
    TfArg<List<Map<String, dynamic>>>? aspects,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'entry_group_id': entryGroupId,
           'entry_link_id': entryLinkId,
           'entry_link_type': entryLinkType,
           'location': location,
           'entry_references': entryReferences,
           if (aspects != null) 'aspects': aspects,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexEntryLinkSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
