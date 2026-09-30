// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firestore_field`.
const Set<String> _googleFirestoreFieldSensitive = <String>{};

// ===========================================================================
// Enums (sourced from schema "Possible values" prose)
// ===========================================================================

/// One [FirestoreFieldIndexConfigIndexes.order] direction. `ASCENDING` / `DESCENDING`.
enum FirestoreFieldOrder implements TerraformEnum {
  ascending('ASCENDING'),
  descending('DESCENDING');

  const FirestoreFieldOrder(this.terraformValue);
  @override
  final String terraformValue;
}

/// `query_scope` -- which queries can use this single-field index.
/// `collection` scopes the index to a single collection; `collectionGroup`
/// allows the index to serve collection-group queries.
enum FirestoreFieldQueryScope implements TerraformEnum {
  collection('COLLECTION'),
  collectionGroup('COLLECTION_GROUP');

  const FirestoreFieldQueryScope(this.terraformValue);
  @override
  final String terraformValue;
}

// ===========================================================================
// Nested-block helpers
// ===========================================================================

/// Typed helper for the `index_config` block of
/// `google_firestore_field` (derived from provider schema).
@immutable
final class FirestoreFieldIndexConfig {
  const FirestoreFieldIndexConfig({this.indexes});

  final List<FirestoreFieldIndexConfigIndexes>? indexes;

  Map<String, Object?> encode() => {
    if (indexes != null) 'indexes': [for (final e in indexes!) e.encode()],
  };
}

/// Typed helper for the `index_config.indexes` block of
/// `google_firestore_field` (derived from provider schema).
@immutable
final class FirestoreFieldIndexConfigIndexes {
  const FirestoreFieldIndexConfigIndexes({required this.mode, this.queryScope});

  final FirestoreFieldIndexConfigIndexesMode mode;

  final TfArg<FirestoreFieldQueryScope>? queryScope;

  Map<String, Object?> encode() => {
    ...mode.encode(),
    'query_scope': ?queryScope?.toTfJson(),
  };
}

/// Exactly one of `order`, `array_config` on the `index_config.indexes` block of `google_firestore_field`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.order(...)`.
sealed class FirestoreFieldIndexConfigIndexesMode {
  const FirestoreFieldIndexConfigIndexesMode();

  /// Sets `order`.
  const factory FirestoreFieldIndexConfigIndexesMode.order(
    TfArg<FirestoreFieldOrder> order,
  ) = FirestoreFieldIndexConfigIndexesModeOrder;

  /// Sets `array_config`.
  const factory FirestoreFieldIndexConfigIndexesMode.arrayConfig(
    TfArg<String> arrayConfig,
  ) = FirestoreFieldIndexConfigIndexesModeArrayConfig;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [FirestoreFieldIndexConfigIndexesMode.order] choice: sets `order`.
final class FirestoreFieldIndexConfigIndexesModeOrder
    extends FirestoreFieldIndexConfigIndexesMode {
  const FirestoreFieldIndexConfigIndexesModeOrder(this.order);

  final TfArg<FirestoreFieldOrder> order;

  @override
  String get blockKey => 'order';

  @override
  Map<String, Object?> encode() => {'order': order.toTfJson()};
}

/// The [FirestoreFieldIndexConfigIndexesMode.arrayConfig] choice: sets `array_config`.
final class FirestoreFieldIndexConfigIndexesModeArrayConfig
    extends FirestoreFieldIndexConfigIndexesMode {
  const FirestoreFieldIndexConfigIndexesModeArrayConfig(this.arrayConfig);

  final TfArg<String> arrayConfig;

  @override
  String get blockKey => 'array_config';

  @override
  Map<String, Object?> encode() => {'array_config': arrayConfig.toTfJson()};
}

/// Typed helper for the `ttl_config` block of
/// `google_firestore_field` (derived from provider schema).
@immutable
final class FirestoreFieldTtlConfig {
  const FirestoreFieldTtlConfig({this.expirationOffset});

  final TfArg<String>? expirationOffset;

  Map<String, Object?> encode() => {
    'expiration_offset': ?expirationOffset?.toTfJson(),
  };
}

/// Factory wrapper for `google_firestore_field`.
///
/// Represents a single field in the database. Fields are grouped by their
/// "Collection Group", which represent all collections in the database with the
/// same id.
///
/// In Standard edition databases, single field indexes are managed using the
/// `google_firestore_field` resource. In Enterprise edition databases, they are
/// managed using the `google_firestore_index` resource.
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
/// `FirestoreFieldIndexConfig(indexes: [])` **disables** all single-field indexes on
/// the field (overriding the database's automatic indexing); a non-empty
/// list adds explicit per-field indexes.
///
/// Use [ttlConfig] to mark this field as a TTL field -- Firestore will
/// delete documents whose timestamp value in this field has passed.
/// Pass `const FirestoreFieldTtlConfig()` to enable; omit (or pass null) to disable.
///
/// Example (enable TTL on `expires_at`):
/// ```dart
/// final ttl = GoogleFirestoreField(
///   localName: 'expires_at_ttl',
///   collection: TfArg.literal('sessions'),
///   field: TfArg.literal('expires_at'),
///   ttlConfig: const FirestoreFieldTtlConfig(),
/// );
/// ```
///
/// Example (disable single-field indexing on `large_blob`):
/// ```dart
/// final unindex = GoogleFirestoreField(
///   localName: 'large_blob_unindexed',
///   collection: TfArg.literal('messages'),
///   field: TfArg.literal('large_blob'),
///   indexConfig: const FirestoreFieldIndexConfig(indexes: []),
/// );
/// ```
final class GoogleFirestoreField extends Resource {
  static const String tfType = 'google_firestore_field';

  GoogleFirestoreField({
    required super.localName,
    required TfArg<String> collection,
    required TfArg<String> field,
    TfArg<String>? database,
    FirestoreFieldIndexConfig? indexConfig,
    FirestoreFieldTtlConfig? ttlConfig,
    TfArg<String>? project,
    TfArg<bool>? skipWait,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'collection': collection,
           'field': field,
           'database': ?database,
           if (indexConfig != null)
             'index_config': TfArg.literal(indexConfig.encode()),
           if (ttlConfig != null)
             'ttl_config': TfArg.literal(ttlConfig.encode()),
           'project': ?project,
           'skip_wait': ?skipWait,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirestoreFieldSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFirestoreField>`.
  RefTo<GoogleFirestoreField> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `collection` attribute.
  TfRef<String> get collectionRef =>
      TfRef.attribute<String>(this, 'collection');

  /// Reference to `database` attribute.
  TfRef<String> get databaseRef => TfRef.attribute<String>(this, 'database');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `field` attribute.
  TfRef<String> get fieldRef => TfRef.attribute<String>(this, 'field');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `skip_wait` attribute.
  TfRef<bool> get skipWaitRef => TfRef.attribute<bool>(this, 'skip_wait');
}
