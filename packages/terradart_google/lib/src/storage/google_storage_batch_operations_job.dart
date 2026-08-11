// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_batch_operations_job`.
const Set<String> _googleStorageBatchOperationsJobSensitive = <String>{};

// ===========================================================================
// bucket_list helpers
// ===========================================================================

/// `prefix_list` — include objects by prefix under the target bucket.
@immutable
final class StorageBatchOperationsJobPrefixList {
  const StorageBatchOperationsJobPrefixList({
    required this.includedObjectPrefixes,
  });

  final TfArg<List<String>> includedObjectPrefixes;

  Map<String, Object?> encode() => {
    'included_object_prefixes': includedObjectPrefixes.toTfJson(),
  };
}

/// `manifest` — include objects listed in a manifest object.
@immutable
final class StorageBatchOperationsJobManifest {
  const StorageBatchOperationsJobManifest({required this.manifestLocation});

  final TfArg<String> manifestLocation;

  Map<String, Object?> encode() => {
    'manifest_location': manifestLocation.toTfJson(),
  };
}

/// One bucket (+ object selector) inside [StorageBatchOperationsJobBucketList].
@immutable
final class StorageBatchOperationsJobBuckets {
  const StorageBatchOperationsJobBuckets({
    required this.bucket,
    this.prefixList,
    this.manifest,
  });

  final TfArg<String> bucket;
  final StorageBatchOperationsJobPrefixList? prefixList;
  final StorageBatchOperationsJobManifest? manifest;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    if (prefixList != null) 'prefix_list': [prefixList!.encode()],
    if (manifest != null) 'manifest': [manifest!.encode()],
  };
}

/// `bucket_list` — currently one bucket configuration (provider max 1).
@immutable
final class StorageBatchOperationsJobBucketList {
  const StorageBatchOperationsJobBucketList({required this.buckets});

  final List<StorageBatchOperationsJobBuckets> buckets;

  List<Map<String, Object?>> encode() => [
    {
      'buckets': [for (final b in buckets) b.encode()],
    },
  ];
}

// ===========================================================================
// StorageBatchOperationsJobOperation — sealed action (exactly one)
// ===========================================================================

/// Batch action to run. Sealed so callers pick exactly one of
/// `put_metadata` / `put_object_hold` / `rewrite_object` / `delete_object`.
sealed class StorageBatchOperationsJobOperation {
  const StorageBatchOperationsJobOperation();

  /// argMap key for this action block.
  String get blockKey;

  /// JSON fragment for the block value (`nesting_mode: list, max_items: 1`).
  List<Map<String, Object?>> encode();
}

/// `put_metadata` — update object metadata fields / custom metadata.
@immutable
final class StorageBatchOperationsJobPutMetadata
    extends StorageBatchOperationsJobOperation {
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

  @override
  String get blockKey => 'put_metadata';

  @override
  List<Map<String, Object?>> encode() => [
    {
      if (cacheControl != null) 'cache_control': cacheControl!.toTfJson(),
      if (contentDisposition != null)
        'content_disposition': contentDisposition!.toTfJson(),
      if (contentEncoding != null)
        'content_encoding': contentEncoding!.toTfJson(),
      if (contentLanguage != null)
        'content_language': contentLanguage!.toTfJson(),
      if (contentType != null) 'content_type': contentType!.toTfJson(),
      if (customMetadata != null) 'custom_metadata': customMetadata!.toTfJson(),
      if (customTime != null) 'custom_time': customTime!.toTfJson(),
    },
  ];
}

/// `put_object_hold` — set temporary / event-based holds.
@immutable
final class StorageBatchOperationsJobPutObjectHold
    extends StorageBatchOperationsJobOperation {
  const StorageBatchOperationsJobPutObjectHold({
    this.eventBasedHold,
    this.temporaryHold,
  });

  final TfArg<String>? eventBasedHold;
  final TfArg<String>? temporaryHold;

  @override
  String get blockKey => 'put_object_hold';

  @override
  List<Map<String, Object?>> encode() => [
    {
      if (eventBasedHold != null)
        'event_based_hold': eventBasedHold!.toTfJson(),
      if (temporaryHold != null) 'temporary_hold': temporaryHold!.toTfJson(),
    },
  ];
}

/// `rewrite_object` — rewrite objects under a KMS key.
@immutable
final class StorageBatchOperationsJobRewriteObject
    extends StorageBatchOperationsJobOperation {
  const StorageBatchOperationsJobRewriteObject({required this.kmsKey});

  final TfArg<String> kmsKey;

  @override
  String get blockKey => 'rewrite_object';

  @override
  List<Map<String, Object?>> encode() => [
    {'kms_key': kmsKey.toTfJson()},
  ];
}

/// `delete_object` — delete matching objects (optionally all versions).
@immutable
final class StorageBatchOperationsJobDeleteObject
    extends StorageBatchOperationsJobOperation {
  const StorageBatchOperationsJobDeleteObject({
    required this.permanentObjectDeletionEnabled,
  });

  final TfArg<bool> permanentObjectDeletionEnabled;

  @override
  String get blockKey => 'delete_object';

  @override
  List<Map<String, Object?>> encode() => [
    {
      'permanent_object_deletion_enabled': permanentObjectDeletionEnabled
          .toTfJson(),
    },
  ];
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
///   jobId: TfArg.literal('stamp-meta'),
///   deleteProtection: TfArg.literal(false),
///   bucketList: StorageBatchOperationsJobBucketList(
///     buckets: [
///       StorageBatchOperationsJobBuckets(
///         bucket: TfArg.ref(assets.nameRef),
///         prefixList: StorageBatchOperationsJobPrefixList(
///           includedObjectPrefixes: TfArg.literal(['config/']),
///         ),
///       ),
///     ],
///   ),
///   operation: StorageBatchOperationsJobPutMetadata(
///     customMetadata: TfArg.literal({'managed-by': 'terradart'}),
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
  }) : super(
         terraformType: tfType,
         argMap: {
           if (jobId != null) 'job_id': jobId,
           'bucket_list': TfArg.literal(bucketList.encode()),
           if (description != null) 'description': description,
           if (deleteProtection != null) 'delete_protection': deleteProtection,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
           operation.blockKey: TfArg.literal(operation.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageBatchOperationsJobSensitive;

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
}
