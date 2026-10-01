// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_entry`.
const Set<String> _googleDataplexEntrySensitive = <String>{};

/// Typed helper for the `aspects` block of
/// `google_dataplex_entry` (derived from provider schema).
@immutable
final class DataplexEntryAspects {
  const DataplexEntryAspects({required this.aspectKey, required this.aspect});

  final TfArg<String> aspectKey;

  final DataplexEntryAspect aspect;

  Map<String, Object?> encode() => {
    'aspect_key': aspectKey.toTfJson(),
    'aspect': aspect.encode(),
  };
}

/// Typed helper for the `aspects.aspect` block of
/// `google_dataplex_entry` (derived from provider schema).
@immutable
final class DataplexEntryAspect {
  const DataplexEntryAspect({required this.data});

  final TfArg<String> data;

  Map<String, Object?> encode() => {'data': data.toTfJson()};
}

/// Typed helper for the `entry_source` block of
/// `google_dataplex_entry` (derived from provider schema).
@immutable
final class DataplexEntrySource {
  const DataplexEntrySource({
    this.createTime,
    this.description,
    this.displayName,
    this.labels,
    this.platform,
    this.resource,
    this.system,
    this.updateTime,
    this.ancestors,
  });

  final TfArg<String>? createTime;

  final TfArg<String>? description;

  final TfArg<String>? displayName;

  final TfArg<Map<String, String>>? labels;

  final TfArg<String>? platform;

  final TfArg<String>? resource;

  final TfArg<String>? system;

  final TfArg<String>? updateTime;

  final List<DataplexEntryAncestors>? ancestors;

  Map<String, Object?> encode() => {
    'create_time': ?createTime?.toTfJson(),
    'description': ?description?.toTfJson(),
    'display_name': ?displayName?.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'platform': ?platform?.toTfJson(),
    'resource': ?resource?.toTfJson(),
    'system': ?system?.toTfJson(),
    'update_time': ?updateTime?.toTfJson(),
    if (ancestors != null)
      'ancestors': [for (final e in ancestors!) e.encode()],
  };
}

/// Typed helper for the `entry_source.ancestors` block of
/// `google_dataplex_entry` (derived from provider schema).
@immutable
final class DataplexEntryAncestors {
  const DataplexEntryAncestors({this.name, this.type});

  final TfArg<String>? name;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

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
    DataplexEntrySource? entrySource,
    List<DataplexEntryAspects>? aspects,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'entry_group_id': ?entryGroupId,
           'entry_id': ?entryId,
           'entry_type': entryType,
           'location': ?location,
           'fully_qualified_name': ?fullyQualifiedName,
           'parent_entry': ?parentEntry,
           if (entrySource != null)
             'entry_source': TfArg.literal(entrySource.encode()),
           if (aspects != null)
             'aspects': TfArg.literal([for (final e in aspects) e.encode()]),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexEntrySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexEntry>`.
  RefTo<GoogleDataplexEntry> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `entry_group_id` attribute.
  TfRef<String> get entryGroupIdRef =>
      TfRef.attribute<String>(this, 'entry_group_id');

  /// Reference to `entry_id` attribute.
  TfRef<String> get entryIdRef => TfRef.attribute<String>(this, 'entry_id');

  /// Reference to `entry_type` attribute.
  TfRef<String> get entryTypeRef => TfRef.attribute<String>(this, 'entry_type');

  /// Reference to `fully_qualified_name` attribute.
  TfRef<String> get fullyQualifiedNameRef =>
      TfRef.attribute<String>(this, 'fully_qualified_name');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `parent_entry` attribute.
  TfRef<String> get parentEntryRef =>
      TfRef.attribute<String>(this, 'parent_entry');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
