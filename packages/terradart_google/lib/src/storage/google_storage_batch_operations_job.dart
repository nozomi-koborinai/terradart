// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;
import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_storage_batch_operations_job`.
const Set<String> _googleStorageBatchOperationsJobSensitive = <String>{};

/// Exactly one of `delete_object`, `put_metadata`, `rewrite_object`, `put_object_hold` on `google_storage_batch_operations_job`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.deleteObject(...)`.
sealed class StorageBatchOperationsJobOperation {
  const StorageBatchOperationsJobOperation();

  /// Sets `delete_object`.
  const factory StorageBatchOperationsJobOperation.deleteObject(
    StorageBatchOperationsJobDeleteObject deleteObject,
  ) = StorageBatchOperationsJobOperationDeleteObject;

  /// Sets `put_metadata`.
  const factory StorageBatchOperationsJobOperation.putMetadata(
    StorageBatchOperationsJobPutMetadata putMetadata,
  ) = StorageBatchOperationsJobOperationPutMetadata;

  /// Sets `rewrite_object`.
  const factory StorageBatchOperationsJobOperation.rewriteObject(
    StorageBatchOperationsJobRewriteObject rewriteObject,
  ) = StorageBatchOperationsJobOperationRewriteObject;

  /// Sets `put_object_hold`.
  const factory StorageBatchOperationsJobOperation.putObjectHold(
    StorageBatchOperationsJobPutObjectHold putObjectHold,
  ) = StorageBatchOperationsJobOperationPutObjectHold;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [StorageBatchOperationsJobOperation.deleteObject] choice: sets `delete_object`.
final class StorageBatchOperationsJobOperationDeleteObject
    extends StorageBatchOperationsJobOperation {
  const StorageBatchOperationsJobOperationDeleteObject(this.deleteObject);

  final StorageBatchOperationsJobDeleteObject deleteObject;

  @override
  String get blockKey => 'delete_object';

  @override
  Map<String, Object?> encode() => {'delete_object': deleteObject.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'delete_object': TfArg.literal(deleteObject.encode()),
  };
}

/// The [StorageBatchOperationsJobOperation.putMetadata] choice: sets `put_metadata`.
final class StorageBatchOperationsJobOperationPutMetadata
    extends StorageBatchOperationsJobOperation {
  const StorageBatchOperationsJobOperationPutMetadata(this.putMetadata);

  final StorageBatchOperationsJobPutMetadata putMetadata;

  @override
  String get blockKey => 'put_metadata';

  @override
  Map<String, Object?> encode() => {'put_metadata': putMetadata.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'put_metadata': TfArg.literal(putMetadata.encode()),
  };
}

/// The [StorageBatchOperationsJobOperation.rewriteObject] choice: sets `rewrite_object`.
final class StorageBatchOperationsJobOperationRewriteObject
    extends StorageBatchOperationsJobOperation {
  const StorageBatchOperationsJobOperationRewriteObject(this.rewriteObject);

  final StorageBatchOperationsJobRewriteObject rewriteObject;

  @override
  String get blockKey => 'rewrite_object';

  @override
  Map<String, Object?> encode() => {'rewrite_object': rewriteObject.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'rewrite_object': TfArg.literal(rewriteObject.encode()),
  };
}

/// The [StorageBatchOperationsJobOperation.putObjectHold] choice: sets `put_object_hold`.
final class StorageBatchOperationsJobOperationPutObjectHold
    extends StorageBatchOperationsJobOperation {
  const StorageBatchOperationsJobOperationPutObjectHold(this.putObjectHold);

  final StorageBatchOperationsJobPutObjectHold putObjectHold;

  @override
  String get blockKey => 'put_object_hold';

  @override
  Map<String, Object?> encode() => {'put_object_hold': putObjectHold.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'put_object_hold': TfArg.literal(putObjectHold.encode()),
  };
}

/// Typed helper for the `bucket_list` block of
/// `google_storage_batch_operations_job` (derived from provider schema).
@immutable
final class StorageBatchOperationsJobBucketList {
  const StorageBatchOperationsJobBucketList({required this.buckets});

  final StorageBatchOperationsJobBuckets buckets;

