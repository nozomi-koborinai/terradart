// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_entry_type`.
const Set<String> _googleDataplexEntryTypeSensitive = <String>{};

/// Typed helper for the `required_aspects` block of
/// `google_dataplex_entry_type` (derived from provider schema).
@immutable
final class DataplexEntryTypeRequiredAspects {
  const DataplexEntryTypeRequiredAspects({this.type});

  final TfArg<String>? type;

  Map<String, Object?> encode() => {'type': ?type?.toTfJson()};
}

/// Factory wrapper for `google_dataplex_entry_type`.
///
/// An Entry Type is a template for creating Entries.
final class GoogleDataplexEntryType extends Resource {
  static const String tfType = 'google_dataplex_entry_type';

  GoogleDataplexEntryType(
    super.localName, {
    TfArg<String>? entryTypeId,
    TfArg<String>? location,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<String>? platform,
    TfArg<String>? system,
    TfArg<List<String>>? typeAliases,
    List<DataplexEntryTypeRequiredAspects>? requiredAspects,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'entry_type_id': ?entryTypeId,
           'location': ?location,
           'display_name': ?displayName,
           'description': ?description,
           'platform': ?platform,
           'system': ?system,
           'type_aliases': ?typeAliases,
           if (requiredAspects != null)
             'required_aspects': TfArg.literal([
               for (final e in requiredAspects) e.encode(),
             ]),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexEntryTypeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexEntryType>`.
  RefTo<GoogleDataplexEntryType> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `entry_type_id` attribute.
  TfRef<String> get entryTypeId =>
      TfRef.attribute<String>(this, 'entry_type_id');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `platform` attribute.
  TfRef<String> get platform => TfRef.attribute<String>(this, 'platform');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `system` attribute.
  TfRef<String> get system => TfRef.attribute<String>(this, 'system');

  /// Reference to `type_aliases` attribute.
  TfRef<List<String>> get typeAliases =>
      TfRef.attribute<List<String>>(this, 'type_aliases');
}
