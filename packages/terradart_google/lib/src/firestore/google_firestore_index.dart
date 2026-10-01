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
enum FirestoreIndexQueryScope implements TerraformEnum {
  collection('COLLECTION'),
  collectionGroup('COLLECTION_GROUP'),
  collectionRecursive('COLLECTION_RECURSIVE');

  const FirestoreIndexQueryScope(this.terraformValue);
  @override
  final String terraformValue;
}

/// `api_scope` -- which Firestore API surface the index targets.
/// `anyApi` (the default) serves both the Firestore native API and the
/// Datastore-mode API; the others restrict to one.
enum FirestoreIndexApiScope implements TerraformEnum {
  anyApi('ANY_API'),
  datastoreModeApi('DATASTORE_MODE_API'),
  mongodbCompatibleApi('MONGODB_COMPATIBLE_API');

  const FirestoreIndexApiScope(this.terraformValue);
  @override
  final String terraformValue;
}

/// `density` -- whether the index includes documents that are missing the
/// indexed fields. `sparseAll` only indexes documents with values for ALL
/// fields (the default for composite indexes); `sparseAny` indexes
/// documents with ANY field; `dense` indexes every document.
enum FirestoreIndexDensity implements TerraformEnum {
  sparseAll('SPARSE_ALL'),
  sparseAny('SPARSE_ANY'),
  dense('DENSE');

  const FirestoreIndexDensity(this.terraformValue);
  @override
  final String terraformValue;
}

/// `deletion_policy` -- behaviour on `terraform destroy`. `delete` (the
/// default) tears the index down both in state and in GCP. `prevent`
/// keeps the index in GCP and FAILS the destroy -- a safety mode for
/// indexes that back production queries.
enum FirestoreIndexDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT');

  const FirestoreIndexDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// One [FirestoreIndexField.spec] dimension. Pairs with [FirestoreIndexOrder.descending]
/// to flip the per-field index direction.
enum FirestoreIndexOrder implements TerraformEnum {
  ascending('ASCENDING'),
  descending('DESCENDING');

  const FirestoreIndexOrder(this.terraformValue);
  @override
  final String terraformValue;
}

// ===========================================================================
// fields[] + sealed FirestoreIndexFieldSpec dispatch
// ===========================================================================

/// One entry in `fields[]`. Each indexed field declares either an
/// [FirestoreIndexFieldOrder] (range queries / equality / ORDER BY) or an
/// [FirestoreIndexFieldArrayConfig] (array-contains queries) via [spec]. The
/// schema's commented exactly_one_of constraint over
/// `order` / `array_config` / `search_config` / `vector_config` is
/// modeled at the type level by the sealed [FirestoreIndexFieldSpec] dispatch.
@immutable
class FirestoreIndexField {
  const FirestoreIndexField({required this.fieldPath, required this.spec});

  /// Dot-separated field path inside the document (e.g.
  /// `'user_id'`, `'metadata.tags'`).
  final TfArg<String> fieldPath;

  /// Index dimension for this field.
  final FirestoreIndexFieldSpec spec;

  Map<String, Object?> encode() => {
    'field_path': fieldPath.toTfJson(),
    ...spec.encode(),
  };
}

/// Sealed dispatch for [FirestoreIndexField.spec]. Models the schema's
/// exactly_one_of (`order` / `array_config` / `search_config` /
/// `vector_config`) at the type level. Subclasses encode their own
/// Terraform key.
sealed class FirestoreIndexFieldSpec {
  const FirestoreIndexFieldSpec();

  /// Range / equality / order-by dimension for a field.
  const factory FirestoreIndexFieldSpec.order(FirestoreIndexOrder order) =
      FirestoreIndexFieldOrder;

  /// Array-contains dimension for a field.
  const factory FirestoreIndexFieldSpec.arrayConfig() =
      FirestoreIndexFieldArrayConfig;

  /// Text-search dimension for a field (Firestore Vector Search / full-text search).
  const factory FirestoreIndexFieldSpec.searchConfig({
    FirestoreIndexFieldTextSpec? textSpec,
  }) = FirestoreIndexFieldSearchConfig;

  /// Vector-search dimension for a field.
  const factory FirestoreIndexFieldSpec.vectorConfig({
    required TfArg<int> dimension,
  }) = FirestoreIndexFieldVectorConfig;

  /// Returns the JSON fragment to merge into [FirestoreIndexField.encode].
  Map<String, Object?> encode();
}

/// Range / equality / order-by dimension for a field. Pair
/// [FirestoreIndexOrder.descending] to flip the per-field direction.
@immutable
final class FirestoreIndexFieldOrder extends FirestoreIndexFieldSpec {
  const FirestoreIndexFieldOrder(this.order);

  /// Direction.
  final FirestoreIndexOrder order;

  @override
  Map<String, Object?> encode() => {'order': order.terraformValue};
}

/// Array-contains dimension for a field. Firestore only supports
/// `'CONTAINS'` as the array config today, so no parameter is exposed.
@immutable
final class FirestoreIndexFieldArrayConfig extends FirestoreIndexFieldSpec {
  const FirestoreIndexFieldArrayConfig();

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
final class FirestoreIndexFieldSearchConfig extends FirestoreIndexFieldSpec {
  const FirestoreIndexFieldSearchConfig({this.textSpec});

