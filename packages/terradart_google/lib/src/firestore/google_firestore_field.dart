// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/src/generated/google_firestore_field.schema.dart'
    show $GoogleFirestoreField, googleFirestoreFieldSensitive;

// Tiny const carrier for `Resource<S>.schema`. Inert in v0.0.x synth — only
// consumed by `ResourceRef<S>.placeholder` (a future surface). We
// keep this stub inline. `noSuchMethod` satisfies the abstract field
// getters; they are never invoked in v0.0.x.
class _GoogleFirestoreFieldSchemaInstance implements $GoogleFirestoreField {
  const _GoogleFirestoreFieldSchemaInstance();

  @override
  // ignore: non_constant_identifier_names
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

// ===========================================================================
// Enums (sourced from schema "Possible values" prose)
// ===========================================================================

/// One [SingleFieldIndex.order] direction. `ASCENDING` / `DESCENDING`.
enum FirestoreFieldOrder {
  ascending('ASCENDING'),
  descending('DESCENDING');

  const FirestoreFieldOrder(this.terraformValue);
  final String terraformValue;
}

/// `query_scope` -- which queries can use this single-field index.
/// `collection` scopes the index to a single collection; `collectionGroup`
/// allows the index to serve collection-group queries.
enum FirestoreFieldQueryScope {
  collection('COLLECTION'),
  collectionGroup('COLLECTION_GROUP');

  const FirestoreFieldQueryScope(this.terraformValue);
  final String terraformValue;
}

// ===========================================================================
// Nested-block helpers
// ===========================================================================

/// `index_config` block (max_items=1). Overrides Firestore's automatic
/// single-field indexing for the parent field. An empty [indexes] list
/// disables all single-field indexes on the field; a populated list
/// adds explicit per-field indexes (mix of ordered / array-contains).
@immutable
class IndexConfig {
  const IndexConfig({required this.indexes});

  /// Per-field indexes. Empty list is valid and means "no single-field
  /// indexes on this field" -- the override mechanism is binary.
  final List<SingleFieldIndex> indexes;

  Map<String, Object?> encode() => {
    'indexes': indexes.map((i) => i.encode()).toList(),
  };
}

/// One entry in `index_config.indexes`. Pick exactly one of [order]
/// (ranged / equality / ORDER BY) or [arrayContains] (array-contains
/// queries) -- the schema marks them mutually exclusive ("Only one of
/// 'order' and 'arrayConfig' can be specified"). [queryScope] is
/// independent and defaults to `COLLECTION` server-side.
@immutable
class SingleFieldIndex {
  const SingleFieldIndex({
    this.order,
    this.arrayContains = false,
    this.queryScope,
  }) : assert(
         !(order != null && arrayContains),
         'SingleFieldIndex: pass exactly one of `order` or '
         '`arrayContains: true` -- the schema rejects both.',
       ),
       assert(
         order != null || arrayContains,
         'SingleFieldIndex: must specify either `order` or '
         '`arrayContains: true`.',
       );

  /// Index direction. Null when [arrayContains] is true.
  final FirestoreFieldOrder? order;

  /// When true, encodes `array_config: "CONTAINS"`. Mutually exclusive
  /// with [order].
  final bool arrayContains;

  /// Query scope for this index. Null falls through to the provider
  /// default (`COLLECTION`).
  final FirestoreFieldQueryScope? queryScope;

  Map<String, Object?> encode() => {
    if (order != null) 'order': order!.terraformValue,
    // `CONTAINS` is the only valid value for `array_config` as of provider v7.31.0;
    // hard-coded here to keep the encoded shape consistent with the schema.
    if (arrayContains) 'array_config': 'CONTAINS',
    if (queryScope != null) 'query_scope': queryScope!.terraformValue,
  };
}

/// `ttl_config` block (max_items=1). Presence alone enables the TTL
/// policy on the parent field -- the schema's single attribute
/// (`state`) is computed and read-only. Pass `const TtlConfig()` to
/// enable; omit to disable.
@immutable
class TtlConfig {
  const TtlConfig();

  /// Empty map -- the schema has no input attributes on this block.
  Map<String, Object?> encode() => const <String, Object?>{};
}

/// Factory wrapper for `google_firestore_field`.
///
/// Configures a single field within one Firestore collection group --
/// either to override the database's automatic single-field indexing or
/// to enable a TTL policy on the field. Composite indexes live in a
/// different resource ([GoogleFirestoreIndex]); this resource only
/// covers per-field config.
///
/// Required identity:
/// - [collection]: collection-group ID (the same value across every
///   collection with this ID in the database).
/// - [field]: dot-separated path inside the document (e.g. `'user_id'`,
///   `'metadata.tags'`).
///
/// Use [indexConfig] to override single-field indexing. An empty
/// `IndexConfig(indexes: [])` **disables** all single-field indexes on
/// the field (overriding the database's automatic indexing); a non-empty
/// list adds explicit per-field indexes.
///
/// Use [ttlConfig] to mark this field as a TTL field -- Firestore will
/// delete documents whose timestamp value in this field has passed.
/// Pass `const TtlConfig()` to enable; omit (or pass null) to disable.
///
/// Example (enable TTL on `expires_at`):
/// ```dart
/// final ttl = GoogleFirestoreField(
///   localName: 'expires_at_ttl',
///   collection: TfArg.literal('sessions'),
///   field: TfArg.literal('expires_at'),
///   ttlConfig: const TtlConfig(),
/// );
/// ```
///
/// Example (disable single-field indexing on `large_blob`):
/// ```dart
/// final unindex = GoogleFirestoreField(
///   localName: 'large_blob_unindexed',
///   collection: TfArg.literal('messages'),
///   field: TfArg.literal('large_blob'),
///   indexConfig: const IndexConfig(indexes: []),
/// );
/// ```
final class GoogleFirestoreField extends Resource<$GoogleFirestoreField> {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_firestore_field';

  GoogleFirestoreField({
    required super.localName,
    required TfArg<String> collection,
    required TfArg<String> field,
    TfArg<String>? database,
    IndexConfig? indexConfig,
    TtlConfig? ttlConfig,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         schema: const _GoogleFirestoreFieldSchemaInstance(),
         argMap: {
           'collection': collection,
           'field': field,
           if (database != null) 'database': database,
           if (indexConfig != null)
             'index_config': TfArg.literal([indexConfig.encode()]),
           if (ttlConfig != null)
             'ttl_config': TfArg.literal([ttlConfig.encode()]),
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => googleFirestoreFieldSensitive;

  /// Reference to `name` attribute (the full path
  /// `projects/{p}/databases/{db}/collectionGroups/{c}/fields/{f}`).
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute. Same as [nameRef] for this resource.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
