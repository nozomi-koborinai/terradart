// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firestore_index`.
const Set<String> _googleFirestoreIndexSensitive = <String>{};

// ===========================================================================
// Enums (sourced from schema "Possible values" prose)
// ===========================================================================

/// `query_scope` -- which queries can use this index. `collection` (the
/// default) limits the index to queries scoped to a single collection;
/// `collectionGroup` allows collection-group queries; `collectionRecursive`
/// also covers descendant collection groups.
enum FirestoreIndexQueryScope {
  collection('COLLECTION'),
  collectionGroup('COLLECTION_GROUP'),
  collectionRecursive('COLLECTION_RECURSIVE');

  const FirestoreIndexQueryScope(this.terraformValue);
  final String terraformValue;
}

/// `api_scope` -- which Firestore API surface the index targets.
/// `anyApi` (the default) serves both the Firestore native API and the
/// Datastore-mode API; the others restrict to one.
enum FirestoreIndexApiScope {
  anyApi('ANY_API'),
  datastoreModeApi('DATASTORE_MODE_API'),
  mongodbCompatibleApi('MONGODB_COMPATIBLE_API');

  const FirestoreIndexApiScope(this.terraformValue);
  final String terraformValue;
}

/// `density` -- whether the index includes documents that are missing the
/// indexed fields. `sparseAll` only indexes documents with values for ALL
/// fields (the default for composite indexes); `sparseAny` indexes
/// documents with ANY field; `dense` indexes every document.
enum FirestoreIndexDensity {
  sparseAll('SPARSE_ALL'),
  sparseAny('SPARSE_ANY'),
  dense('DENSE');

  const FirestoreIndexDensity(this.terraformValue);
  final String terraformValue;
}

/// `deletion_policy` -- behaviour on `terraform destroy`. `delete` (the
/// default) tears the index down both in state and in GCP. `prevent`
/// keeps the index in GCP and FAILS the destroy -- a safety mode for
/// indexes that back production queries.
enum FirestoreIndexDeletionPolicy {
  delete('DELETE'),
  prevent('PREVENT');

  const FirestoreIndexDeletionPolicy(this.terraformValue);
  final String terraformValue;
}

/// One [IndexField.spec] dimension. Pairs with [FirestoreIndexOrder.descending]
/// to flip the per-field index direction.
enum FirestoreIndexOrder {
  ascending('ASCENDING'),
  descending('DESCENDING');

  const FirestoreIndexOrder(this.terraformValue);
  final String terraformValue;
}

// ===========================================================================
// fields[] + sealed IndexFieldSpec dispatch
// ===========================================================================

/// One entry in `fields[]`. Each indexed field declares either an
/// [IndexFieldOrder] (range queries / equality / ORDER BY) or an
/// [IndexFieldArrayConfig] (array-contains queries) via [spec]. The
/// schema's commented exactly_one_of constraint over
/// `order` / `array_config` / `search_config` / `vector_config` is
/// modeled at the type level by the sealed [IndexFieldSpec] dispatch.
@immutable
class IndexField {
  const IndexField({required this.fieldPath, required this.spec});

  /// Dot-separated field path inside the document (e.g.
  /// `'user_id'`, `'metadata.tags'`).
  final TfArg<String> fieldPath;

  /// Index dimension for this field.
  final IndexFieldSpec spec;

  Map<String, Object?> encode() => {
    'field_path': fieldPath.toTfJson(),
    ...spec.encode(),
  };
}

/// Sealed dispatch for [IndexField.spec]. Models the schema's
/// exactly_one_of (`order` / `array_config` / `search_config` /
/// `vector_config`) at the type level. Subclasses encode their own
/// Terraform key.
sealed class IndexFieldSpec {
  const IndexFieldSpec();

  /// Returns the JSON fragment to merge into [IndexField.encode].
  Map<String, Object?> encode();
}

/// Range / equality / order-by dimension for a field. Pair
/// [FirestoreIndexOrder.descending] to flip the per-field direction.
@immutable
final class IndexFieldOrder extends IndexFieldSpec {
  const IndexFieldOrder(this.order);

  /// Direction.
  final FirestoreIndexOrder order;

  @override
  Map<String, Object?> encode() => {'order': order.terraformValue};
}

/// Array-contains dimension for a field. Firestore only supports
/// `'CONTAINS'` as the array config today, so no parameter is exposed.
@immutable
final class IndexFieldArrayConfig extends IndexFieldSpec {
  const IndexFieldArrayConfig();

  @override
  Map<String, Object?> encode() => {
    // `CONTAINS` is the only valid value for `array_config` as of provider v7.31.0;
    // hard-coded here to keep the encoded shape consistent with the schema.
    'array_config': 'CONTAINS',
  };
}

/// Text-search dimension for a field (Firestore Vector Search /
/// full-text search). The schema models this as a nested block with
/// `geo_spec` + `text_spec`; only `text_spec` is exposed here because
/// `geo_spec` requires a single boolean knob and merits a separate
/// variant if/when needed.
@immutable
final class IndexFieldSearchConfig extends IndexFieldSpec {
  const IndexFieldSearchConfig({this.textSpec});

  /// Per-text-field index configuration (token vs. n-gram vs. substring;
  /// exact vs. prefix matching). When null, an empty `text_spec` is
  /// emitted, which Firestore treats as "use defaults".
  final IndexFieldTextSpec? textSpec;

