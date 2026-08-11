// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_catalog_entry`.
const Set<String> _googleDataCatalogEntrySensitive = <String>{};

// ===========================================================================
// DataCatalogEntryKind — sealed (FILESET | user_specified_type)
// ===========================================================================

/// Choice of entry type. Sealed so callers pick exactly one of the provider
/// `type` / `user_specified_type` scalars.
sealed class DataCatalogEntryKind {
  const DataCatalogEntryKind();

  /// argMap key (`type` or `user_specified_type`).
  String get blockKey;

  /// Scalar value for that key.
  TfArg<String> get value;

  /// Flat `{blockKey: value}` payload (Gate 6 / callers that need a map).
  Map<String, Object?> encode() => {blockKey: value.toTfJson()};
}

/// Builtin `type = FILESET` entry.
@immutable
final class DataCatalogEntryFileset extends DataCatalogEntryKind {
  const DataCatalogEntryFileset();

  @override
  String get blockKey => 'type';

  @override
  TfArg<String> get value => TfArg.literal('FILESET');
}

/// Custom `user_specified_type` entry.
@immutable
final class DataCatalogEntryCustomType extends DataCatalogEntryKind {
  const DataCatalogEntryCustomType({required this.userSpecifiedType});

  final TfArg<String> userSpecifiedType;

  @override
  String get blockKey => 'user_specified_type';

  @override
  TfArg<String> get value => userSpecifiedType;
}

/// `gcs_fileset_spec` — only valid when [entryKind] is [DataCatalogEntryFileset].
@immutable
final class DataCatalogEntryGcsFilesetSpec {
  const DataCatalogEntryGcsFilesetSpec({required this.filePatterns});

  final TfArg<List<String>> filePatterns;

  Map<String, Object?> encode() => {'file_patterns': filePatterns.toTfJson()};
}

/// Factory wrapper for `google_data_catalog_entry`.
///
/// Entry Metadata. A Data Catalog Entry resource represents another resource in
/// Google Cloud Platform (such as a BigQuery dataset or a Pub/Sub topic) or
/// outside of Google Cloud Platform. Clients can use the linkedResource field
/// in the Entry resource to refer to the original resource ID of the source
/// system.
///
/// An Entry resource contains resource details, such as its schema. An Entry
/// can also be used to attach flexible metadata, such as a Tag.
///
/// Data Catalog **entry** inside a [GoogleDataCatalogEntryGroup] (legacy
/// Data Catalog API). Provide exactly one [entryKind]:
/// - [DataCatalogEntryFileset] — builtin `FILESET` (+ optional [gcsFilesetSpec])
/// - [DataCatalogEntryCustomType] — `user_specified_type` (+ optional
///   [userSpecifiedSystem])
///
/// Pass [entryGroup] as the parent entry-group id (`TfArg.ref(group.id)`).
///
/// Example (custom entry):
/// ```dart
/// GoogleDataCatalogEntry(
///   localName: 'custom',
///   entryGroup: TfArg.ref(group.id),
///   entryId: TfArg.literal('my_entry'),
///   entryKind: DataCatalogEntryCustomType(
///     userSpecifiedType: TfArg.literal('my_custom_type'),
///   ),
///   userSpecifiedSystem: TfArg.literal('SomethingExternal'),
/// );
/// ```
final class GoogleDataCatalogEntry extends Resource {
  static const String tfType = 'google_data_catalog_entry';

  GoogleDataCatalogEntry({
    required super.localName,
    required TfArg<String> entryGroup,
    required TfArg<String> entryId,
    required DataCatalogEntryKind entryKind,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<String>? userSpecifiedSystem,
    TfArg<String>? linkedResource,
    TfArg<String>? schema,
    DataCatalogEntryGcsFilesetSpec? gcsFilesetSpec,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'entry_group': entryGroup,
           'entry_id': entryId,
           entryKind.blockKey: entryKind.value,
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           if (userSpecifiedSystem != null)
             'user_specified_system': userSpecifiedSystem,
           if (linkedResource != null) 'linked_resource': linkedResource,
           if (schema != null) 'schema': schema,
           if (gcsFilesetSpec != null)
             'gcs_fileset_spec': TfArg.literal([gcsFilesetSpec.encode()]),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataCatalogEntrySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bigquery_date_sharded_spec` attribute.
  TfRef<List<Map<String, Object?>>> get bigqueryDateShardedSpec =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'bigquery_date_sharded_spec',
      );

  /// Reference to `bigquery_table_spec` attribute.
  TfRef<List<Map<String, Object?>>> get bigqueryTableSpec =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'bigquery_table_spec');

  /// Reference to `integrated_system` attribute.
  TfRef<String> get integratedSystem =>
      TfRef.attribute<String>(this, 'integrated_system');
}
