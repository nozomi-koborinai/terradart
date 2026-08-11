/// Storage quickstart -- Phase 4.5 Wave 1 end-to-end example.
///
/// Defines an `AssetsStack` that provisions:
/// - a GCS bucket (`my-app-assets-prod`),
/// - a versioning policy (typed `Versioning(enabled: true)`),
/// - 1 lifecycle rule (typed `LifecycleRule` + `LifecycleAction.setStorageClass`
///   to ARCHIVE after 365 days),
/// - 1 object uploaded inline (`config/app.json` via `BucketObjectFromContent`),
///
/// demonstrating the 13-helper-class prelude from `google_storage_bucket` and
/// the sealed `BucketObjectContent` pattern from `google_storage_bucket_object`.
///
/// Wave 5 Batch 3 adds a `roles/storage.objectViewer` binding on the
/// bucket for a dedicated reader SA -- the typical "read-only consumer"
/// pattern for a static-assets bucket.
///
/// Storage coverage wave adds hierarchical [GoogleStorageFolder], managed-
/// folder IAM, Storage Batch Operations (`put_metadata`), and a separate
/// fine-grained-ACL bucket (UBLA off) for access-control factories.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/pubsub.dart';
import 'package:terradart_google/storage.dart';

final class AssetsStack extends Stack {
  AssetsStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'asia-northeast1'),
          ],
        ) {
    final assets = GoogleStorageBucket(
      localName: 'assets',
      name: TfArg.literal('my-app-assets-prod'),
      location: TfArg.literal('ASIA-NORTHEAST1'),
      storageClass: TfArg.literal(BucketStorageClass.standard),
      forceDestroy: TfArg.literal(false),
      uniformBucketLevelAccess: TfArg.literal(true),
      hierarchicalNamespace:
          StorageBucketHierarchicalNamespace(enabled: TfArg.literal(true)),
      versioning: StorageBucketVersioning(enabled: TfArg.literal(true)),
      lifecycleRule: [
        StorageBucketLifecycleRule(
          action: StorageBucketLifecycleAction(
            type: LifecycleActionType.setStorageClass,
            storageClass: BucketStorageClass.archive,
          ),
          condition: StorageBucketLifecycleCondition(age: TfArg.literal(365)),
        ),
      ],
    );
    add(assets);

    add(
      GoogleStorageBucketObject(
        localName: 'config',
        bucket: TfArg.ref(assets.nameRef),
        name: TfArg.literal('config/app.json'),
        body: StorageBucketObjectBucketObjectFromSource(
          source: TfArg.literal('./config/app.json'),
        ),
        contentType: TfArg.literal('application/json'),
        storageClass: TfArg.literal(BucketObjectStorageClass.standard),
      ),
    );

    // ---- IAM: read-only consumer on the assets bucket ---------------------
    //
    // Wave 5 Batch 3. A workload SA that only needs to fetch objects from
    // the bucket -- e.g. a CDN edge cache warmer or a downstream service
    // pulling config -- gets `objectViewer` and nothing else.

    final reader = GoogleServiceAccount(
      localName: 'assets_reader',
      accountId: TfArg.literal('assets-reader'),
      displayName: TfArg.literal('Assets bucket read-only consumer'),
    );
    add(reader);

    add(
      GoogleStorageBucketIamMember(
        localName: 'assets_reader_binding',
        bucket: TfArg.ref(assets.nameRef),
        role: TfArg.literal('roles/storage.objectViewer'),
        member: TfArg.ref(reader.iamMember),
      ),
    );

    // Authoritative binding for bucket admins — replaces the full member list
    // for `roles/storage.objectAdmin` on this bucket (contrast with the
    // additive `*_iam_member` above).
    final assetsAdmin = GoogleServiceAccount(
      localName: 'assets_admin',
      accountId: TfArg.literal('assets-admin'),
      displayName: TfArg.literal('Assets bucket object admin'),
    );
    add(assetsAdmin);

    add(
      GoogleStorageBucketIamBinding(
        localName: 'assets_admin_binding',
        bucket: TfArg.ref(assets.nameRef),
        role: TfArg.literal('roles/storage.objectAdmin'),
        members: TfArg.literal([assetsAdmin.iamMember.interpolation]),
        dependsOn: [ResourceDependency(assetsAdmin)],
      ),
    );

    add(
      GoogleStorageHmacKey(
        localName: 'interop_hmac',
        serviceAccountEmail: TfArg.ref(reader.email),
        dependsOn: [ResourceDependency(reader)],
      ),
    );

    final managedFolder = add(
      GoogleStorageManagedFolder(
        localName: 'config_folder',
        bucket: TfArg.ref(assets.nameRef),
        name: TfArg.literal('config/'),
      ),
    );

    // Hierarchical Folders API (sibling of managed folders) under reports/.
    add(
      GoogleStorageFolder(
        localName: 'reports_folder',
        bucket: TfArg.ref(assets.nameRef),
        name: TfArg.literal('reports/'),
        forceDestroy: TfArg.literal(true),
      ),
    );

    add(
      GoogleStorageManagedFolderIamMember(
        localName: 'config_folder_viewer',
        bucket: TfArg.ref(assets.nameRef),
        managedFolder: TfArg.ref(managedFolder.nameRef),
        role: TfArg.literal('roles/storage.objectViewer'),
        member: TfArg.ref(reader.iamMember),
        dependsOn: [
          ResourceDependency(managedFolder),
          ResourceDependency(reader),
        ],
      ),
    );

    // Batch-stamp custom metadata on the config/ prefix (job is destroyable).
    add(
      GoogleStorageBatchOperationsJob(
        localName: 'stamp_config_meta',
        jobId: TfArg.literal('stamp-config-meta'),
        deleteProtection: TfArg.literal(false),
        bucketList: StorageBatchOperationsJobBucketList(
          buckets: [
            StorageBatchOperationsJobBuckets(
              bucket: TfArg.ref(assets.nameRef),
              prefixList: StorageBatchOperationsJobPrefixList(
                includedObjectPrefixes: TfArg.literal(['config/']),
              ),
            ),
          ],
        ),
        operation: StorageBatchOperationsJobPutMetadata(
          customMetadata: TfArg.literal({'managed-by': 'terradart'}),
        ),
        dependsOn: [ResourceDependency(assets)],
      ),
    );

    // ---- Fine-grained ACL surface (UBLA off; cannot share the HNS bucket) --

    final legacy = add(
      GoogleStorageBucket(
        localName: 'legacy_acl',
        name: TfArg.literal('my-app-legacy-acl'),
        location: TfArg.literal('ASIA-NORTHEAST1'),
        storageClass: TfArg.literal(BucketStorageClass.standard),
        forceDestroy: TfArg.literal(true),
        uniformBucketLevelAccess: TfArg.literal(false),
      ),
    );

    final legacyObject = add(
      GoogleStorageBucketObject(
        localName: 'legacy_readme',
        bucket: TfArg.ref(legacy.nameRef),
        name: TfArg.literal('readme.txt'),
        body: StorageBucketObjectBucketObjectFromContent(
          content: TfArg.literal('legacy acl smoke'),
        ),
        contentType: TfArg.literal('text/plain'),
        storageClass: TfArg.literal(BucketObjectStorageClass.standard),
        dependsOn: [ResourceDependency(legacy)],
      ),
    );

    add(
      GoogleStorageBucketAccessControl(
        localName: 'legacy_bucket_reader',
        bucket: TfArg.ref(legacy.nameRef),
        entity: TfArg.literal('allAuthenticatedUsers'),
        role: TfArg.literal(StorageBucketAccessControlRole.reader),
        dependsOn: [ResourceDependency(legacy)],
      ),
    );

    add(
      GoogleStorageDefaultObjectAccessControl(
        localName: 'legacy_default_reader',
        bucket: TfArg.ref(legacy.nameRef),
        entity: TfArg.literal('allAuthenticatedUsers'),
        role: TfArg.literal(StorageDefaultObjectAccessControlRole.reader),
        dependsOn: [ResourceDependency(legacy)],
      ),
    );

    add(
      GoogleStorageObjectAccessControl(
        localName: 'legacy_object_reader',
        bucket: TfArg.ref(legacy.nameRef),
        object: TfArg.literal('readme.txt'),
        entity: TfArg.literal('allAuthenticatedUsers'),
        role: TfArg.literal(StorageObjectAccessControlRole.reader),
        dependsOn: [
          ResourceDependency(legacy),
          ResourceDependency(legacyObject),
        ],
      ),
    );

    // ---- Backfill: GCS -> Pub/Sub object notifications ----------------------

    final objectEventsTopic = add(
      GooglePubsubTopic(
        localName: 'object_events',
        name: TfArg.literal('gcs-object-events'),
      ),
    );

    add(
      GoogleStorageNotification(
        localName: 'assets_object_events',
        bucket: TfArg.ref(assets.nameRef),
        topic: TfArg.ref(objectEventsTopic.id),
        payloadFormat:
            TfArg.literal(StorageNotificationPayloadFormat.jsonApiV1),
        eventTypes: const [
          StorageNotificationEventType.objectFinalize,
          StorageNotificationEventType.objectDelete,
        ],
        objectNamePrefix: TfArg.literal('config/'),
        dependsOn: [ResourceDependency(objectEventsTopic)],
      ),
    );
  }
}
