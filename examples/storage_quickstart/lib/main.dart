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
///
/// A second `GoogleProvider` registered with `alias: 'eu'` and a bucket that
/// selects it with `provider: 'google.eu'` show the provider-alias pattern
/// (`provider "google" { alias = "eu" }` + `provider = google.eu` in HCL).
///
/// `addModule(ModuleCall(source: '../modules/object_prefix', ...))` calls the
/// local Terraform module beside `tf-out/` and reads its `prefix` output back
/// as a `TfRef` -- the `module "object_prefix" { ... }` block in HCL.
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
          // `provider "google" { alias = "eu" ... }`: a second configuration
          // of the same provider. Resources use the default one unless they
          // opt in with `provider: 'google.eu'`.
          GoogleProvider(
            alias: 'eu',
            project: projectId,
            region: 'europe-west1',
          ),
        ],
      ) {
    final assets = GoogleStorageBucket(
      'assets',
      name: .literal('my-app-assets-prod'),
      location: .literal('ASIA-NORTHEAST1'),
      storageClass: .standard,
      forceDestroy: .literal(false),
      uniformBucketLevelAccess: .literal(true),
      hierarchicalNamespace: StorageBucketHierarchicalNamespace(
        enabled: .literal(true),
      ),
      versioning: StorageBucketVersioning(enabled: .literal(true)),
      // `timeouts { ... }` in HCL: how long Terraform waits per operation.
      // Provider-neutral, like `lifecycle` — the provider decides which
      // operations its schema declares, and `terraform validate` says so
      // (google_storage_bucket has create / read / update, but no delete).
      timeouts: const TfTimeouts(create: '10m', read: '5m', update: '10m'),
      lifecycleRule: [
        StorageBucketLifecycleRule(
          action: .new(type: .setStorageClass, storageClass: .archive),
          condition: .new(age: .literal(365)),
        ),
      ],
    );
    add(assets);

    // ---- Provider alias: the same bucket layout in another region --------
    //
    // `provider = google.eu` in HCL. Only this bucket selects the aliased
    // configuration; everything else in the Stack keeps the default one.
    add(
      GoogleStorageBucket(
        'assets_eu',
        name: .literal('my-app-assets-prod-eu'),
        location: .literal('EUROPE-WEST1'),
        storageClass: .standard,
        forceDestroy: .literal(false),
        uniformBucketLevelAccess: .literal(true),
        provider: 'google.eu',
      ),
    );
    // The EU bucket was declared as `assets_europe` in an earlier revision.
    // `moved { from = ... to = ... }` keeps its state across the rename, so
    // `terraform plan` shows a move instead of a destroy-and-create.
    addMoved(
      'google_storage_bucket.assets_europe',
      'google_storage_bucket.assets_eu',
    );

    add(
      GoogleStorageBucketObject(
        'config',
        bucket: assets.ref,
        name: .literal('config/app.json'),
        body: .source(source: .literal('./config/app.json')),
        contentType: .literal('application/json'),
        storageClass: .standard,
      ),
    );

    // ---- IAM: read-only consumer on the assets bucket ---------------------
    //
    // Wave 5 Batch 3. A workload SA that only needs to fetch objects from
    // the bucket -- e.g. a CDN edge cache warmer or a downstream service
    // pulling config -- gets `objectViewer` and nothing else.

    final reader = GoogleServiceAccount(
      'assets_reader',
      accountId: .literal('assets-reader'),
      displayName: .literal('Assets bucket read-only consumer'),
    );
    add(reader);

    add(
      GoogleStorageBucketIamMember(
        'assets_reader_binding',
        bucket: assets.ref,
        role: .literal('roles/storage.objectViewer'),
        member: reader.principal,
      ),
    );

    // Authoritative binding for bucket admins — replaces the full member list
    // for `roles/storage.objectAdmin` on this bucket (contrast with the
    // additive `*_iam_member` above).
    final assetsAdmin = GoogleServiceAccount(
      'assets_admin',
      accountId: .literal('assets-admin'),
      displayName: .literal('Assets bucket object admin'),
    );
    add(assetsAdmin);

    add(
      GoogleStorageBucketIamBinding(
        'assets_admin_binding',
        bucket: assets.ref,
        role: .literal('roles/storage.objectAdmin'),
        members: .literal([assetsAdmin.principal]),
        dependsOn: [assetsAdmin],
      ),
    );

    add(
      GoogleStorageHmacKey(
        'interop_hmac',
        serviceAccountEmail: reader.ref,
        dependsOn: [reader],
      ),
    );

    // ---- Managed SFTP: the reader SA gets a read-only view of the bucket ----
    final sftp = add(
      GoogleStorageFtpServer(
        'assets_sftp',
        serverId: .literal('assets-sftp'),
        location: .literal('asia-northeast1'),
        accessType: .external,
        config: .externalConfig(
          .new(allowedCidrBlocks: .literal(['203.0.113.0/24'])),
        ),
      ),
    );

    add(
      GoogleStorageFtpUser(
        'assets_sftp_reader',
        serverId: .literal('assets-sftp'),
        userId: .literal('assets-reader'),
        location: .literal('asia-northeast1'),
        customerServiceAccount: reader.ref,
        storageDirectoryMappings: [
          StorageFtpUserStorageDirectoryMappings(
            bucket: assets.ref,
            directory: .literal('/assets'),
            permission: .readOnly,
          ),
        ],
        dependsOn: [sftp],
      ),
    );

    final managedFolder = add(
      GoogleStorageManagedFolder(
        'config_folder',
        bucket: assets.ref,
        name: .literal('config/'),
      ),
    );

    // Hierarchical Folders API (sibling of managed folders) under reports/.
    add(
      GoogleStorageFolder(
        'reports_folder',
        bucket: assets.ref,
        name: .literal('reports/'),
        forceDestroy: .literal(true),
      ),
    );

    add(
      GoogleStorageManagedFolderIamMember(
        'config_folder_viewer',
        managedFolder: managedFolder.ref,
        role: .literal('roles/storage.objectViewer'),
        member: reader.principal,
        dependsOn: [managedFolder, reader],
      ),
    );

    // Batch-stamp custom metadata on the config/ prefix (job is destroyable).
    add(
      GoogleStorageBatchOperationsJob(
        'stamp_config_meta',
        jobId: .literal('stamp-config-meta'),
        deleteProtection: .literal(false),
        bucketList: StorageBatchOperationsJobBucketList(
          buckets: .new(
            bucket: assets.ref,
            objects: .prefixList(
              .new(includedObjectPrefixes: .literal(['config/'])),
            ),
          ),
        ),
        operation: .putMetadata(
          .new(customMetadata: .literal({'managed-by': 'terradart'})),
        ),
        dependsOn: [assets],
      ),
    );

    // ---- Fine-grained ACL surface (UBLA off; cannot share the HNS bucket) --

    final legacy = add(
      GoogleStorageBucket(
        'legacy_acl',
        name: .literal('my-app-legacy-acl'),
        location: .literal('ASIA-NORTHEAST1'),
        storageClass: .standard,
        forceDestroy: .literal(true),
        uniformBucketLevelAccess: .literal(false),
      ),
    );

    final legacyObject = add(
      GoogleStorageBucketObject(
        'legacy_readme',
        bucket: legacy.ref,
        name: .literal('readme.txt'),
        body: .source(source: .literal('./legacy/readme.txt')),
        contentType: .literal('text/plain'),
        storageClass: .standard,
        dependsOn: [legacy],
      ),
    );

    add(
      GoogleStorageBucketAccessControl(
        'legacy_bucket_reader',
        bucket: legacy.ref,
        entity: .literal('allAuthenticatedUsers'),
        role: .reader,
        dependsOn: [legacy],
      ),
    );

    add(
      GoogleStorageDefaultObjectAccessControl(
        'legacy_default_reader',
        bucket: legacy.ref,
        entity: .literal('allAuthenticatedUsers'),
        role: .reader,
        dependsOn: [legacy],
      ),
    );

    add(
      GoogleStorageObjectAccessControl(
        'legacy_object_reader',
        bucket: legacy.ref,
        object: .literal('readme.txt'),
        entity: .literal('allAuthenticatedUsers'),
        role: .reader,
        dependsOn: [legacy, legacyObject],
      ),
    );

    // ---- Backfill: GCS -> Pub/Sub object notifications ----------------------

    // `module "object_prefix" { source = "../modules/object_prefix" }`: a local
    // Terraform module the Stack calls instead of inlining. Its `prefix` output
    // is a `TfRef`, so the notification below reads it like any attribute.
    final objectPrefix = addModule(
      ModuleCall(
        'object_prefix',
        source: '../modules/object_prefix',
        inputs: {'folder': .literal('config')},
      ),
    );

    final objectEventsTopic = add(
      GooglePubsubTopic('object_events', name: .literal('gcs-object-events')),
    );

    add(
      GoogleStorageNotification(
        'assets_object_events',
        bucket: assets.ref,
        topic: objectEventsTopic.ref,
        payloadFormat: .jsonApiV1,
        eventTypes: const [
          StorageNotificationEventType.objectFinalize,
          StorageNotificationEventType.objectDelete,
        ],
        objectNamePrefix: objectPrefix.output<String>('prefix'),
        dependsOn: [objectEventsTopic],
      ),
    );
  }
}
