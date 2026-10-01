// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;
import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_storage_bucket_object`.
const Set<String> _googleStorageBucketObjectSensitive = <String>{
  'content',
  'customer_encryption.encryption_key',
};

// ===========================================================================
// StorageBucketObjectBody — sealed (Source | Content)
// ===========================================================================

/// Object payload for `google_storage_bucket_object`. Sealed to make the
/// `source` / `content` `exactly_one_of` constraint exhaustive at the
/// type level.
///
/// Pick exactly one subclass:
/// - [StorageBucketObjectBodySource] — upload from a filesystem path
///   (Terraform reads the file at apply time).
/// - [StorageBucketObjectBodyContent] — inline string payload (note: marked
///   `Sensitive` by the provider — the value lands in Terraform state).
sealed class StorageBucketObjectBody {
  const StorageBucketObjectBody();

  /// Upload from a local filesystem path.
  const factory StorageBucketObjectBody.source({
    required TfArg<String> source,
  }) = StorageBucketObjectBodySource;

  /// Inline string payload.
  const factory StorageBucketObjectBody.content({
    required TfArg<String> content,
  }) = StorageBucketObjectBodyContent;

  /// argMap key under which this payload is emitted (`'source'` or
  /// `'content'`).
  String get blockKey;

  /// The scalar value that will be written to the argMap under
  /// [blockKey]. Always a `TfArg<String>` (source is a file path,
  /// content is the inline string).
  TfArg<String> get value;

  /// Wire-format encoding (`{blockKey: value.toTfJson()}`). The parent
  /// factory uses the `blockKey` + `value` pair directly in its argMap
  /// (relying on the synth layer to unwrap the [TfArg]); this method
  /// exists for parity with other sealed-class encoders (e.g.
  /// [StorageBucketObjectRetention.toArgMap], `AppHostingBuildSource.encode`)
  /// and is exercised by the Gate 6 encode round-trip test.
  Map<String, Object?> encode() => {blockKey: value.toTfJson()};
}

/// Upload from a local filesystem path. Terraform reads the file at
/// apply time and uploads it to GCS.
///
/// `source` is `ForceNew`: changing the path replaces the object.
@immutable
final class StorageBucketObjectBodySource extends StorageBucketObjectBody {
  const StorageBucketObjectBodySource({required this.source});

  /// Filesystem path to the data. Usually `TfArg.literal('./path/to/file')`.
  final TfArg<String> source;

  @override
  String get blockKey => 'source';

  @override
  TfArg<String> get value => source;
}

/// Inline string payload. The provider marks `content` as `Sensitive`,
/// so the value is redacted in `terraform plan` output but still ends
/// up in Terraform state — prefer [StorageBucketObjectBodySource] for any
/// non-trivial data.
@immutable
final class StorageBucketObjectBodyContent extends StorageBucketObjectBody {
  const StorageBucketObjectBodyContent({required this.content});

  /// The inline data to upload.
  final TfArg<String> content;

  @override
  String get blockKey => 'content';

  @override
  TfArg<String> get value => content;
}

// ===========================================================================
// Enums
// ===========================================================================

/// Storage class for `google_storage_bucket_object.storage_class`.
///
/// Mirrors `google_storage_bucket`'s `BucketStorageClass` 1:1 (the GCS
/// API accepts the same values) but defined as a separate Dart type to
/// avoid cross-resource coupling per established Wave 0/1 convention.
///
/// `durableReducedAvailability` is the legacy class (deprecated 2018);
/// keep for completeness, GCP still accepts it for existing objects.
enum BucketObjectStorageClass implements TerraformEnum {
  standard('STANDARD'),
  nearline('NEARLINE'),
  coldline('COLDLINE'),
  archive('ARCHIVE'),
  multiRegional('MULTI_REGIONAL'),
  regional('REGIONAL'),
  durableReducedAvailability('DURABLE_REDUCED_AVAILABILITY');

  const BucketObjectStorageClass(this.terraformValue);
  @override
  final String terraformValue;
}

// ===========================================================================
// Nested-block helpers
// ===========================================================================

/// Customer-supplied encryption (CSEK) for `customer_encryption`.
///
/// `encryptionKey` must be a base64-encoded 32-byte AES-256 key. The
/// provider's ValidateFunc rejects non-base64 input.
@immutable
class StorageBucketObjectCustomerEncryption {
  const StorageBucketObjectCustomerEncryption({
    required this.encryptionKey,
    this.encryptionAlgorithm,
  });

  /// Base64-encoded customer-supplied AES-256 key.
  final TfArg<String> encryptionKey;

  /// Encryption algorithm. Defaults to `AES256` server-side; usually
  /// omitted.
  final TfArg<String>? encryptionAlgorithm;

  Map<String, Object?> toArgMap() => {
    'encryption_key': encryptionKey.toTfJson(),
    if (encryptionAlgorithm != null)
      'encryption_algorithm': encryptionAlgorithm!.toTfJson(),
  };
}

/// Object-level retention policy (`retention` block).
///
/// Conflicts with `eventBasedHold` at the provider level — the schema
/// rejects both being set.
@immutable
class StorageBucketObjectRetention {
  const StorageBucketObjectRetention({
    required this.mode,
    required this.retainUntilTime,
  });

  /// Retention mode. Supported values: `'Unlocked'`, `'Locked'`.
  final TfArg<String> mode;

  /// RFC 3339 timestamp until which the object is retained.
  final TfArg<String> retainUntilTime;

  Map<String, Object?> toArgMap() => {
    'mode': mode.toTfJson(),
    'retain_until_time': retainUntilTime.toTfJson(),
  };
}

/// Typed helper for the `contexts` block of
/// `google_storage_bucket_object` (derived from provider schema).
@immutable
final class StorageBucketObjectContexts {
  const StorageBucketObjectContexts({required this.custom});

  final List<StorageBucketObjectCustom> custom;

  Map<String, Object?> encode() => {
    'custom': [for (final e in custom) e.encode()],
  };
}

/// Typed helper for the `contexts.custom` block of
/// `google_storage_bucket_object` (derived from provider schema).
@immutable
final class StorageBucketObjectCustom {
  const StorageBucketObjectCustom({required this.key, required this.value});

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `google_storage_bucket_object`.
///
/// Pass `bucket.ref` for `bucket`; it emits the bucket name the API wants.
///
/// `body`: object payload — choose exactly one of:
/// - [StorageBucketObjectBodySource] — upload from a local file path.
/// - [StorageBucketObjectBodyContent] — inline string payload.
/// The sealed [StorageBucketObjectBody] type makes the `source` / `content`
/// `exactly_one_of` constraint exhaustive at the type level.
///
/// Example (inline content):
/// ```dart
/// final assets = GoogleStorageBucket(
///   localName: 'assets',
///   name: TfArg.literal('my-app-assets-prod'),
///   location: TfArg.literal('ASIA-NORTHEAST1'),
/// );
/// final config = GoogleStorageBucketObject(
///   localName: 'config',
///   bucket: assets.ref,
///   name: TfArg.literal('config/app.json'),
///   body: StorageBucketObjectBodyContent(
///     content: TfArg.literal('{"feature_x": true}'),
///   ),
///   contentType: TfArg.literal('application/json'),
///   storageClass: TfArg.literal(BucketObjectStorageClass.standard),
/// );
/// ```
///
/// Example (file upload):
/// ```dart
/// final logo = GoogleStorageBucketObject(
///   localName: 'logo',
///   bucket: assets.ref,
///   name: TfArg.literal('static/logo.png'),
///   body: StorageBucketObjectBodySource(source: TfArg.literal('./assets/logo.png')),
///   contentType: TfArg.literal('image/png'),
/// );
/// ```
final class GoogleStorageBucketObject extends Resource {
  static const String tfType = 'google_storage_bucket_object';

