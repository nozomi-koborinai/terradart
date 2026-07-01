// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_entry_type`.
const Set<String> _googleDataplexEntryTypeSensitive = <String>{};

/// Factory wrapper for `google_dataplex_entry_type`.
///
/// An Entry Type is a template for creating Entries.
final class GoogleDataplexEntryType extends Resource {
  static const String tfType = 'google_dataplex_entry_type';

  GoogleDataplexEntryType({
    required super.localName,
    TfArg<String>? entryTypeId,
    TfArg<String>? location,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<String>? platform,
    TfArg<String>? system,
    TfArg<List<String>>? typeAliases,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (entryTypeId != null) 'entry_type_id': entryTypeId,
           if (location != null) 'location': location,
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           if (platform != null) 'platform': platform,
           if (system != null) 'system': system,
           if (typeAliases != null) 'type_aliases': typeAliases,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexEntryTypeSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