  Map<String, Object?> encode() => {'buckets': buckets.encode()};
}

/// Typed helper for the `bucket_list.buckets` block of
/// `google_storage_batch_operations_job` (derived from provider schema).
@immutable
final class StorageBatchOperationsJobBuckets {
  const StorageBatchOperationsJobBuckets({
    required this.bucket,
    required this.objects,
  });

  final RefTo<GoogleStorageBucket> bucket;

  final StorageBatchOperationsJobObjects objects;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('name').toTfJson(),
    ...objects.encode(),
  };
}

/// Exactly one of `prefix_list`, `manifest` on the `bucket_list.buckets` block of `google_storage_batch_operations_job`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.prefixList(...)`.
sealed class StorageBatchOperationsJobObjects {
  const StorageBatchOperationsJobObjects();

  /// Sets `prefix_list`.
  const factory StorageBatchOperationsJobObjects.prefixList(
    StorageBatchOperationsJobPrefixList prefixList,
  ) = StorageBatchOperationsJobObjectsPrefixList;

  /// Sets `manifest`.
  const factory StorageBatchOperationsJobObjects.manifest(
    StorageBatchOperationsJobManifest manifest,
  ) = StorageBatchOperationsJobObjectsManifest;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [StorageBatchOperationsJobObjects.prefixList] choice: sets `prefix_list`.
final class StorageBatchOperationsJobObjectsPrefixList
    extends StorageBatchOperationsJobObjects {
  const StorageBatchOperationsJobObjectsPrefixList(this.prefixList);

  final StorageBatchOperationsJobPrefixList prefixList;

  @override
  String get blockKey => 'prefix_list';

  @override
  Map<String, Object?> encode() => {'prefix_list': prefixList.encode()};
}

/// The [StorageBatchOperationsJobObjects.manifest] choice: sets `manifest`.
final class StorageBatchOperationsJobObjectsManifest
    extends StorageBatchOperationsJobObjects {
  const StorageBatchOperationsJobObjectsManifest(this.manifest);

  final StorageBatchOperationsJobManifest manifest;

  @override
  String get blockKey => 'manifest';

  @override
  Map<String, Object?> encode() => {'manifest': manifest.encode()};
}

/// Typed helper for the `bucket_list.buckets.manifest` block of
/// `google_storage_batch_operations_job` (derived from provider schema).
@immutable
final class StorageBatchOperationsJobManifest {
  const StorageBatchOperationsJobManifest({this.manifestLocation});

  final TfArg<String>? manifestLocation;

  Map<String, Object?> encode() => {
    'manifest_location': ?manifestLocation?.toTfJson(),
  };
}

/// Typed helper for the `bucket_list.buckets.prefix_list` block of
/// `google_storage_batch_operations_job` (derived from provider schema).
@immutable
final class StorageBatchOperationsJobPrefixList {
  const StorageBatchOperationsJobPrefixList({this.includedObjectPrefixes});

  final TfArg<List<String>>? includedObjectPrefixes;

  Map<String, Object?> encode() => {
    'included_object_prefixes': ?includedObjectPrefixes?.toTfJson(),
  };
}

/// Typed helper for the `delete_object` block of
/// `google_storage_batch_operations_job` (derived from provider schema).
@immutable
final class StorageBatchOperationsJobDeleteObject {
  const StorageBatchOperationsJobDeleteObject({
    required this.permanentObjectDeletionEnabled,
  });

  final TfArg<bool> permanentObjectDeletionEnabled;

  Map<String, Object?> encode() => {
    'permanent_object_deletion_enabled': permanentObjectDeletionEnabled
        .toTfJson(),
  };
}

/// Typed helper for the `put_metadata` block of
/// `google_storage_batch_operations_job` (derived from provider schema).
@immutable
final class StorageBatchOperationsJobPutMetadata {
  const StorageBatchOperationsJobPutMetadata({
    this.cacheControl,
    this.contentDisposition,
    this.contentEncoding,
    this.contentLanguage,
    this.contentType,
    this.customMetadata,
    this.customTime,
  });

  final TfArg<String>? cacheControl;

  final TfArg<String>? contentDisposition;

  final TfArg<String>? contentEncoding;

  final TfArg<String>? contentLanguage;

  final TfArg<String>? contentType;