  /// Per-text-field index configuration (token vs. n-gram vs. substring;
  /// exact vs. prefix matching). When null, an empty `text_spec` is
  /// emitted, which Firestore treats as "use defaults".
  final FirestoreIndexFieldTextSpec? textSpec;

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
/// [FirestoreIndexFieldTextSpecEntry] entries (one per index_spec the user wants
/// to configure -- e.g. one for substring matching, one for prefix
/// matching of the same field).
@immutable
class FirestoreIndexFieldTextSpec {
  const FirestoreIndexFieldTextSpec({required this.indexSpecs})
    : assert(
        indexSpecs.length >= 1,
        'FirestoreIndexFieldTextSpec.indexSpecs must have at least one entry '
        '(schema enforces min_items=1)',
      );

  /// At least one per the schema's `min_items=1`.
  final List<FirestoreIndexFieldTextSpecEntry> indexSpecs;

  Map<String, Object?> encode() => {
    'index_specs': indexSpecs.map((e) => e.encode()).toList(),
  };
}

/// One entry in `text_spec.index_specs`. Both fields are
/// schema-optional; combinations are documented in
/// https://firebase.google.com/docs/firestore/text-search.
@immutable
class FirestoreIndexFieldTextSpecEntry {
  const FirestoreIndexFieldTextSpecEntry({this.indexType, this.matchType});

  /// Index strategy (`TOKEN`, `NGRAM`, etc.). Forward the literal
  /// string -- the schema does not expose a typed enum here.
  final TfArg<String>? indexType;

  /// Match strategy (`EXACT`, `PREFIX`). Forward the literal string.
  final TfArg<String>? matchType;

  Map<String, Object?> encode() => {
    if (indexType != null) 'index_type': indexType!.toTfJson(),
    if (matchType != null) 'match_type': matchType!.toTfJson(),
  };
}

/// Vector-search dimension for a field. The schema requires
/// [dimension] plus a marker `flat` sub-block; the wrapper emits both.
@immutable
final class FirestoreIndexFieldVectorConfig extends FirestoreIndexFieldSpec {
  const FirestoreIndexFieldVectorConfig({required this.dimension});

  /// Vector dimensionality. The index only matches queries of the same
  /// dimension.
  final TfArg<int> dimension;

  @override
  Map<String, Object?> encode() => {
    'vector_config': [
      {
        'dimension': dimension.toTfJson(),
        'flat': [<String, Object?>{}],
      },
    ],
  };
}

/// Factory wrapper for `google_firestore_index`.
///
/// Cloud Firestore indexes enable simple and complex queries against documents
/// in a database. Firestore Native, Firestore with MongoDB compatibility and
/// Datastore Mode indexes are all supported. In Enterprise edition databases,
/// this resource manages both single field and composite indexes. In Standard
/// edition databases, single field indexes are managed using the
/// `google_firestore_field` resource instead.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_firestore_index.`).
/// - `collection`: collection group ID being indexed (e.g. `'messages'`).
///   Indexes are scoped to a collection group, not a specific collection
///   path -- the same index covers every collection with this ID across
///   the database.
/// - `fields`: at least one [FirestoreIndexField]. The Firestore service ALSO
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
///     FirestoreIndexField(
///       fieldPath: TfArg.literal('user_id'),
///       spec: .order(.ascending),
///     ),
///     FirestoreIndexField(
///       fieldPath: TfArg.literal('created_at'),
///       spec: .order(.descending),
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
///     FirestoreIndexField(
///       fieldPath: TfArg.literal('tags'),
///       spec: .arrayConfig(),
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
  static const String tfType = 'google_firestore_index';

  GoogleFirestoreIndex({
    required super.localName,
    required TfArg<String> collection,
    required List<FirestoreIndexField> fields,
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'collection': collection,
           'fields': TfArg.literal(fields.map((f) => f.encode()).toList()),
           'database': ?database,
           'query_scope': ?queryScope,
           'api_scope': ?apiScope,
           'density': ?density,
           'multikey': ?multikey,
           'unique': ?unique,
           'deletion_policy': ?deletionPolicy,
           'skip_wait': ?skipWait,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirestoreIndexSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFirestoreIndex>`.
  RefTo<GoogleFirestoreIndex> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_scope` attribute.
  TfRef<String> get apiScopeRef => TfRef.attribute<String>(this, 'api_scope');

  /// Reference to `collection` attribute.
  TfRef<String> get collectionRef =>
      TfRef.attribute<String>(this, 'collection');

  /// Reference to `database` attribute.
  TfRef<String> get databaseRef => TfRef.attribute<String>(this, 'database');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `density` attribute.
  TfRef<String> get densityRef => TfRef.attribute<String>(this, 'density');

  /// Reference to `multikey` attribute.
  TfRef<bool> get multikeyRef => TfRef.attribute<bool>(this, 'multikey');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `query_scope` attribute.
  TfRef<String> get queryScopeRef =>
      TfRef.attribute<String>(this, 'query_scope');

  /// Reference to `skip_wait` attribute.
  TfRef<bool> get skipWaitRef => TfRef.attribute<bool>(this, 'skip_wait');

  /// Reference to `unique` attribute.
  TfRef<bool> get uniqueRef => TfRef.attribute<bool>(this, 'unique');
}