  GoogleStorageBucketObject({
    required super.localName,
    required RefTo<GoogleStorageBucket> bucket,
    required TfArg<String> name,
    required StorageBucketObjectBody body,
    TfArg<String>? contentType,
    TfArg<String>? cacheControl,
    TfArg<String>? contentDisposition,
    TfArg<String>? contentEncoding,
    TfArg<String>? contentLanguage,
    TfArg<BucketObjectStorageClass>? storageClass,
    RefTo<GoogleKmsCryptoKey>? kmsKeyName,
    TfArg<Map<String, String>>? metadata,
    TfArg<bool>? eventBasedHold,
    TfArg<bool>? temporaryHold,
    TfArg<bool>? forceEmptyContentType,
    TfArg<String>? detectMd5hash,
    TfArg<String>? sourceMd5hash,
    StorageBucketObjectContexts? contexts,
    TfArg<String>? deletionPolicy,
    StorageBucketObjectCustomerEncryption? customerEncryption,
    StorageBucketObjectRetention? retention,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket.encodeAs('name'),
           'name': name,
           'content_type': ?contentType,
           'cache_control': ?cacheControl,
           'content_disposition': ?contentDisposition,
           'content_encoding': ?contentEncoding,
           'content_language': ?contentLanguage,
           'storage_class': ?storageClass,
           'kms_key_name': ?kmsKeyName?.encodeAs('id'),
           'metadata': ?metadata,
           'event_based_hold': ?eventBasedHold,
           'temporary_hold': ?temporaryHold,
           'force_empty_content_type': ?forceEmptyContentType,
           'detect_md5hash': ?detectMd5hash,
           'source_md5hash': ?sourceMd5hash,
           if (contexts != null) 'contexts': TfArg.literal(contexts.encode()),
           'deletion_policy': ?deletionPolicy,
           if (customerEncryption != null)
             'customer_encryption': TfArg.literal([
               customerEncryption.toArgMap(),
             ]),
           if (retention != null)
             'retention': TfArg.literal([retention.toArgMap()]),
           body.blockKey: body.value,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageBucketObjectSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleStorageBucketObject>`.
  RefTo<GoogleStorageBucketObject> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `crc32c` attribute.
  TfRef<String> get crc32c => TfRef.attribute<String>(this, 'crc32c');

  /// Reference to `generation` attribute.
  TfRef<num> get generation => TfRef.attribute<num>(this, 'generation');

  /// Reference to `md5hash` attribute.
  TfRef<String> get md5hash => TfRef.attribute<String>(this, 'md5hash');

  /// Reference to `md5hexhash` attribute.
  TfRef<String> get md5hexhash => TfRef.attribute<String>(this, 'md5hexhash');

  /// Reference to `media_link` attribute.
  TfRef<String> get mediaLink => TfRef.attribute<String>(this, 'media_link');

  /// Reference to `output_name` attribute.
  TfRef<String> get outputName => TfRef.attribute<String>(this, 'output_name');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `cache_control` attribute.
  TfRef<String> get cacheControl =>
      TfRef.attribute<String>(this, 'cache_control');

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

  /// Reference to `content_disposition` attribute.
  TfRef<String> get contentDisposition =>
      TfRef.attribute<String>(this, 'content_disposition');

  /// Reference to `content_encoding` attribute.
  TfRef<String> get contentEncoding =>
      TfRef.attribute<String>(this, 'content_encoding');

  /// Reference to `content_language` attribute.
  TfRef<String> get contentLanguage =>
      TfRef.attribute<String>(this, 'content_language');

  /// Reference to `content_type` attribute.
  TfRef<String> get contentType =>
      TfRef.attribute<String>(this, 'content_type');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `detect_md5hash` attribute.
  TfRef<String> get detectMd5hash =>
      TfRef.attribute<String>(this, 'detect_md5hash');

  /// Reference to `event_based_hold` attribute.
  TfRef<bool> get eventBasedHold =>
      TfRef.attribute<bool>(this, 'event_based_hold');

  /// Reference to `force_empty_content_type` attribute.
  TfRef<bool> get forceEmptyContentType =>
      TfRef.attribute<bool>(this, 'force_empty_content_type');

  /// Reference to `kms_key_name` attribute.
  TfRef<String> get kmsKeyName => TfRef.attribute<String>(this, 'kms_key_name');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `source_md5hash` attribute.
  TfRef<String> get sourceMd5hash =>
      TfRef.attribute<String>(this, 'source_md5hash');

  /// Reference to `storage_class` attribute.
  TfRef<String> get storageClass =>
      TfRef.attribute<String>(this, 'storage_class');

  /// Reference to `temporary_hold` attribute.
  TfRef<bool> get temporaryHold =>
      TfRef.attribute<bool>(this, 'temporary_hold');
}
