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
library;

import 'dart:convert' as dart_convert;
import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/terradart_google.dart';

class AssetsStack extends Stack {
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
      versioning: const Versioning(enabled: true),
      lifecycleRule: const [
        LifecycleRule(
          action: LifecycleAction(
            type: LifecycleActionType.setStorageClass,
            storageClass: BucketStorageClass.archive,
          ),
          condition: LifecycleCondition(age: 365),
        ),
      ],
    );
    add(assets);

    add(
      GoogleStorageBucketObject(
        localName: 'config',
        bucket: TfArg.ref(assets.nameRef),
        name: TfArg.literal('config/app.json'),
        body: BucketObjectFromContent(
          content: TfArg.literal('{"feature_flags":{"new_ui":true}}'),
        ),
        contentType: TfArg.literal('application/json'),
        storageClass: TfArg.literal(BucketObjectStorageClass.standard),
      ),
    );
  }

  @override
  Future<void> synth({required String outDir}) async {
    final result = StackSynth.synth(this);
    await Directory(outDir).create(recursive: true);
    final tfFile = File('$outDir/main.tf.json');
    await tfFile.writeAsString(
      const dart_convert.JsonEncoder.withIndent('  ').convert(result.tfJson),
    );
  }
}
