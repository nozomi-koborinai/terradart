// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_anywhere_cache`.
const Set<String> _googleStorageAnywhereCacheSensitive = <String>{};

/// Terraform `admission_policy` for [GoogleStorageAnywhereCache].
///
/// Values use hyphens on the wire (`admit-on-first-miss`); Dart names are
/// camelCase. Prefer [admitOnFirstMiss] — [admitOnSecondMiss] is deprecated
/// upstream and treated as first-miss by the backend.
enum StorageAnywhereCacheAdmissionPolicy implements TerraformEnum {
  admitOnFirstMiss('admit-on-first-miss'),
  admitOnSecondMiss('admit-on-second-miss');

  const StorageAnywhereCacheAdmissionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_storage_anywhere_cache`.
///
/// The Google Cloud Storage (GCS) Anywhere Cache feature allows users to create
/// SSD backed zonal read cache for their buckets. These zonal caches are
/// co-located with the customers compute engines to provide cost efficiency.
///
/// Cloud Storage **Anywhere Cache** (Rapid Cache) — a zonal SSD cache in
/// front of a bucket.
///
/// **Cost / apply:** gcp-cost: Cloud Storage `95FF-2EF5-5EA1` Rapid Cache
/// Storage Iowa (`us-central1`) SKU `A668-3CA8-42C8` **$0.0001233/GiBy.h**.
/// billing-behavior: cached bytes bill while the cache is enabled (plus
/// ingest/data-transfer while warm); create is slow and destroy is a
/// disable — too expensive / sticky for apply-smoke. **Never** wire into
/// apply-smoke.
///
/// MM marks [StorageAnywhereCacheAdmissionPolicy.admitOnSecondMiss]
/// deprecated; prefer [StorageAnywhereCacheAdmissionPolicy.admitOnFirstMiss]
/// (or omit).
final class GoogleStorageAnywhereCache extends Resource {
  static const String tfType = 'google_storage_anywhere_cache';

  GoogleStorageAnywhereCache({
    required super.localName,
    required TfArg<String> bucket,
    required TfArg<String> zone,
    TfArg<String>? ttl,
    @Deprecated(
      '`admit-on-second-miss` is deprecated and will be removed in a future major release. The backend will ignore this attribute and treat it as `admit-on-first-miss`.',
    )
    TfArg<StorageAnywhereCacheAdmissionPolicy>? admissionPolicy,
    TfArg<bool>? ingestOnWrite,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           'zone': zone,
           if (ttl != null) 'ttl': ttl,
           if (admissionPolicy != null) 'admission_policy': admissionPolicy,
           if (ingestOnWrite != null) 'ingest_on_write': ingestOnWrite,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageAnywhereCacheSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `anywhere_cache_id` attribute.
  TfRef<String> get anywhereCacheId =>
      TfRef.attribute<String>(this, 'anywhere_cache_id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `pending_update` attribute.
  TfRef<bool> get pendingUpdate =>
      TfRef.attribute<bool>(this, 'pending_update');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `anywhere_cache_id`.
  TfRef<String> get anywhereCacheIdRef =>
      TfRef.attribute<String>(this, 'anywhere_cache_id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