  @override
  Map<String, Object?> encode() => {
    'search_config': [
      {
        if (textSpec != null) 'text_spec': [textSpec!.encode()],
      },
    ],
  };
}

/// `search_config.text_spec` block. Carries a list of
/// [IndexFieldTextSpecEntry] entries (one per index_spec the user wants
/// to configure -- e.g. one for substring matching, one for prefix
/// matching of the same field).
@immutable
class IndexFieldTextSpec {
  const IndexFieldTextSpec({required this.indexSpecs})
    : assert(
        indexSpecs.length >= 1,
        'IndexFieldTextSpec.indexSpecs must have at least one entry '
        '(schema enforces min_items=1)',
      );

  /// At least one per the schema's `min_items=1`.
  final List<IndexFieldTextSpecEntry> indexSpecs;

  Map<String, Object?> encode() => {
    'index_specs': indexSpecs.map((e) => e.encode()).toList(),
  };
}

/// One entry in `text_spec.index_specs`. Both fields are
/// schema-optional; combinations are documented in
/// https://firebase.google.com/docs/firestore/text-search.
@immutable
class IndexFieldTextSpecEntry {
  const IndexFieldTextSpecEntry({this.indexType, this.matchType});

  /// Index strategy (`TOKEN`, `NGRAM`, etc.). Forward the literal
  /// string -- the schema does not expose a typed enum here.
  final String? indexType;

  /// Match strategy (`EXACT`, `PREFIX`). Forward the literal string.
  final String? matchType;

  Map<String, Object?> encode() => {
    if (indexType != null) 'index_type': indexType,
    if (matchType != null) 'match_type': matchType,
  };
}

/// Vector-search dimension for a field. The schema requires
/// [dimension] plus a marker `flat` sub-block; the wrapper emits both.
@immutable
final class IndexFieldVectorConfig extends IndexFieldSpec {
  const IndexFieldVectorConfig({required this.dimension});

  /// Vector dimensionality. The index only matches queries of the same
  /// dimension.
  final int dimension;

  @override
  Map<String, Object?> encode() => {
    'vector_config': [
      {
        'dimension': dimension,
        'flat': [<String, Object?>{}],
      },
    ],
  };
}

/// Factory wrapper for `google_firestore_index` (provider
/// `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_firestore_index.`).
/// - `collection`: collection group ID being indexed (e.g. `'messages'`).
///   Indexes are scoped to a collection group, not a specific collection
///   path -- the same index covers every collection with this ID across
///   the database.
/// - `fields`: at least one [IndexField]. The Firestore service ALSO
///   imposes a separate "must include `__name__`" rule on composite
///   indexes that is not surfaced by Terraform-side validation -- the
///   composite index variants below take care of it.
///
/// Example (composite index on `messages`, ordered by user then time):
/// ```dart
/// final byUser = GoogleFirestoreIndex(
///   localName: 'messages_by_user_time',
///   collection: TfArg.literal('messages'),
///   fields: [
///     IndexField(
///       fieldPath: TfArg.literal('user_id'),
///       spec: const IndexFieldOrder(FirestoreIndexOrder.ascending),
///     ),
///     IndexField(
///       fieldPath: TfArg.literal('created_at'),
///       spec: const IndexFieldOrder(FirestoreIndexOrder.descending),
///     ),
///   ],
/// );
/// ```
///
/// Example (array-contains index on `tags`):
/// ```dart
/// final byTag = GoogleFirestoreIndex(
///   localName: 'messages_by_tag',
///   collection: TfArg.literal('messages'),
///   fields: [
///     IndexField(
///       fieldPath: TfArg.literal('tags'),
///       spec: const IndexFieldArrayConfig(),
///     ),
///   ],
/// );
/// ```
///
/// Manages a Cloud Firestore composite or array-contains index. Single-
/// field indexes are managed by Firestore automatically and have a
/// different resource (`google_firestore_field`); only composite /
/// array-contains indexes need an explicit [GoogleFirestoreIndex].
final class GoogleFirestoreIndex extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_firestore_index';

  GoogleFirestoreIndex({
    required super.localName,
    required TfArg<String> collection,
    required List<IndexField> fields,
    TfArg<String>? database,
    TfArg<FirestoreIndexQueryScope>? queryScope,
    TfArg<FirestoreIndexApiScope>? apiScope,
    TfArg<FirestoreIndexDensity>? density,
    TfArg<bool>? multikey,
    TfArg<bool>? unique,
    TfArg<FirestoreIndexDeletionPolicy>? deletionPolicy,
    TfArg<bool>? skipWait,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'collection': collection,
           'fields': TfArg.literal(fields.map((f) => f.encode()).toList()),
           if (database != null) 'database': database,
           if (queryScope != null) 'query_scope': queryScope,
           if (apiScope != null) 'api_scope': apiScope,
           if (density != null) 'density': density,
           if (multikey != null) 'multikey': multikey,
           if (unique != null) 'unique': unique,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (skipWait != null) 'skip_wait': skipWait,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleFirestoreIndexSensitive;

  /// Reference to `name` attribute (server-assigned full path:
  /// `projects/{p}/databases/{db}/collectionGroups/{collection}/indexes/{id}`).
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute. Same as `nameRef` for this resource --
  /// indexes have no separate id distinct from their full path.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
