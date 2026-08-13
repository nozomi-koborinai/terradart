/// Storage Transfer + inventory reports + authoritative ACL quickstart.
///
/// Enables Storage, Storage Insights, and Storage Transfer APIs (via the
/// `storage` barrel). The transfer job is `DISABLED` so no bytes move.
/// Inventory reports start in 2099 so no CSV objects are written. Dataset
/// configs are omitted — they are a Storage Intelligence exclusive.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/data.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/storage.dart';
import 'package:terradart_google/time.dart';

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
        name: TfArg.literal('terradart-xfer-src-$projectId'),
        location: TfArg.literal('ASIA-NORTHEAST1'),
        storageClass: TfArg.literal(BucketStorageClass.standard),
        forceDestroy: TfArg.literal(true),
        uniformBucketLevelAccess: TfArg.literal(true),
        dependsOn: apiDeps,
      ),
    );

    final dst = add(
      GoogleStorageBucket(
        localName: 'xfer_dst',
        name: TfArg.literal('terradart-xfer-dst-$projectId'),
        location: TfArg.literal('ASIA-NORTHEAST1'),
        storageClass: TfArg.literal(BucketStorageClass.standard),
        forceDestroy: TfArg.literal(true),
        uniformBucketLevelAccess: TfArg.literal(true),
        dependsOn: apiDeps,
      ),
    );

    final stsSrcAdmin = add(
      GoogleStorageBucketIamMember(
        localName: 'sts_src_admin',
        bucket: TfArg.ref(src.nameRef),
        role: TfArg.literal('roles/storage.objectAdmin'),
        member: TfArg.literal(stsMember),
        dependsOn: [...apiDeps, ResourceDependency(src)],
      ),
    );

    final stsDstAdmin = add(
      GoogleStorageBucketIamMember(
        localName: 'sts_dst_admin',
        bucket: TfArg.ref(dst.nameRef),
        role: TfArg.literal('roles/storage.objectAdmin'),
        member: TfArg.literal(stsMember),
        dependsOn: [...apiDeps, ResourceDependency(dst)],
      ),
    );

    final stsPubsub = add(
      GoogleProjectIamMember(
        localName: 'sts_pubsub_editor',
        project: TfArg.literal(projectId),
        role: TfArg.literal('roles/pubsub.editor'),
        member: TfArg.literal(stsMember),
        dependsOn: apiDeps,
      ),
    );

    final insightsAdmin = add(
      GoogleStorageBucketIamMember(
        localName: 'insights_src_admin',
        bucket: TfArg.ref(src.nameRef),
        role: TfArg.literal('roles/storage.admin'),
        member: TfArg.literal(insightsMember),
        dependsOn: [...apiDeps, ResourceDependency(src)],
      ),
    );

    add(
      GoogleStorageTransferAgentPool(
        localName: 'pool',
        name: TfArg.literal('terradart-sts-pool'),
        displayName: TfArg.literal('TerraDart smoke agent pool'),
        bandwidthLimit: StorageTransferAgentPoolBandwidthLimit(
          limitMbps: TfArg.literal('120'),
        ),
        dependsOn: [...apiDeps, ResourceDependency(stsPubsub)],
      ),
    );

    add(
      GoogleStorageTransferJob(
        localName: 'copy',
        description: TfArg.literal('terradart disabled gcs copy'),
        status: TfArg.literal('DISABLED'),
        transferSpec: StorageTransferJobTransferSpec(
          gcsDataSource: StorageTransferJobTransferSpecGcsDataSource(
            bucketName: TfArg.ref(src.nameRef),
          ),
          gcsDataSink: StorageTransferJobTransferSpecGcsDataSink(
            bucketName: TfArg.ref(dst.nameRef),
          ),
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
        location: TfArg.literal('asia-northeast1'),
        displayName: TfArg.literal('terradart-inventory'),
        forceDestroy: TfArg.literal(true),
        format: StorageInsightsReportConfigCsvFormat(
          delimiter: TfArg.literal(','),
          headerRequired: TfArg.literal(true),
        ),
        frequencyOptions: StorageInsightsReportConfigFrequencyOptions(
          frequency: TfArg.literal(
            StorageInsightsReportConfigFrequencyOptionsFrequency.weekly,
          ),
          startDate: StorageInsightsReportConfigFrequencyOptionsStartDate(
            year: TfArg.literal(2099),
            month: TfArg.literal(1),
            day: TfArg.literal(1),
          ),
          endDate: StorageInsightsReportConfigFrequencyOptionsEndDate(
            year: TfArg.literal(2099),
            month: TfArg.literal(12),
            day: TfArg.literal(31),
          ),
        ),
        objectMetadataReportOptions:
            StorageInsightsReportConfigObjectMetadataReportOptions(
          metadataFields: TfArg.literal(['name', 'size']),
          storageDestinationOptions:
              StorageInsightsReportConfigObjectMetadataReportOptionsStorageDestinationOptions(
            bucket: TfArg.ref(src.nameRef),
            destinationPath: TfArg.literal('insights-reports/'),
          ),
          storageFilters:
              StorageInsightsReportConfigObjectMetadataReportOptionsStorageFilters(
            bucket: TfArg.ref(src.nameRef),
          ),
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
        name: TfArg.literal('terradart-xfer-acl-$projectId'),
        location: TfArg.literal('ASIA-NORTHEAST1'),
        storageClass: TfArg.literal(BucketStorageClass.standard),
        forceDestroy: TfArg.literal(true),
        uniformBucketLevelAccess: TfArg.literal(false),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleStorageBucketAcl(
        localName: 'legacy_bucket_acl',
        bucket: TfArg.ref(aclBucket.nameRef),
        predefinedAcl: TfArg.literal('private'),
        dependsOn: [...apiDeps, ResourceDependency(aclBucket)],
      ),
    );

    final defaultAclBucket = add(
      GoogleStorageBucket(
        localName: 'legacy_default_acl_bucket',
        name: TfArg.literal('terradart-xfer-dacl-$projectId'),
        location: TfArg.literal('ASIA-NORTHEAST1'),
        storageClass: TfArg.literal(BucketStorageClass.standard),
        forceDestroy: TfArg.literal(true),
        uniformBucketLevelAccess: TfArg.literal(false),
        dependsOn: apiDeps,
      ),
    );

    add(
      GoogleStorageDefaultObjectAcl(
        localName: 'legacy_default_acl',
        bucket: TfArg.ref(defaultAclBucket.nameRef),
        roleEntity: TfArg.literal([
          'OWNER:project-owners-${current.number.interpolation}',
        ]),
        dependsOn: [...apiDeps, ResourceDependency(defaultAclBucket)],
      ),
    );
  }
}
