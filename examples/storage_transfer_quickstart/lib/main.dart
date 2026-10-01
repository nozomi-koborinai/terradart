/// Storage Transfer + inventory reports + authoritative ACL quickstart.
///
/// Enables Storage, Storage Insights, and Storage Transfer APIs (via the
/// `storage` barrel). The transfer job is `DISABLED` so no bytes move.
/// Inventory reports start in 2099 so no CSV objects are written. Dataset
/// configs are omitted — they are a Storage Intelligence exclusive.
/// Authoritative object ACL is exercised on a tiny object uploaded from
/// `../acl-marker.txt` (relative to `tf-out/`, same pattern as
/// `colab_quickstart`) on its own UBLA-off bucket.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/data.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/storage.dart';
import 'package:terradart_time/terradart_time.dart';

/// Transfer / inventory / ACL stack.
final class StorageTransferStack extends Stack {
  StorageTransferStack({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'asia-northeast1'),
          const TimeProvider(),
        ],
      ) {
    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.storage],
      propagationDelay: const Duration(seconds: 60),
    );

    final current = addData(GoogleProject(localName: 'current'));
    final stsMember =
        'serviceAccount:project-${current.number.interpolation}@storage-transfer-service.iam.gserviceaccount.com';
    final insightsMember =
        'serviceAccount:service-${current.number.interpolation}@gcp-sa-storageinsights.iam.gserviceaccount.com';

    final src = add(
      GoogleStorageBucket(
        localName: 'xfer_src',
        name: .literal('terradart-xfer-src-$projectId'),
        location: .literal('ASIA-NORTHEAST1'),
        storageClass: .literal(.standard),
        forceDestroy: .literal(true),
        uniformBucketLevelAccess: .literal(true),
        dependsOn: apiDeps,
      ),
    );

    final dst = add(
      GoogleStorageBucket(
        localName: 'xfer_dst',
        name: .literal('terradart-xfer-dst-$projectId'),
        location: .literal('ASIA-NORTHEAST1'),
        storageClass: .literal(.standard),
        forceDestroy: .literal(true),
        uniformBucketLevelAccess: .literal(true),
        dependsOn: apiDeps,
      ),
    );

    final stsSrcAdmin = add(
      GoogleStorageBucketIamMember(
        localName: 'sts_src_admin',
        bucket: src.ref,
        role: .literal('roles/storage.objectAdmin'),
        member: .literal(stsMember),
        dependsOn: [...apiDeps, ResourceDependency(src)],
      ),
    );

    final stsDstAdmin = add(
      GoogleStorageBucketIamMember(
        localName: 'sts_dst_admin',
        bucket: dst.ref,
        role: .literal('roles/storage.objectAdmin'),
        member: .literal(stsMember),
        dependsOn: [...apiDeps, ResourceDependency(dst)],
      ),
    );

    final stsPubsub = add(
      GoogleProjectIamMember(
        localName: 'sts_pubsub_editor',
        project: .literal(projectId),
        role: .literal('roles/pubsub.editor'),
        member: .literal(stsMember),
        dependsOn: apiDeps,
      ),
    );

    final insightsAdmin = add(
      GoogleStorageBucketIamMember(
        localName: 'insights_src_admin',
        bucket: src.ref,
        role: .literal('roles/storage.admin'),
        member: .literal(insightsMember),
        dependsOn: [...apiDeps, ResourceDependency(src)],
      ),
    );

    add(
      GoogleStorageTransferAgentPool(
        localName: 'pool',
        name: .literal('terradart-sts-pool'),
        displayName: .literal('TerraDart smoke agent pool'),
        bandwidthLimit: StorageTransferAgentPoolBandwidthLimit(
          limitMbps: .literal('120'),
        ),
        dependsOn: [...apiDeps, ResourceDependency(stsPubsub)],
      ),
    );

    add(
      GoogleStorageTransferJob(
        localName: 'copy',
        description: .literal('terradart disabled gcs copy'),
        status: .literal('DISABLED'),
        transferSpec: StorageTransferJobTransferSpec(
          gcsDataSource: .new(bucketName: src.ref),
          gcsDataSink: .new(bucketName: dst.ref),
        ),
        dependsOn: [
          ...apiDeps,
          ResourceDependency(src),
          ResourceDependency(dst),
          ResourceDependency(stsSrcAdmin),
          ResourceDependency(stsDstAdmin),
        ],
      ),
    );

    add(
      GoogleStorageInsightsReportConfig(
        localName: 'inventory',
        location: .literal('asia-northeast1'),
        displayName: .literal('terradart-inventory'),
        forceDestroy: .literal(true),
        format: .csv(delimiter: .literal(','), headerRequired: .literal(true)),
        frequencyOptions: StorageInsightsReportConfigFrequencyOptions(
          frequency: .literal(.weekly),
          startDate: .new(
            year: .literal(2099),
            month: .literal(1),
            day: .literal(1),
          ),
          endDate: .new(
            year: .literal(2099),
            month: .literal(12),
            day: .literal(31),
          ),
        ),
        objectMetadataReportOptions:
            StorageInsightsReportConfigObjectMetadataReportOptions(
              metadataFields: .literal(['name', 'size']),
              storageDestinationOptions: .new(
                bucket: src.ref,
                destinationPath: .literal('insights-reports/'),
              ),
              storageFilters: .new(bucket: src.ref),
            ),
        dependsOn: [
          ...apiDeps,
          ResourceDependency(src),
          ResourceDependency(insightsAdmin),
        ],
      ),
    );

    // Authoritative `*_acl` resources conflict with each other (and with
    // `*_access_control`) on the same bucket, so each gets its own UBLA-off
    // bucket.
    final aclBucket = add(
      GoogleStorageBucket(
        localName: 'legacy_acl',
        name: .literal('terradart-xfer-acl-$projectId'),
        location: .literal('ASIA-NORTHEAST1'),
        storageClass: .literal(.standard),
        forceDestroy: .literal(true),
        uniformBucketLevelAccess: .literal(false),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleStorageBucketAcl(
        localName: 'legacy_bucket_acl',
        bucket: aclBucket.ref,
        predefinedAcl: .literal('private'),
        dependsOn: [...apiDeps, ResourceDependency(aclBucket)],
      ),
    );

    final defaultAclBucket = add(
      GoogleStorageBucket(
        localName: 'legacy_default_acl_bucket',
        name: .literal('terradart-xfer-dacl-$projectId'),
        location: .literal('ASIA-NORTHEAST1'),
        storageClass: .literal(.standard),
        forceDestroy: .literal(true),
        uniformBucketLevelAccess: .literal(false),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleStorageDefaultObjectAcl(
        localName: 'legacy_default_acl',
        bucket: defaultAclBucket.ref,
        roleEntity: .literal([
          'OWNER:project-owners-${current.number.interpolation}',
        ]),
        dependsOn: [...apiDeps, ResourceDependency(defaultAclBucket)],
      ),
    );

    final objectAclBucket = add(
      GoogleStorageBucket(
        localName: 'legacy_object_acl_bucket',
        name: .literal('terradart-xfer-oacl-$projectId'),
        location: .literal('ASIA-NORTHEAST1'),
        storageClass: .literal(.standard),
        forceDestroy: .literal(true),
        uniformBucketLevelAccess: .literal(false),
        dependsOn: apiDeps,
      ),
    );

    final marker = add(
      GoogleStorageBucketObject(
        localName: 'acl_marker',
        bucket: objectAclBucket.ref,
        name: .literal('acl-marker.txt'),
        body: .source(source: .literal('../acl-marker.txt')),
        contentType: .literal('text/plain'),
        dependsOn: [...apiDeps, ResourceDependency(objectAclBucket)],
      ),
    );

    add(
      GoogleStorageObjectAcl(
        localName: 'legacy_object_acl',
        bucket: objectAclBucket.ref,
        object: .ref(marker.nameRef),
        predefinedAcl: .literal('private'),
        dependsOn: [...apiDeps, ResourceDependency(marker)],
      ),
    );
  }
}