  final TfArg<Map<String, String>>? customMetadata;

  final TfArg<String>? customTime;

  Map<String, Object?> encode() => {
    'cache_control': ?cacheControl?.toTfJson(),
    'content_disposition': ?contentDisposition?.toTfJson(),
    'content_encoding': ?contentEncoding?.toTfJson(),
    'content_language': ?contentLanguage?.toTfJson(),
    'content_type': ?contentType?.toTfJson(),
    'custom_metadata': ?customMetadata?.toTfJson(),
    'custom_time': ?customTime?.toTfJson(),
  };
}

/// Typed helper for the `put_object_hold` block of
/// `google_storage_batch_operations_job` (derived from provider schema).
@immutable
final class StorageBatchOperationsJobPutObjectHold {
  const StorageBatchOperationsJobPutObjectHold({
    this.eventBasedHold,
    this.temporaryHold,
  });

  final TfArg<String>? eventBasedHold;

  final TfArg<String>? temporaryHold;

  Map<String, Object?> encode() => {
    'event_based_hold': ?eventBasedHold?.toTfJson(),
    'temporary_hold': ?temporaryHold?.toTfJson(),
  };
}

/// Typed helper for the `rewrite_object` block of
/// `google_storage_batch_operations_job` (derived from provider schema).
@immutable
final class StorageBatchOperationsJobRewriteObject {
  const StorageBatchOperationsJobRewriteObject({required this.kmsKey});

  final RefTo<GoogleKmsCryptoKey> kmsKey;

  Map<String, Object?> encode() => {
    'kms_key': kmsKey.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `google_storage_batch_operations_job`.
///
/// Storage Batch Operations (SBO) is a Cloud Storage management feature that
/// offers a seamless experience to perform single batch operations on millions
/// of GCS objects in a serverless manner.
///
/// Storage Batch Operations **job** — one serverless batch transform over
/// objects in a bucket (metadata update, hold, rewrite/KMS, or delete).
/// Provide exactly one [operation] variant.
///
/// Jobs are create-once configuration; set [deleteProtection] to `false` in
/// smoke stacks so Terraform can destroy the job record. Enable
/// `storagebatchoperations.googleapis.com` before apply.
///
/// Example (stamp custom metadata on a prefix):
/// ```dart
/// GoogleStorageBatchOperationsJob(
///   localName: 'stamp_meta',
///   jobId: .literal('stamp-meta'),
///   deleteProtection: .literal(false),
///   bucketList: StorageBatchOperationsJobBucketList(
///     buckets: StorageBatchOperationsJobBuckets(
///       bucket: assets.ref,
///       objects: .prefixList(
///         StorageBatchOperationsJobPrefixList(
///           includedObjectPrefixes: .literal(['config/']),
///         ),
///       ),
///     ),
///   ),
///   operation: .putMetadata(
///     StorageBatchOperationsJobPutMetadata(
///       customMetadata: .literal({'managed-by': 'terradart'}),
///     ),
///   ),
/// );
/// ```
final class GoogleStorageBatchOperationsJob extends Resource {
  static const String tfType = 'google_storage_batch_operations_job';

  GoogleStorageBatchOperationsJob({
    required super.localName,
    TfArg<String>? jobId,
    required StorageBatchOperationsJobBucketList bucketList,
    required StorageBatchOperationsJobOperation operation,
    TfArg<String>? description,
    TfArg<bool>? deleteProtection,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'job_id': ?jobId,
           'bucket_list': TfArg.literal(bucketList.encode()),
           'description': ?description,
           'delete_protection': ?deleteProtection,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           ...operation.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageBatchOperationsJobSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleStorageBatchOperationsJob>`.
  RefTo<GoogleStorageBatchOperationsJob> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `complete_time` attribute.
  TfRef<String> get completeTime =>
      TfRef.attribute<String>(this, 'complete_time');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `schedule_time` attribute.
  TfRef<String> get scheduleTime =>
      TfRef.attribute<String>(this, 'schedule_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `delete_protection` attribute.
  TfRef<bool> get deleteProtectionRef =>
      TfRef.attribute<bool>(this, 'delete_protection');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `job_id` attribute.
  TfRef<String> get jobIdRef => TfRef.attribute<String>(this, 'job_id');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
