// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/src/generated/google_storage_bucket_object.schema.dart'
    show $GoogleStorageBucketObject, googleStorageBucketObjectSensitive;

// Tiny const carrier for `Resource<S>.schema`. Inert in v0.0.x synth — only
// consumed by `ResourceRef<S>.placeholder` (a future surface). We
// keep this stub inline instead of constructing schemantic's generated
// concrete class (which requires JSON-backed field args). `noSuchMethod`
// satisfies the abstract field getters; they are never invoked in v0.0.x.
class _GoogleStorageBucketObjectSchemaInstance
    implements $GoogleStorageBucketObject {
  const _GoogleStorageBucketObjectSchemaInstance();

  @override
  // ignore: non_constant_identifier_names
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

// ===========================================================================
// BucketObjectContent — sealed (FromSource | FromContent)
// ===========================================================================

/// Object payload for `google_storage_bucket_object`. Sealed to make the
/// `source` / `content` `exactly_one_of` constraint exhaustive at the
/// type level.
///
/// Pick exactly one subclass:
/// - [BucketObjectFromSource] — upload from a filesystem path
///   (Terraform reads the file at apply time).
/// - [BucketObjectFromContent] — inline string payload (note: marked
///   `Sensitive` by the provider — the value lands in Terraform state).
sealed class BucketObjectContent {
  const BucketObjectContent();

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
  /// [BucketObjectRetention.toArgMap], `AppHostingBuildSource.encode`)
  /// and is exercised by the Gate 6 encode round-trip test.
  Map<String, Object?> encode() => {blockKey: value.toTfJson()};
}

/// Upload from a local filesystem path. Terraform reads the file at
/// apply time and uploads it to GCS.
///
/// `source` is `ForceNew`: changing the path replaces the object.
@immutable
final class BucketObjectFromSource extends BucketObjectContent {
  const BucketObjectFromSource({required this.source});

  /// Filesystem path to the data. Usually `TfArg.literal('./path/to/file')`.
  final TfArg<String> source;

  @override
  String get blockKey => 'source';

  @override
  TfArg<String> get value => source;
}

/// Inline string payload. The provider marks `content` as `Sensitive`,
/// so the value is redacted in `terraform plan` output but still ends
/// up in Terraform state — prefer [BucketObjectFromSource] for any
/// non-trivial data.
@immutable
final class BucketObjectFromContent extends BucketObjectContent {
  const BucketObjectFromContent({required this.content});

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
enum BucketObjectStorageClass {
  standard('STANDARD'),
  nearline('NEARLINE'),
  coldline('COLDLINE'),
  archive('ARCHIVE'),
  multiRegional('MULTI_REGIONAL'),
  regional('REGIONAL'),
  durableReducedAvailability('DURABLE_REDUCED_AVAILABILITY');

  const BucketObjectStorageClass(this.terraformValue);
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
class CustomerEncryption {
  const CustomerEncryption({
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
class BucketObjectRetention {
  const BucketObjectRetention({
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

/// Factory wrapper for `google_storage_bucket_object` (provider
/// `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_storage_bucket_object.`).
/// - `bucket`: name of the parent bucket — pass `TfArg.ref(bucket.nameRef)`
///   (NOT `bucket.id`; `id` is `{bucket-name}` for buckets but the API
///   here wants just the name).
/// - `name`: GCS object name (path within the bucket, e.g. `'config/app.json'`).
/// - `body`: object payload — choose exactly one of:
///   - [BucketObjectFromSource] — upload from a local file path.
///   - [BucketObjectFromContent] — inline string payload.
///   The sealed [BucketObjectContent] type makes the `source` / `content`
///   `exactly_one_of` constraint exhaustive at the type level.
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
///   bucket: TfArg.ref(assets.nameRef),
///   name: TfArg.literal('config/app.json'),
///   body: BucketObjectFromContent(
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
///   bucket: TfArg.ref(assets.nameRef),
///   name: TfArg.literal('static/logo.png'),
///   body: BucketObjectFromSource(source: TfArg.literal('./assets/logo.png')),
///   contentType: TfArg.literal('image/png'),
/// );
/// ```
final class GoogleStorageBucketObject
    extends Resource<$GoogleStorageBucketObject> {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_storage_bucket_object';

  GoogleStorageBucketObject({
    required super.localName,
    required TfArg<String> bucket,
    required TfArg<String> name,
    required BucketObjectContent body,
    TfArg<String>? contentType,
    TfArg<String>? cacheControl,
    TfArg<String>? contentDisposition,
    TfArg<String>? contentEncoding,
    TfArg<String>? contentLanguage,
    TfArg<BucketObjectStorageClass>? storageClass,
    TfArg<String>? kmsKeyName,
    TfArg<Map<String, String>>? metadata,
    TfArg<bool>? eventBasedHold,
    TfArg<bool>? temporaryHold,
    TfArg<bool>? forceEmptyContentType,
    TfArg<String>? detectMd5hash,
    TfArg<String>? sourceMd5hash,
    TfArg<String>? deletionPolicy,
    CustomerEncryption? customerEncryption,
    BucketObjectRetention? retention,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         schema: const _GoogleStorageBucketObjectSchemaInstance(),
         argMap: {
           'bucket': bucket,
           'name': name,
           if (contentType != null) 'content_type': contentType,
           if (cacheControl != null) 'cache_control': cacheControl,
           if (contentDisposition != null)
             'content_disposition': contentDisposition,
           if (contentEncoding != null) 'content_encoding': contentEncoding,
           if (contentLanguage != null) 'content_language': contentLanguage,
           if (storageClass != null) 'storage_class': storageClass,
           if (kmsKeyName != null) 'kms_key_name': kmsKeyName,
           if (metadata != null) 'metadata': metadata,
           if (eventBasedHold != null) 'event_based_hold': eventBasedHold,
           if (temporaryHold != null) 'temporary_hold': temporaryHold,
           if (forceEmptyContentType != null)
             'force_empty_content_type': forceEmptyContentType,
           if (detectMd5hash != null) 'detect_md5hash': detectMd5hash,
           if (sourceMd5hash != null) 'source_md5hash': sourceMd5hash,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
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
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => googleStorageBucketObjectSensitive;

  /// Reference to `id` attribute (composite `{bucket}-{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute (the object name within the bucket).
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `output_name` (computed; equals `name` post-apply,
  /// useful for downstream references that should wait for create).
  TfRef<String> get outputName => TfRef.attribute<String>(this, 'output_name');

  /// Reference to `self_link` (HTTPS API path for the object).
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `media_link` (HTTPS download URL).
  TfRef<String> get mediaLink => TfRef.attribute<String>(this, 'media_link');

  /// Reference to `generation` (server-side object generation number).
  TfRef<num> get generation => TfRef.attribute<num>(this, 'generation');

  /// Reference to `md5hash` (Base64-encoded MD5 of the object).
  TfRef<String> get md5hash => TfRef.attribute<String>(this, 'md5hash');

  /// Reference to `md5hexhash` (hex-encoded MD5 of the object).
  TfRef<String> get md5hexhash => TfRef.attribute<String>(this, 'md5hexhash');

  /// Reference to `crc32c` (Base64-encoded CRC32C of the object).
  TfRef<String> get crc32c => TfRef.attribute<String>(this, 'crc32c');
}
