// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_entry_link`.
const Set<String> _googleDataplexEntryLinkSensitive = <String>{};

/// Typed helper for the `aspects` block of
/// `google_dataplex_entry_link` (derived from provider schema).
@immutable
final class DataplexEntryLinkAspects {
  const DataplexEntryLinkAspects({
    required this.aspectKey,
    required this.aspect,
  });

  final TfArg<String> aspectKey;

  final DataplexEntryLinkAspectsAspect aspect;

  Map<String, Object?> encode() => {
    'aspect_key': aspectKey.toTfJson(),
    'aspect': aspect.encode(),
  };
}

/// Typed helper for the `aspects.aspect` block of
/// `google_dataplex_entry_link` (derived from provider schema).
@immutable
final class DataplexEntryLinkAspectsAspect {
  const DataplexEntryLinkAspectsAspect({required this.data});

  final TfArg<String> data;

  Map<String, Object?> encode() => {'data': data.toTfJson()};
}

/// Typed helper for the `entry_references` block of
/// `google_dataplex_entry_link` (derived from provider schema).
@immutable
final class DataplexEntryLinkEntryReferences {
  const DataplexEntryLinkEntryReferences({
    required this.name,
    this.path,
    this.type,
  });

  final TfArg<String> name;

  final TfArg<String>? path;

  final TfArg<DataplexEntryLinkEntryReferencesType>? type;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum DataplexEntryLinkEntryReferencesType implements TerraformEnum {
  source('SOURCE'),
  target('TARGET');

  const DataplexEntryLinkEntryReferencesType(this.terraformValue);
  @override
  final String terraformValue;
}

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
    required List<DataplexEntryLinkEntryReferences> entryReferences,
    List<DataplexEntryLinkAspects>? aspects,
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
           'entry_references': TfArg.literal([
             for (final e in entryReferences) e.encode(),
           ]),
           if (aspects != null)
             'aspects': TfArg.literal([for (final e in aspects) e.encode()]),
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
