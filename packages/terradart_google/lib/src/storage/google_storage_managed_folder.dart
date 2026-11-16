// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_storage_managed_folder`.
const Set<String> _googleStorageManagedFolderSensitive = <String>{};

/// Typed helper for the `rapid_cache_config` block of
/// `google_storage_managed_folder` (derived from provider schema).
@immutable
final class StorageManagedFolderRapidCacheConfig {
  const StorageManagedFolderRapidCacheConfig({required this.policies});

  final List<StorageManagedFolderPolicies> policies;

  @internal
  Map<String, Object?> encode() => {
    'policies': [for (final e in policies) e.encode()],
  };
}

/// Typed helper for the `rapid_cache_config.policies` block of
/// `google_storage_managed_folder` (derived from provider schema).
@immutable
final class StorageManagedFolderPolicies {
  const StorageManagedFolderPolicies({
    this.ingestOnWrite,
    required this.rapidCacheId,
  });

  final StorageManagedFolderIngestOnWrite? ingestOnWrite;

  final TfArg<String> rapidCacheId;

  @internal
  Map<String, Object?> encode() => {
    'ingest_on_write': ?ingestOnWrite?.toTfJson(),
    'rapid_cache_id': rapidCacheId.toTfJson(),
  };
}

/// `ingest_on_write` — derived from the provider schema description.
extension type const StorageManagedFolderIngestOnWrite._(TfArg<String> _)
    implements TfArg<String> {
  StorageManagedFolderIngestOnWrite.variable(String name)
    : this._(TfArg.variable(name));
  StorageManagedFolderIngestOnWrite.expression(String template)
    : this._(TfArg.expression(template));
  const StorageManagedFolderIngestOnWrite.arg(TfArg<String> arg) : this._(arg);

  static const enabled = StorageManagedFolderIngestOnWrite._(
    TfArgLiteral('enabled'),
  );
  static const unspecified = StorageManagedFolderIngestOnWrite._(
    TfArgLiteral('unspecified'),
  );

  static const List<StorageManagedFolderIngestOnWrite> values = [
    enabled,
    unspecified,
  ];
}

/// Factory wrapper for `google_storage_managed_folder`.
///
/// A Google Cloud Storage Managed Folder.
///
/// You can apply Identity and Access Management (IAM) policies to managed
/// folders to grant principals access only to the objects within the managed
/// folder, which lets you more finely control access for specific data sets and
/// tables within a bucket. You can nest managed folders up to 15 levels deep,
/// including the parent managed folder.
///
/// Managed folders can only be created in buckets that have uniform
/// bucket-level access enabled.
final class GoogleStorageManagedFolder extends Resource {
  static const String tfType = 'google_storage_managed_folder';

  GoogleStorageManagedFolder(
    super.localName, {
    required RefTo<GoogleStorageBucket> bucket,
    TfArg<bool>? forceDestroy,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket.encodeAs('name'),
           'force_destroy': ?forceDestroy,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageManagedFolderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleStorageManagedFolder>`.
  RefTo<GoogleStorageManagedFolder> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `metageneration` attribute.
  TfRef<String> get metageneration =>
      TfRef.attribute<String>(this, 'metageneration');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroy => TfRef.attribute<bool>(this, 'force_destroy');
}
